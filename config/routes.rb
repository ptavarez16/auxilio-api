# frozen_string_literal: true

Rails.application.routes.draw do
  resources :charges
  resources :assists
  resources :services, only: %i[index show]
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :users, only: %i[index show update]
  resources :drivers, only: %i[index show update]

  # Custom routes
  # get 'search(/:search)' => 'services#search_services'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  post '/new-driver' => 'drivers#signup'
  post '/log-in' => 'drivers#signin'
  delete '/log-out' => 'drivers#signout'
  patch '/new-password' => 'drivers#changepw'
end
