class NhacungcapsController < ApplicationController
  before_action :set_nhacungcap, only: [:show, :edit, :update, :destroy]

  # GET /nhacungcaps
  # GET /nhacungcaps.json
  def index
    @nhacungcaps = Nhacungcap.all
  end

  # GET /nhacungcaps/1
  # GET /nhacungcaps/1.json
  def show
  end

  # GET /nhacungcaps/new
  def new
    @nhacungcap = Nhacungcap.new
  end

  # GET /nhacungcaps/1/edit
  def edit
  end

  # POST /nhacungcaps
  # POST /nhacungcaps.json
  def create
    @nhacungcap = Nhacungcap.new(nhacungcap_params)

    respond_to do |format|
      if @nhacungcap.save
        format.html { redirect_to @nhacungcap, notice: 'Nhacungcap was successfully created.' }
        format.json { render :show, status: :created, location: @nhacungcap }
      else
        format.html { render :new }
        format.json { render json: @nhacungcap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nhacungcaps/1
  # PATCH/PUT /nhacungcaps/1.json
  def update
    respond_to do |format|
      if @nhacungcap.update(nhacungcap_params)
        format.html { redirect_to @nhacungcap, notice: 'Nhacungcap was successfully updated.' }
        format.json { render :show, status: :ok, location: @nhacungcap }
      else
        format.html { render :edit }
        format.json { render json: @nhacungcap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nhacungcaps/1
  # DELETE /nhacungcaps/1.json
  def destroy
    @nhacungcap.destroy
    respond_to do |format|
      format.html { redirect_to nhacungcaps_url, notice: 'Nhacungcap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nhacungcap
      @nhacungcap = Nhacungcap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nhacungcap_params
      params.require(:nhacungcap).permit(:tenncc, :sdt, :diachi, :email)
    end
end
