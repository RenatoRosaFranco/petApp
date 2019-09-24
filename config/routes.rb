# frozen_string_literal: true

Rails.application.routes.draw do
  
  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  resources :pets

  # Dashboard
  # @implemented
  namespace :dashboard do
  	resources :profiles, only: [:index, :show, :edit, :update]
  	resources :accounts, only: [:index, :edit, :update, :destroy]
  	resources :notifications, only: [:index, :show]
  end
end
