Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'sessions/login'
      get 'sessions/logout'
    end
  end
  devise_for :admins, skip: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
