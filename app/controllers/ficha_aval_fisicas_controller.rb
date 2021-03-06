class FichaAvalFisicasController < ApplicationController
  before_action :set_ficha_aval_fisica, only: [:show, :edit, :update, :destroy]

  # GET /ficha_aval_fisicas
  # GET /ficha_aval_fisicas.json
  def index
    @ficha_aval_fisicas = FichaAvalFisica.all
  end

  # GET /ficha_aval_fisicas/1
  # GET /ficha_aval_fisicas/1.json
  def show
  end

  # GET /ficha_aval_fisicas/new
  def new
    @ficha_aval_fisica = FichaAvalFisica.new
  end

  # GET /ficha_aval_fisicas/1/edit
  def edit
  end

  # POST /ficha_aval_fisicas
  # POST /ficha_aval_fisicas.json
  def create
    @ficha_aval_fisica = FichaAvalFisica.new(ficha_aval_fisica_params)

    respond_to do |format|
      if @ficha_aval_fisica.save
        format.html { redirect_to @ficha_aval_fisica, notice: 'Ficha aval fisica was successfully created.' }
        format.json { render :show, status: :created, location: @ficha_aval_fisica }
      else
        format.html { render :new }
        format.json { render json: @ficha_aval_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_aval_fisicas/1
  # PATCH/PUT /ficha_aval_fisicas/1.json
  def update
    respond_to do |format|
      if @ficha_aval_fisica.update(ficha_aval_fisica_params)
        format.html { redirect_to @ficha_aval_fisica, notice: 'Ficha aval fisica was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_aval_fisica }
      else
        format.html { render :edit }
        format.json { render json: @ficha_aval_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_aval_fisicas/1
  # DELETE /ficha_aval_fisicas/1.json
  def destroy
    @ficha_aval_fisica.destroy
    respond_to do |format|
      format.html { redirect_to ficha_aval_fisicas_url, notice: 'Ficha aval fisica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_aval_fisica
      @ficha_aval_fisica = FichaAvalFisica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_aval_fisica_params
      params.require(:ficha_aval_fisica).permit(:antebraco_direito, :antebraco_esquerdo, :panturilha_direita, :panturilha_esquerda, :pescoco, :torax, :coxa_direita, :coxa_esquerda, :peso, :quadril, :braco_esquerdo, :braco_direito, :ombro, :abdome, :cintura, :altura, :obs, :usuario_id)
    end
end
