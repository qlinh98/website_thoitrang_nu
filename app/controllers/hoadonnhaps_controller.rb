class HoadonnhapsController < ApplicationController
  before_action :set_hoadonnhap, only: [:show, :edit, :update, :destroy]

  # GET /hoadonnhaps
  # GET /hoadonnhaps.json
  def index
    @hoadonnhaps = Hoadonnhap.all
  end

  # GET /hoadonnhaps/1
  # GET /hoadonnhaps/1.json
  def show
  end

  # GET /hoadonnhaps/new
  def new
    @hoadonnhap = Hoadonnhap.new
  end

  # GET /hoadonnhaps/1/edit
  def edit
  end

  # POST /hoadonnhaps
  # POST /hoadonnhaps.json
  def create
    @hoadonnhap = Hoadonnhap.new(hoadonnhap_params)

    respond_to do |format|
      if @hoadonnhap.save
        format.html { redirect_to @hoadonnhap, notice: 'Hoadonnhap was successfully created.' }
        format.json { render :show, status: :created, location: @hoadonnhap }
      else
        format.html { render :new }
        format.json { render json: @hoadonnhap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoadonnhaps/1
  # PATCH/PUT /hoadonnhaps/1.json
  def update
    respond_to do |format|
      if @hoadonnhap.update(hoadonnhap_params)
        format.html { redirect_to @hoadonnhap, notice: 'Hoadonnhap was successfully updated.' }
        format.json { render :show, status: :ok, location: @hoadonnhap }
      else
        format.html { render :edit }
        format.json { render json: @hoadonnhap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoadonnhaps/1
  # DELETE /hoadonnhaps/1.json
  def destroy
    @hoadonnhap.destroy
    respond_to do |format|
      format.html { redirect_to hoadonnhaps_url, notice: 'Hoadonnhap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoadonnhap
      @hoadonnhap = Hoadonnhap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hoadonnhap_params
      params.require(:hoadonnhap).permit(:ngaynhap, :tongtien, :nhacungcap_id)
    end
end
