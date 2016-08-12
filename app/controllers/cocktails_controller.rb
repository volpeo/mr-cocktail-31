class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      # flash[:notice] = "Cocktail has been created"
      redirect_to cocktail_path(@cocktail), notice: "Cocktail has been created"
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, photos: [])
  end

end