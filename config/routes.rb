Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  namespace :api do
    namespace :v1 do
      resources :users
      resources :courses, :topics
      resources :posts, :comments
      resources :projects

      resources :assignments, :submissions
    end
  end
end
