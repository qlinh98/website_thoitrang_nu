class ChitiethoadonnhapsController < ApplicationController
  before_action :set_chitiethoadonnhap, only: [:show, :edit, :update, :destroy]

  # GET /chitiethoadonnhaps
  # GET /chitiethoadonnhaps.json
  def index
    @chitiethoadonnhaps = Chitiethoadonnhap.all
  end

  # GET /chitiethoadonnhaps/1
  # GET /chitiethoadonnhaps/1.json
  def show
  end

  # GET /chitiethoadonnhaps/new
  def new
    @chitiethoadonnhap = Chitiethoadonnhap.new
  end

  # GET /chitiethoadonnhaps/1/edit
  def edit
  end

  # POST /chitiethoadonnhaps
  # POST /chitiethoadonnhaps.json
  def create
    @chitiethoadonnhap = Chitiethoadonnhap.new(chitiethoadonnhap_params)

    respond_to do |format|
      if @chitiethoadonnhap.save
        format.html { redirect_to @chitiethoadonnhap, notice: 'Chitiethoadonnhap was successfully created.' }
        format.json { render :show, status: :created, location: @chitiethoadonnhap }
      else
        format.html { render :new }
        format.json { render json: @chitiethoadonnhap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chitiethoadonnhaps/1
  # PATCH/PUT /chitiethoadonnhaps/1.json
  def update
    respond_to do |format|
      if @chitiethoadonnhap.update(chitiethoadonnhap_params)
        format.html { redirect_to @chitiethoadonnhap, notice: 'Chitiethoadonnhap was successfully updated.' }
        format.json { render :show, status: :ok, location: @chitiethoadonnhap }
      else
        format.html { render :edit }
        format.json { render json: @chitiethoadonnhap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chitiethoadonnhaps/1
  # DELETE /chitiethoadonnhaps/1.json
  def destroy
    @chitiethoadonnhap.destroy
    respond_to do |format|
      format.html { redirect_to chitiethoadonnhaps_url, notice: 'Chitiethoadonnhap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chitiethoadonnhap
      @chitiethoadonnhap = Chitiethoadonnhap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chitiethoadonnhap_params
      params.require(:chitiethoadonnhap).permit(:soluongnhap, :dongia, :hoadonnhap_id, :chitietsanpham_id)
    end
end
