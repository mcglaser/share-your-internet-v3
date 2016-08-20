class RolodexController < ApplicationController

  def show
    @rolodex = Rolodex.find(params[:id])
    if @rolodex.referrals.last.try(:name)
      @recipe.referrals.build
    end
  end

  def index
    @rolodex = Rolodex.all
  end

  def new
    @rolodex = Rolodex.new
    2.times { @rolodex.referrals.build }
  end

  def create
    rolodex = Rolodex.create(rolodex_params)
    redirect_to rolodex
  end

  def update
    rolodex = Rolodex.find(params[:id])
    rolodex.update(rolodex_params)
    redirect_to rolodex
  end

  private

  def rolodex_params
    params.require(:rolodex).permit(referrals_attributes: [:id, :name, :quantity])
  end
end