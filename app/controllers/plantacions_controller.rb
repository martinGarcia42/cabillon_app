class PlantacionsController < ApplicationController
  before_action :set_plantacion, only: [:show, :edit, :update, :destroy]

  # GET /plantacions
  # GET /plantacions.json
  def index
    @plantacions = Plantacion.all
  end

  # GET /plantacions/1
  # GET /plantacions/1.json
  def show
  end

  # GET /plantacions/new
  def new
    @plantacion = Plantacion.new
  end

  # GET /plantacions/1/edit
  def edit
  end

  # POST /plantacions
  # POST /plantacions.json
  def create
    @plantacion = Plantacion.new(plantacion_params)

    respond_to do |format|
      if @plantacion.save
        format.html { redirect_to @plantacion, notice: 'Plantacion was successfully created.' }
        format.json { render :show, status: :created, location: @plantacion }
      else
        format.html { render :new }
        format.json { render json: @plantacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantacions/1
  # PATCH/PUT /plantacions/1.json
  def update
    respond_to do |format|
      if @plantacion.update(plantacion_params)
        format.html { redirect_to @plantacion, notice: 'Plantacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantacion }
      else
        format.html { render :edit }
        format.json { render json: @plantacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantacions/1
  # DELETE /plantacions/1.json
  def destroy
    @plantacion.destroy
    respond_to do |format|
      format.html { redirect_to plantacions_url, notice: 'Plantacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plantacion
      @plantacion = Plantacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plantacion_params
      params.require(:plantacion).permit(:parcela_id, :cultivo, :variedad, :numplantas, :observaciones)
    end
end
