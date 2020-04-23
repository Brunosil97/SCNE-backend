Rails.application.routes.draw do
  resources :admins
  resources :songs

  post "/sign-in", to: "admins#sign_in"
  get "/validate", to: "admins#validate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
