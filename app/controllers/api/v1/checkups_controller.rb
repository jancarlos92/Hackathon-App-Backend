class Api::V1::CheckupsController < ApplicationController

    def index
        @checkups = Checkup.all
        render json: @checkups
    end

    def create
        @checkup = Checkup.create(checkup_params)
        if @checkup.valid?
          render json: { checkup: UserSerializer.new(@checkup) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private
    def checkup_params
      params.require(:checkup).permit(:practioner_id, :user_id, :diagnosis, :treatment)
    end

end
