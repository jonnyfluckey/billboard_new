Rails.application.routes.draw do

  root 'billboards#index'

  resources :artists do
    resources :songs
  end

  resources :billboards
end
