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
    @franchise = Franchise.create(franchise_params)
    redirect_to franchise_path(@franchise)
  end

  private

  def franchise_params
    params.require(:franchise).permit(:name, :costume)
  end
end
