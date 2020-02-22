Rails.application.routes.draw do
  get 'static_pages/about'

  get 'static_pages/episodes'

  get 'static_pages/characters'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Render 'hello' by running the app
  root 'static_pages#about'
end
