Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'

  get '/episodes', to: 'static_pages#episodes'

  get '/characters', to: 'static_pages#characters'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Render about page when first running the app
  root 'static_pages#about'
end
