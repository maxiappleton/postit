PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  # sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # posts and associated votes and comments routes
  resources :posts, except: [:destroy] do
    member do
      post 'vote'
    end
    resources :comments, only: [:create] do
      member do
        post 'vote'
      end
    end
  end

  # categories routes
  resources :categories, only: [:show, :create, :new]

  # users routes
  get '/register', to: 'users#new'
  resources :users, only: [:show, :create, :edit, :update]
end
