Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        }
  root to: 'events#index'
  resources :users, only: [:show]
  resources :contacts, only: [:new, :create, :show, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :parthicipant_managements, only: [:create, :destroy]
  resources :events do
    collection do
      post :confirm
      post :new_guest,as:'guest_sign_in'
      get :favorite
      get :parthicipante_events
      get :search
    end
  end

end
