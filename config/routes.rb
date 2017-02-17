Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  namespace :api do
    namespace :v1 do
      resources :users
      resources :courses, :assignments, :topics
      resources :posts, :comments
    end
  end
end
