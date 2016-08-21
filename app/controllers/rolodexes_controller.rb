class RolodexesController < ApplicationController

  def show
    @rolodex = Rolodex.find(params[:id])
    if @rolodex.referrals.last.try(:nickname)
      @recipe.referrals.build
    end
  end

  def index
    @rolodexes = Rolodex.all
  end

  def new
    @rolodex = Rolodex.new
    1.times { @rolodex.referrals.build }
  end

  def create
    rolodex = Rolodex.create(rolodex_params)
    redirect_to root_url
  end

  def update
    rolodex = Rolodex.find(params[:id])
    rolodex.update(rolodex_params)
    redirect_to rolodex
  end

  private

  def rolodex_params
    params.require(:rolodex).permit(:nickname, referrals_attributes: [:ref_first_name, :ref_last_name, :ref_address_line_one, :ref_address_line_two, :rolodex_id])
  end
end