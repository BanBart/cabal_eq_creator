class Api::V1::WeaponsController < Api::V1::BaseController
  def index
  	@weapons = Weapon.all
  	render json: @weapons, status: 200
  end

  def show
  	@weapon = Weapon.find(params[:id])
  	render json: @weapon, status: 200
  end
end
