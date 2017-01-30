Rails.application.routes.draw do
  mount_devise_token_auth_for 'Lecturer', at: 'api/v1/lecturers'

  namespace :api do
    namespace :v1 do
      resources :courses, :assignments
      resources :calendars, only: :index
    end
  end
end
