# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :zipcodes, only: [:show]
  get '/zipcodes/:zipcode', to: 'zipcodes#show'
end
