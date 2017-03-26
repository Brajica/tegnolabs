Rails.application.routes.draw do
  resources :ratings
  get 'apps/calificacion'
  devise_for :admins, controllers: {sessions: 'admini'}
  resources :apps do

  end
  devise_for :users, controllers: {registrations: 'registro'}
  root :to => "inicio#index"
  post 'ratings/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
