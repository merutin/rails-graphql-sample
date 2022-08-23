class MicropostDetailsController < ApplicationController
  before_action :set_micropost_detail, only: %i[ show edit update destroy ]

  # GET /micropost_details or /micropost_details.json
  def index
    @micropost_details = MicropostDetail.all
  end

  # GET /micropost_details/1 or /micropost_details/1.json
  def show
  end

  # GET /micropost_details/new
  def new
    @micropost_detail = MicropostDetail.new
  end

  # GET /micropost_details/1/edit
  def edit
  end

  # POST /micropost_details or /micropost_details.json
  def create
    @micropost_detail = MicropostDetail.new(micropost_detail_params)

    respond_to do |format|
      if @micropost_detail.save
        format.html { redirect_to micropost_detail_url(@micropost_detail), notice: "Micropost detail was successfully created." }
        format.json { render :show, status: :created, location: @micropost_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @micropost_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropost_details/1 or /micropost_details/1.json
  def update
    respond_to do |format|
      if @micropost_detail.update(micropost_detail_params)
        format.html { redirect_to micropost_detail_url(@micropost_detail), notice: "Micropost detail was successfully updated." }
        format.json { render :show, status: :ok, location: @micropost_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @micropost_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropost_details/1 or /micropost_details/1.json
  def destroy
    @micropost_detail.destroy

    respond_to do |format|
      format.html { redirect_to micropost_details_url, notice: "Micropost detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropost_detail
      @micropost_detail = MicropostDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def micropost_detail_params
      params.require(:micropost_detail).permit(:content, :micropost_id)
    end
end
