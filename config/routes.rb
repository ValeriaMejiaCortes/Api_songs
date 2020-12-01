# frozen_string_literal: true

Rails.application.routes.draw do
  get 'songs/show/:artist/:title', to: 'songs#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
