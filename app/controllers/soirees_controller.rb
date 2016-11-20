class SoireesController < ApplicationController
  before_action :set_soiree, only: [:show, :edit, :update, :destroy]

  # GET /soirees
  # GET /soirees.json
  def index
    @soirees = Soiree.all
  end

  # GET /soirees/1
  # GET /soirees/1.json
  def show
  end

  # GET /soirees/new
  def new
    @soiree = Soiree.new
  end

  # GET /soirees/1/edit
  def edit
  end

  # POST /soirees
  # POST /soirees.json
  def create
    @soiree = Soiree.new(soiree_params)

    respond_to do |format|
      if @soiree.save
        format.html { redirect_to @soiree, notice: 'Votre évènement a bien été créé.' }
        format.json { render :show, status: :created, location: @soiree }
      else
        format.html { render :new }
        format.json { render json: @soiree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soirees/1
  # PATCH/PUT /soirees/1.json
  def update
    respond_to do |format|
      if @soiree.update(soiree_params)
        format.html { redirect_to @soiree, notice: 'Votre évènement a bien été mis à jour.' }
        format.json { render :show, status: :ok, location: @soiree }
      else
        format.html { render :edit }
        format.json { render json: @soiree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soirees/1
  # DELETE /soirees/1.json
  def destroy
    @soiree.destroy
    respond_to do |format|
      format.html { redirect_to soirees_url, notice: 'Votre évènement a bien été supprimé.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soiree
      @soiree = Soiree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soiree_params
      params.require(:soiree).permit(:title, :date_event, :picture, :time_event, :price, :description)
    end
end
