class IntervencionsController < ApplicationController
  before_action :set_intervencion, only: [:show, :edit, :update, :destroy]

  # GET /intervencions
  # GET /intervencions.json
  def index
    @intervencions = Intervencion.all
  end

  # GET /intervencions/1
  # GET /intervencions/1.json
  def show
  end

  # GET /intervencions/new
  def new
    @intervencion = Intervencion.new
  end

  # GET /intervencions/1/edit
  def edit
  end

  # POST /intervencions
  # POST /intervencions.json
  def create
    @intervencion = Intervencion.new(intervencion_params)

    respond_to do |format|
      if @intervencion.save
        format.html { redirect_to @intervencion, notice: 'Intervencion was successfully created.' }
        format.json { render :show, status: :created, location: @intervencion }
      else
        format.html { render :new }
        format.json { render json: @intervencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intervencions/1
  # PATCH/PUT /intervencions/1.json
  def update
    respond_to do |format|
      if @intervencion.update(intervencion_params)
        format.html { redirect_to @intervencion, notice: 'Intervencion was successfully updated.' }
        format.json { render :show, status: :ok, location: @intervencion }
      else
        format.html { render :edit }
        format.json { render json: @intervencion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervencions/1
  # DELETE /intervencions/1.json
  def destroy
    @intervencion.destroy
    respond_to do |format|
      format.html { redirect_to intervencions_url, notice: 'Intervencion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervencion
      @intervencion = Intervencion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervencion_params
      params.require(:intervencion).permit(:plantacion_id, :accion)
    end
end
