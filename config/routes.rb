Rails.application.routes.draw do
  # this was made by the devise
  devise_for :users
  root to: "spaces#index"

  # we wrote this:
  resources :spaces do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:new, :edit, :index, :destroy]
  get "my_bookings", to: "bookings#my_bookings"
end
