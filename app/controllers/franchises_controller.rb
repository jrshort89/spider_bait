class FranchisesController < ApplicationController
  def index
    @franchises = Franchise.all
  end

  def show
    @franchise = Franchise.find params[:id]
  end

  def new
    @franchise = Franchise.new
  end

  def create
    @franchise = Franchise.new(franchise_params)
    if @franchise.save
      redirect_to franchise_path(@franchise)
    else
      render :new
    end
  end

  private

  def franchise_params
    params.require(:franchise).permit(:name, :costume, :food_ids => [])
  end
end
