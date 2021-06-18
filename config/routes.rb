Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes, only: [:new,:create,:show,:edit,:update]
  devise_scope :user do
    get "users", to: "devise/registrations#new"
  end
end
