class PromotioncodesController < ApplicationController
  before_action :set_promotioncode, only: %i[ show edit update destroy ]

  # GET /promotioncodes or /promotioncodes.json
  def index
    @promotioncodes = Promotioncode.all
  end

  # GET /promotioncodes/1 or /promotioncodes/1.json
  def show
  end

  # GET /promotioncodes/new
  def new
    @promotioncode = Promotioncode.new
  end

  # GET /promotioncodes/1/edit
  def edit
  end

  # POST /promotioncodes or /promotioncodes.json
  def create
    @promotioncode = Promotioncode.new(promotioncode_params)

    respond_to do |format|
      if @promotioncode.save
        format.html { redirect_to promotioncode_url(@promotioncode), notice: "Promotioncode was successfully created." }
        format.json { render :show, status: :created, location: @promotioncode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promotioncode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotioncodes/1 or /promotioncodes/1.json
  def update
    respond_to do |format|
      if @promotioncode.update(promotioncode_params)
        format.html { redirect_to promotioncode_url(@promotioncode), notice: "Promotioncode was successfully updated." }
        format.json { render :show, status: :ok, location: @promotioncode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promotioncode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotioncodes/1 or /promotioncodes/1.json
  def destroy
    @promotioncode.destroy!

    respond_to do |format|
      format.html { redirect_to promotioncodes_url, notice: "Promotioncode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotioncode
      @promotioncode = Promotioncode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promotioncode_params
      params.require(:promotioncode).permit(:name, :promo_code, :discount_percentage)
    end
end
