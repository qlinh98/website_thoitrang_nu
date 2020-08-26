class DanhmucsController < ApplicationController
  before_action :set_danhmuc, only: [:show, :edit, :update, :destroy]

  # GET /danhmucs
  # GET /danhmucs.json
  def index
    @danhmucs = Danhmuc.all
  end

  # GET /danhmucs/1
  # GET /danhmucs/1.json
  def show
  end

  # GET /danhmucs/new
  def new
    @danhmuc = Danhmuc.new
  end

  # GET /danhmucs/1/edit
  def edit
  end

  # POST /danhmucs
  # POST /danhmucs.json
  def create
    @danhmuc = Danhmuc.new(danhmuc_params)

    respond_to do |format|
      if @danhmuc.save
        format.html { redirect_to @danhmuc, notice: 'Danhmuc was successfully created.' }
        format.json { render :show, status: :created, location: @danhmuc }
      else
        format.html { render :new }
        format.json { render json: @danhmuc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danhmucs/1
  # PATCH/PUT /danhmucs/1.json
  def update
    respond_to do |format|
      if @danhmuc.update(danhmuc_params)
        format.html { redirect_to @danhmuc, notice: 'Danhmuc was successfully updated.' }
        format.json { render :show, status: :ok, location: @danhmuc }
      else
        format.html { render :edit }
        format.json { render json: @danhmuc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danhmucs/1
  # DELETE /danhmucs/1.json
  def destroy
    @danhmuc.destroy
    respond_to do |format|
      format.html { redirect_to danhmucs_url, notice: 'Danhmuc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danhmuc
      @danhmuc = Danhmuc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danhmuc_params
      params.require(:danhmuc).permit(:tendanhmuc)
    end
end
