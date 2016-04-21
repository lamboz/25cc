Rails.application.routes.draw do

  get 'users/finish_signup'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  devise_for :admins

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  get 'home/index'
  root 'home#index'

  resources :episodes, only: [:index, :show]

  namespace :admin do
    resources :hosts, except: :show
    resources :episodes, except: :show
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
