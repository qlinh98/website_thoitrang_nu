class LoaisanphamsController < ApplicationController
  before_action :set_loaisanpham, only: [:show, :edit, :update, :destroy]

  # GET /loaisanphams
  # GET /loaisanphams.json
  def index
    @loaisanphams = Loaisanpham.all
  end

  # GET /loaisanphams/1
  # GET /loaisanphams/1.json
  def show
  end

  # GET /loaisanphams/new
  def new
    @loaisanpham = Loaisanpham.new
  end

  # GET /loaisanphams/1/edit
  def edit
  end

  # POST /loaisanphams
  # POST /loaisanphams.json
  def create
    @loaisanpham = Loaisanpham.new(loaisanpham_params)

    respond_to do |format|
      if @loaisanpham.save
        format.html { redirect_to @loaisanpham, notice: 'Loaisanpham was successfully created.' }
        format.json { render :show, status: :created, location: @loaisanpham }
      else
        format.html { render :new }
        format.json { render json: @loaisanpham.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loaisanphams/1
  # PATCH/PUT /loaisanphams/1.json
  def update
    respond_to do |format|
      if @loaisanpham.update(loaisanpham_params)
        format.html { redirect_to @loaisanpham, notice: 'Loaisanpham was successfully updated.' }
        format.json { render :show, status: :ok, location: @loaisanpham }
      else
        format.html { render :edit }
        format.json { render json: @loaisanpham.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loaisanphams/1
  # DELETE /loaisanphams/1.json
  def destroy
    @loaisanpham.destroy
    respond_to do |format|
      format.html { redirect_to loaisanphams_url, notice: 'Loaisanpham was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loaisanpham
      @loaisanpham = Loaisanpham.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loaisanpham_params
      params.require(:loaisanpham).permit(:tenloai, :danhmuc_id)
    end
end
