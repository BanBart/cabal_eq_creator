module Api
	module V1
		class WeaponsController < Api::V1::BaseController
			before_action :http_basic_authenticate
			
			def index
				render json: Weapon.all.order(name: :asc), status: :ok
			end

			def show
				@weapon = Weapon.find_by(id: params[:id])
				if @weapon
					render json: @weapon, status: :ok
				else
					head 404, "content_type" => 'text/plain'
				end
			end
		end
	end
end