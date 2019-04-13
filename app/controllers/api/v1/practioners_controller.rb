class Api::V1::PractionersController < ApplicationController

    def index
        @practioners = Practioner.all
        render json: @practioners
    end

    def create
        @practioner = Practioner.create(user_params)
        if @practioner.valid?
          render json: { practioner: UserSerializer.new(@practioner) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end

      private

      def practioner_params
        params.require(:practioner).permit(:name, :company)
      end

end
