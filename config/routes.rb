Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Ruta para la página de inicio
  root 'pages#home'

  # Rutas para las páginas de "about" y "contact"
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # Ruta para manejar la solicitud POST del formulario de contacto
  post '/contact', to: 'pages#submit_contact_form'
end

