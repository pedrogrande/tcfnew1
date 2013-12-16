Tcfnew1::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :skills
  resources :intakes
  resources :courses
  resources :posts
  resources :events
  resources :enquiries
  resources :enrolments
  resources :programme_requests
  resources :user_profiles
  resources :comments
  resources :categories
  get "calendar" => "calendar#index"
  get "privacy" => "privacy#index"
  get "blog" => "blog#index"
  get "contact" => "contact#index"
  get "about" => "about#index"
  get "web-development-and-javascript-courses", to: "course_list#index"
  get "thanks" => "thanks#index"
  get "enrolment_thanks" => "enrolment_thanks#index"
end