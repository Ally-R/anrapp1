Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'
  get '/episodes', to: 'static_pages#episodes'
  get '/characters', to: 'static_pages#characters'
  get '/contact', to: 'static_pages#contact'
  get '/quote', to: 'static_pages#quote'
  get '/posts', to: 'static_pages#posts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Render about page when first running the app
  root 'static_pages#about'

  # Fetch the post database
  resources :entries
end
