Rails.application.routes.draw do
  devise_for :users

  resources :restaurants do
    resources :reviews, except: [:index, :show]
  end

  get 'pages/about'

  get 'pages/contact'

  root 'restaurants#index' #doesn't work with restaurants/index. Seems like root needs to have Controller#Action ('restaurants#new' works; 'restaurants' doesn't work)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
