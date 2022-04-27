Rails.application.routes.draw do
  get 'herb' => 'herb#index', as: 'herbs'
  get 'herb/:id' => 'herb#show', as: 'herb'
  # root "articles#index"
end
