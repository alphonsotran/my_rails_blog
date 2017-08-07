Rails.application.routes.draw do
  get 'entries/index'

    resources :entries do
      resources :comments
    end

  root 'entries#index'
end
