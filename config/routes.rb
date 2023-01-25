Rails.application.routes.draw do
  namespace :api do
    resources :ProjectsController
  end
end
