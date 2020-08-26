class GiaohangsController < ApplicationController
  before_action :set_giaohang, only: [:show, :edit, :update, :destroy]

  # GET /giaohangs
  # GET /giaohangs.json
  def index
    @giaohangs = Giaohang.all
  end

  # GET /giaohangs/1
  # GET /giaohangs/1.json
  def show
  end

  # GET /giaohangs/new
  def new
    @giaohang = Giaohang.new
  end

  # GET /giaohangs/1/edit
  def edit
  end

  # POST /giaohangs
  # POST /giaohangs.json
  def create
    @giaohang = Giaohang.new(giaohang_params)

    respond_to do |format|
      if @giaohang.save
        format.html { redirect_to @giaohang, notice: 'Giaohang was successfully created.' }
        format.json { render :show, status: :created, location: @giaohang }
      else
        format.html { render :new }
        format.json { render json: @giaohang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giaohangs/1
  # PATCH/PUT /giaohangs/1.json
  def update
    respond_to do |format|
      if @giaohang.update(giaohang_params)
        format.html { redirect_to @giaohang, notice: 'Giaohang was successfully updated.' }
        format.json { render :show, status: :ok, location: @giaohang }
      else
        format.html { render :edit }
        format.json { render json: @giaohang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giaohangs/1
  # DELETE /giaohangs/1.json
  def destroy
    @giaohang.destroy
    respond_to do |format|
      format.html { redirect_to giaohangs_url, notice: 'Giaohang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giaohang
      @giaohang = Giaohang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def giaohang_params
      params.require(:giaohang).permit(:ngaygiao, :tinhtrang, :ghichu)
    end
end
