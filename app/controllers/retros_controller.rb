class RetrosController < ApplicationController
  before_action :set_retro, only: %i[ show edit update destroy ]

  # GET /retros or /retros.json
  def index
    @retros = Retro.all
  end

  # GET /retros/1 or /retros/1.json
  def show
  end

  # GET /retros/new
  def new
    @retro = Retro.new
  end

  # GET /retros/1/edit
  def edit
  end

  # POST /retros or /retros.json
  def create
    @retro = Retro.new(retro_params)

    respond_to do |format|
      if @retro.save
        format.html { redirect_to retro_url(@retro), notice: "Retro was successfully created." }
        format.json { render :show, status: :created, location: @retro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @retro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retros/1 or /retros/1.json
  def update
    respond_to do |format|
      if @retro.update(retro_params)
        format.html { redirect_to retro_url(@retro), notice: "Retro was successfully updated." }
        format.json { render :show, status: :ok, location: @retro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @retro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retros/1 or /retros/1.json
  def destroy
    @retro.destroy

    respond_to do |format|
      format.html { redirect_to retros_url, notice: "Retro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retro
      @retro = Retro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def retro_params
      params.require(:retro).permit(:name, :context, :team)
    end
end
