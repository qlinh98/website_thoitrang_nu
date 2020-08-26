Rails.application.routes.draw do
  resources :danhsach_huis
  devise_for :admin_users, ActiveAdmin::Devise.config
  # devise_scope :user do
  #   get "/users/sign_out" => "devise/sessions#destroy"
  # end
  ActiveAdmin.routes(self)
  resources :carts
  resources :loaisanphams
  resources :danhmucs
  resources :chitiet_dathangs
  resources :giaohangs
  devise_for :users
  resources :dondathangs
  resources :khachhangs
  resources :chitietsanphams
  resources :chitiethoadonnhaps
  resources :hoadonnhaps
  resources :nhacungcaps
  resources :sanphams
  resources :thuonghieus
  resources :loais
  root "public#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
