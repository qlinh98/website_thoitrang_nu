class ChitietsanphamsController < ApplicationController
  before_action :set_chitietsanpham, only: [:show, :edit, :update, :destroy]

  # GET /chitietsanphams
  # GET /chitietsanphams.json
  def index
    @chitietsanphams = Chitietsanpham.all
  end

  # GET /chitietsanphams/1
  # GET /chitietsanphams/1.json
  def show
  end

  # GET /chitietsanphams/new
  def new
    @chitietsanpham = Chitietsanpham.new
  end

  # GET /chitietsanphams/1/edit
  def edit
  end

  # POST /chitietsanphams
  # POST /chitietsanphams.json
  def create
    @chitietsanpham = Chitietsanpham.new(chitietsanpham_params)

    respond_to do |format|
      if @chitietsanpham.save
        format.html { redirect_to @chitietsanpham, notice: 'Chitietsanpham was successfully created.' }
        format.json { render :show, status: :created, location: @chitietsanpham }
      else
        format.html { render :new }
        format.json { render json: @chitietsanpham.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chitietsanphams/1
  # PATCH/PUT /chitietsanphams/1.json
  def update
    respond_to do |format|
      if @chitietsanpham.update(chitietsanpham_params)
        format.html { redirect_to @chitietsanpham, notice: 'Chitietsanpham was successfully updated.' }
        format.json { render :show, status: :ok, location: @chitietsanpham }
      else
        format.html { render :edit }
        format.json { render json: @chitietsanpham.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chitietsanphams/1
  # DELETE /chitietsanphams/1.json
  def destroy
    @chitietsanpham.destroy
    respond_to do |format|
      format.html { redirect_to chitietsanphams_url, notice: 'Chitietsanpham was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chitietsanpham
      @chitietsanpham = Chitietsanpham.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chitietsanpham_params
      params.require(:chitietsanpham).permit(:mausp, :size, :soluongton, :giaban, :hinh1, :hinh2, :hinh3, :hinh4, :sanpham_id)
    end
end
