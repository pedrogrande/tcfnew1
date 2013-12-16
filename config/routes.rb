Tcfnew1::Application.routes.draw do
  resources :enrolments

  resources :programme_requests

  resources :user_profiles

  resources :comments

  resources :categories

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :skills
  resources :intakes
  resources :courses
  resources :posts
  resources :events
  resources :enquiries
  get "calendar" => "calendar#index"
  get "privacy" => "privacy#index"
  get "blog" => "blog#index"
  get "contact" => "contact#index"
  get "about" => "about#index"
  get "web-development-and-javascript-courses" => "course_list#index"
  get "thanks" => "thanks#index"
end