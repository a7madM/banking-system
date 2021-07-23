module Api
  class UserSessionsController < ApplicationController
    def create
      user = User.find_by(name: params[:name])
      user.authenticate(params[:password])
      byebug
    end
  end
end
