class FichaMuscsController < ApplicationController
  before_action :set_ficha_musc, only: [:show, :edit, :update, :destroy]

  # GET /ficha_muscs
  # GET /ficha_muscs.json
  def index
    @ficha_muscs = FichaMusc.all
  end

  # GET /ficha_muscs/1
  # GET /ficha_muscs/1.json
  def show
  end

  # GET /ficha_muscs/new
  def new
    @ficha_musc = FichaMusc.new
  end

  # GET /ficha_muscs/1/edit
  def edit
  end

  # POST /ficha_muscs
  # POST /ficha_muscs.json
  def create
    @ficha_musc = FichaMusc.new(ficha_musc_params)

    respond_to do |format|
      if @ficha_musc.save
        format.html { redirect_to @ficha_musc, notice: 'Ficha musc was successfully created.' }
        format.json { render :show, status: :created, location: @ficha_musc }
      else
        format.html { render :new }
        format.json { render json: @ficha_musc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ficha_muscs/1
  # PATCH/PUT /ficha_muscs/1.json
  def update
    respond_to do |format|
      if @ficha_musc.update(ficha_musc_params)
        format.html { redirect_to @ficha_musc, notice: 'Ficha musc was successfully updated.' }
        format.json { render :show, status: :ok, location: @ficha_musc }
      else
        format.html { render :edit }
        format.json { render json: @ficha_musc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ficha_muscs/1
  # DELETE /ficha_muscs/1.json
  def destroy
    @ficha_musc.destroy
    respond_to do |format|
      format.html { redirect_to ficha_muscs_url, notice: 'Ficha musc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_musc
      @ficha_musc = FichaMusc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ficha_musc_params
      params.require(:ficha_musc).permit(:data, :validade, :obs)
    end
end
