class ExerciciosFichaMuscsController < ApplicationController
  before_action :set_exercicios_ficha_musc, only: [:show, :edit, :update, :destroy]

  # GET /exercicios_ficha_muscs
  # GET /exercicios_ficha_muscs.json
  def index
    @exercicios_ficha_muscs = ExerciciosFichaMusc.all
  end

  # GET /exercicios_ficha_muscs/1
  # GET /exercicios_ficha_muscs/1.json
  def show
  end

  # GET /exercicios_ficha_muscs/new
  def new
    @exercicios_ficha_musc = ExerciciosFichaMusc.new
  end

  # GET /exercicios_ficha_muscs/1/edit
  def edit
  end

  # POST /exercicios_ficha_muscs
  # POST /exercicios_ficha_muscs.json
  def create
    @exercicios_ficha_musc = ExerciciosFichaMusc.new(exercicios_ficha_musc_params)

    respond_to do |format|
      if @exercicios_ficha_musc.save
        format.html { redirect_to @exercicios_ficha_musc, notice: 'Exercicios ficha musc was successfully created.' }
        format.json { render :show, status: :created, location: @exercicios_ficha_musc }
      else
        format.html { render :new }
        format.json { render json: @exercicios_ficha_musc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercicios_ficha_muscs/1
  # PATCH/PUT /exercicios_ficha_muscs/1.json
  def update
    respond_to do |format|
      if @exercicios_ficha_musc.update(exercicios_ficha_musc_params)
        format.html { redirect_to @exercicios_ficha_musc, notice: 'Exercicios ficha musc was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercicios_ficha_musc }
      else
        format.html { render :edit }
        format.json { render json: @exercicios_ficha_musc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercicios_ficha_muscs/1
  # DELETE /exercicios_ficha_muscs/1.json
  def destroy
    @exercicios_ficha_musc.destroy
    respond_to do |format|
      format.html { redirect_to exercicios_ficha_muscs_url, notice: 'Exercicios ficha musc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercicios_ficha_musc
      @exercicios_ficha_musc = ExerciciosFichaMusc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercicios_ficha_musc_params
      params.require(:exercicios_ficha_musc).permit(:ficha_musc_id, :exercicio_id)
    end
end
