Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  
  resources :course_orders
  root to: "home#index"
  resources :creditcards
  resources :feedbacks
  resources :teachments
  resources :students
  resources :courses
  resources :teachers
  resources :admins
  resources :contact_infomations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
