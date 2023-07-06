class PowersController < ApplicationController
    def index
        powers=Power.all
        render json: powers, include: :heroes
    end
    def show
        power= Power.find_by(id: params[:id])
        if power
            render json: power, status: :ok
        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end
    def update
        power = Power.find_by(id: params[:id])
        if power
          if power.update(power_params)
            render json: power, status: :ok
          else
            render json: { error: "Failed to update Power" }, status: :unprocessable_entity
          end
        else
          render json: { error: "Power not found" }, status: :not_found
        end
    end
      
      private
      
      def power_params
        params.permit(:name, :description)
      end
      
        
end
