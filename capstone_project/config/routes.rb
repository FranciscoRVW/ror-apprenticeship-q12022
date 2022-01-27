# frozen_string_literal: true

Rails.application.routes.draw do
  resources :trainers
  root 'pokemons#index'

  resources :pokemons
end
