# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pokemons#index'

  resources :pokemons
end
