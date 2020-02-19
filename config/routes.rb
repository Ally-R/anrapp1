Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/campus'

  get 'static_pages/town'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Render 'hello' by running the app
  root 'application#hello'
end
