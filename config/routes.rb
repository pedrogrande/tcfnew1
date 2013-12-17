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

  # redirections
  get "/courses/web-app-coder-ruby-on-rails", to: redirect('/courses/expert-coder')
  get "/courses/web-app-coder-angular-and-node", to: redirect('/courses/angular-coder')
  get "/ruby_on_rails_course_scholarship", to: redirect('/')
  get "/courses/summer-coder-camp-ruby-on-rails", to: redirect('/courses/summer-coder-camp-rails-angularjs')
  get "/courses/web-app-coder-pro", to: redirect('/courses/expert-coder')

end