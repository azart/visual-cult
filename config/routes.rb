VisualCultV2::Application.routes.draw do

  get '/admin' => 'pages#admin'

  match '/vote/:id' => 'jscripts#vote'

  namespace :admin do
    resources :technologies, :colors, :rubriks, :interiors, :permissions, :decors
  end

  devise_for :users

  resources :users do
    resources :galleries do
      resources :photos
    end
  end

  resources :news

  root :to => 'pages#index'

end
