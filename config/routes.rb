Rails.application.routes.draw do
  resources :cities, only: [:create, :index, :show, :new, :edit]
end
