 Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :portfolios, except: [:show]
    puts :sort, on: :collection


  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'contact', to: 'pages#contact' 
  get 'about', to: 'pages#about'
  get 'tech-news', to: 'pages#tech_news'
  
  resources :blogs do 
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'

end
