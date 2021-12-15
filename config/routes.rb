Rails.application.routes.draw do
  root "cards#index"

  resources :cards do
    resources :comments
  end
end
