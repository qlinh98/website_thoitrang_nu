class ThuonghieusController < ApplicationController
  before_action :set_thuonghieu, only: [:show, :edit, :update, :destroy]

  # GET /thuonghieus
  # GET /thuonghieus.json
  def index
    @thuonghieus = Thuonghieu.all
  end

  # GET /thuonghieus/1
  # GET /thuonghieus/1.json
  def show
  end

  # GET /thuonghieus/new
  def new
    @thuonghieu = Thuonghieu.new
  end

  # GET /thuonghieus/1/edit
  def edit
  end

  # POST /thuonghieus
  # POST /thuonghieus.json
  def create
    @thuonghieu = Thuonghieu.new(thuonghieu_params)

    respond_to do |format|
      if @thuonghieu.save
        format.html { redirect_to @thuonghieu, notice: 'Thuonghieu was successfully created.' }
        format.json { render :show, status: :created, location: @thuonghieu }
      else
        format.html { render :new }
        format.json { render json: @thuonghieu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thuonghieus/1
  # PATCH/PUT /thuonghieus/1.json
  def update
    respond_to do |format|
      if @thuonghieu.update(thuonghieu_params)
        format.html { redirect_to @thuonghieu, notice: 'Thuonghieu was successfully updated.' }
        format.json { render :show, status: :ok, location: @thuonghieu }
      else
        format.html { render :edit }
        format.json { render json: @thuonghieu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thuonghieus/1
  # DELETE /thuonghieus/1.json
  def destroy
    @thuonghieu.destroy
    respond_to do |format|
      format.html { redirect_to thuonghieus_url, notice: 'Thuonghieu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thuonghieu
      @thuonghieu = Thuonghieu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thuonghieu_params
      params.require(:thuonghieu).permit(:tenthuonghieu, :hinhanh, :diachi, :email)
    end
end
