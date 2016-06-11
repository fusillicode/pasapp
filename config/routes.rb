Rails.application.routes.draw do
  root 'home#index'

  namespace :api, defaults: { format: 'json' } do
    resources :sensors_data, except: %i(new delete edit update)
    resources :light_sources, except: %i(new delete edit update)
  end
end
