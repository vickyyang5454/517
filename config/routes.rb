Rails.application.routes.draw do
  resources :course_orders
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
