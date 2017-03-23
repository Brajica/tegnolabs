Rails.application.routes.draw do
  post 'apps/calificacion'
  devise_for :admins,controllers: {session: 'admini'}
  resources :apps
  devise_for :users, controllers: {registrations: 'registro'}
  root :to => "inicio#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
