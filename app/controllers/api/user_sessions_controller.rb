module Api
  class UserSessionsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def create
      user = User.find_by!(name: params[:name])
      raise ActiveRecord::RecordNotFound unless user.authenticate(params[:password])

      render json: { user: user }, status: :ok
    end

    private

    def not_found
      render json: { error: 'invalid user name or password' }, status: :not_found
    end
  end
end
