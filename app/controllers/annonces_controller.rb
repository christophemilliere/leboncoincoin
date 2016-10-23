class AnnoncesController < ApplicationController
  before_action :set_annonce, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # GET /annonces
  # GET /annonces.json
  def index
    @annonces = current_user.annonces.all
  end

  # GET /annonces/1
  def show
  end

  # GET /annonces/new
  def new
    @annonce = Annonce.new
  end

  # GET /annonces/1/edit
  def edit
  end

  # POST /annonces
  def create
    @annonce = current_user.annonces.new(annonce_params)

    respond_to do |format|
      if @annonce.save
        format.html { redirect_to @annonce, notice: 'Votre annonce à bien été crée.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /annonces/1
  def update
    respond_to do |format|
      if @annonce.update(annonce_params)
        format.html { redirect_to @annonce, notice: 'Votre annonce à bien été modifié.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /annonces/1
  def destroy
    @annonce.destroy
    respond_to do |format|
      format.html { redirect_to annonces_url, notice: 'Votre annonce est bien supprimée.' }
    end
  end

  def view
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annonce
      @annonce = Annonce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def annonce_params
      params.require(:annonce).permit(:title, :category_id, :description, :city, :zip_code, :price, :photo, :represent)
    end
end
