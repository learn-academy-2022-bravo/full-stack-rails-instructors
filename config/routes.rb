Rails.application.routes.draw do
  get 'herb' => 'herb#index', as: 'herbs'
  get 'herb/new' => 'herb#new', as: 'new_herb'
  get 'herb/:id' => 'herb#show', as: 'herb'
  post 'herb' => 'herb#create'
  # root "articles#index"
end
