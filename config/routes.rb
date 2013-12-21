AbiAndLin::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :guests
      resources :groups
    end
  end
  root 'home#show'
end
