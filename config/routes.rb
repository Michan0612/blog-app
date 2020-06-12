# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'articles#index'

  #   ここでGETリクエストをしている
  # onlyオプションは必要ないので削除しました
  resources :articles do
    resources :comments, only: %i[new create]

    resource :like, only: [:create, :destroy]
  end

  resource :profile, only: [:show, :edit, :update]
  resources :favorites, only: [:index]
end
