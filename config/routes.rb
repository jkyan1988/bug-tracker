Rails.application.routes.draw do
  
  resources :ticket_assignments
  resources :projects
  resources :comments
  resources :tickets
  resources :users
  resources :roles
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
