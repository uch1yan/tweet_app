Rails.application.routes.draw do
  get 'apps/index'
  get 'apps/show'
  get 'apps/new'
  resources :app
end
