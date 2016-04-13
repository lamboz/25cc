Rails.application.routes.draw do

  devise_for :admins

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
