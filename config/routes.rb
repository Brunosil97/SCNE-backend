Rails.application.routes.draw do
  resources :contents
  resources :admins
  resources :songs

  post "/sign-in", to: "admins#sign_in"
  get "/validate", to: "admins#validate"
  post '/rails/active_storage/direct_uploads', to: "direct_uploads#create"
  patch '/update_song/:id', to: "songs#update_song"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
