Rails.application.routes.draw do
  root 'homes#index'

  resources :homes, only: [:index]
  resources :contact_us, only: [:index, :create]
  resources :about_us do
    collection do
      get 'culture'
      get 'ideas'
      get 'testimonials'
      get 'joinus'
    end
  end
  resources :service_scopes do
    collection do
      get 'gift'
      get 'print'
      get 'creative'
      get 'event'
    end
  end
  resources :portfolios do
    collection do
      get 'clients'
      get 'process'
      get 'works'
    end
  end
end
