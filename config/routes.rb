Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  namespace :api do
    namespace :v1 do
      get "users/me", to: "users#me"
      resources :courses, :assignments, :topics
      resources :posts, :comments

    end
  end
end
