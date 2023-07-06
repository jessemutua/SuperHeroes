class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        hero_power =HeroPower.create(hero_power_params)
        if hero_power.save
            render json: hero_power, status: :created
        else
            render_unprocessable_entity_response
        end
    end

    private

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end
    
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end