Rails.application.routes.draw do
  namespace :api do
    resources :user_sessions, only: [:create]
  end
end
