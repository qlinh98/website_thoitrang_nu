class ChitietDathangsController < ApplicationController
  include CurrentCart

  before_action :authenticate_user!, :set_cart, only: [:create]
  before_action :set_chitiet_dathang, only: [:show, :edit, :update, :destroy]
  # GET /chitiet_dathangs
  # GET /chitiet_dathangs.json
  def index
    @chitiet_dathangs = ChitietDathang.all
  end

  # GET /chitiet_dathangs/1
  # GET /chitiet_dathangs/1.json
  def show
  end

  # GET /chitiet_dathangs/new
  def new
    @chitiet_dathang = ChitietDathang.new
  end

  # GET /chitiet_dathangs/1/edit
  def edit
  end

  # POST /chitiet_dathangs
  # POST /chitiet_dathangs.json
  def create
    # @chitiet_dathang = ChitietDathang.new(chitiet_dathang_params)
    sanpham = Chitietsanpham.find(params[:chitietsanpham_id])
    # binding.pry
    @chitiet_dathang = @cart.add_product(sanpham, params[:sl].to_i, params[:mau_data], params[:size_data])
    respond_to do |format|
      if @chitiet_dathang.save
        # format.html { redirect_to :root }
        format.html { redirect_back(fallback_location: root_path) }
        # format.html { redirect_to @chitiet_dathang, notice: "Chitiet dathang was successfully created." }
        format.json { render :show, status: :created, location: @chitiet_dathang }
      else
        format.html { render :new }
        format.json { render json: @chitiet_dathang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chitiet_dathangs/1
  # PATCH/PUT /chitiet_dathangs/1.json
  def update
    respond_to do |format|
      if @chitiet_dathang.update(chitiet_dathang_params)
        format.html { redirect_to @chitiet_dathang, notice: "Chitiet dathang was successfully updated." }
        format.json { render :show, status: :ok, location: @chitiet_dathang }
      else
        format.html { render :edit }
        format.json { render json: @chitiet_dathang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chitiet_dathangs/1
  # DELETE /chitiet_dathangs/1.json
  def destroy
    @chitiet_dathang.destroy
    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) }
      # format.html { redirect_to chitiet_dathangs_url, notice: "Chitiet dathang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  ###

  ###
  private

  # Use callbacks to share common setup or constraints between actions.
  def set_chitiet_dathang
    @chitiet_dathang = ChitietDathang.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  # def chitiet_dathang_params
  # params.require(:chitiet_dathang).permit(:soluong, :dongia, :thanhtien, :chitietsanpham_id, :dondathang_id, :cart_id)
  # end

  def chitiet_dathang_params
    params.require(:chitiet_dathang).permit(:chitietsanpham_id)
  end
end
