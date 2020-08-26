class DondathangsController < ApplicationController
  before_action :set_dondathang, only: [:show, :edit, :update, :destroy]

  # GET /dondathangs
  # GET /dondathangs.json
  def index
    if current_user.present?
      @dondathangs = Dondathang.where(:user_id => @current_user.id).order(created_at: :desc).page(params[:page]).per(8)
    end
  end

  # GET /dondathangs/1
  # GET /dondathangs/1.json
  def show
    getctddh
  end

  def getctddh
    @ctddh = ChitietDathang.where(dondathang_id: params[:id])
  end

  # GET /dondathangs/new
  def new
    @dondathang = Dondathang.new
  end

  # GET /dondathangs/1/edit
  def edit
  end

  # POST /dondathangs
  # POST /dondathangs.json
  def create_card
    # Amount in cents
    @amount = params[:tongtien]

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    # binding.pry

    charge = Stripe::Charge.create({
      customer: customer.id,
      # amount: (@cart.total_price).to_i,
      # amount: params[:tongtien],
      amount: params.require(:dondathang).permit(:tongtien)[:tongtien],
      description: "Rails Stripe customer",
      currency: "vnd",
    })
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  # <script src="https://checkout.stripe.com/checkout.js" class="stripe-button" data-key="<%= Rails.configuration.stripe[:publishable_key] %>" data-description="Thanh toán đơn hàng" data-amount="<%= @cart.total_price %>" data-locale="auto" data-email="<%= current_user.email %>"></script>
  # <script src="https://js.stripe.com/v3"></script>
  # <button class= "primary-btn-dh" id="checkout-button" >Pay</button>
  # <%= render "dondathangs/payment"%>

  def create
    @dondathang = Dondathang.new(dondathang_params)
    @dondathang.tinhtrang = "Đã đặt"
    @dondathang.user_id = current_user.id
    @dondathang.email = current_user.email
    @dondathang.card_token = stripe_params["stripeToken"]
    
    # binding.pry
    # Amount in cents
    # @registration = Dondathang.new dondathang_params.merge(email: stripe_params["stripeEmail"],
    #                                                            card_token: stripe_params["stripeToken"])
    # customer = Stripe::Customer.create email: tripe_params["stripeEmail"], card: stripe_params["stripeToken"]

    # Stripe::Charge.create customer: stripe_params["stripeEmail"],
    #    amount: params[:tongtien],
    #    description: '',
    #    currency: 'vnd'
    unless @dondathang.card_token.nil?
      create_card
    end
    @dondathang.add_line_items_from_cart(@cart)
    respond_to do |format|
      if @dondathang.save
        OrderMailer.received(@dondathang).deliver_later
        format.html { redirect_to @dondathang, notice: "Dondathang was successfully created." }
        format.json { render :show, status: :created, location: @dondathang }
      else
        format.html { render :new }
        format.json { render json: @dondathang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dondathangs/1
  # PATCH/PUT /dondathangs/1.json
  def update
    respond_to do |format|
      if @dondathang.update(dondathang_params)
        format.html { redirect_to @dondathang, notice: "Dondathang was successfully updated." }
        format.json { render :show, status: :ok, location: @dondathang }
      else
        format.html { render :edit }
        format.json { render json: @dondathang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dondathangs/1
  # DELETE /dondathangs/1.json
  def destroy
    @dondathang.destroy
    respond_to do |format|
      format.html { redirect_to dondathangs_url, notice: "Dondathang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dondathang
    @dondathang = Dondathang.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def dondathang_params

    # params.require(:dondathang).permit(:user_id) = @current_user.id
    # params[:tinhtrang] = "Đã nhận đơn hàng"
    params.require(:dondathang).permit(:ngaydathang, :nguoinhanhang, :phuongthuctt, :diachigiao, :sdt, :ghichu, :tinhtrang, :tongtien, :giaohang_id, :user_id, :email)
    # binding.pry
  end

  def stripe_params
    params.permit :stripeEmail, :stripeToken
  end
end

# PUBLISHABLE_KEY=pk_test_51H7j0YKqatbrR01TGS24dI8Yym8XPEGtJMM19A08TGSfEsl3jaLmilR9wkEtllILtTZtzSHnrYvFh1bpf8YIIoOF00gBgauEYd SECRET_KEY=sk_test_51H7j0YKqatbrR01TqbZmy0DjTrs9o36IdOrjOgiRpsFc9wUlipuyMoWqOjv24wo61JzIILs9qiOcsmfUXc4FI0kU00KabVCPKX rails s
