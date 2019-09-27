Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :goals
      post "user_token" => "user_token#create"
      resources :users, only: [:index]
    end
  end
end
