Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do

      resources :courses, :assignments

      resources :posts do
        collection do
          get :comments
        end
      end

    end
  end
end
