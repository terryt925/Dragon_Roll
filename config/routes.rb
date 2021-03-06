Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :animes, only: [:index, :show]
    resources :episodes, only: [:index, :show]
    resources :bookmarks, only: [:index, :show, :create, :update, :destroy]
  end

  root "static_pages#root"
end
