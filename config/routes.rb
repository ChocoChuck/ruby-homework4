Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts

  get '/about-me' => 'contacts#about_me'
  get '/yourContacts' => 'contacts#yourContacts'
  get 'create' => 'contacts#create'

  root('contacts#index')
end
