Tcfnew1::Application.routes.draw do
  root :to => "home#index"
  get "/courses/web-app-coder-ruby-on-rails", to: redirect('/courses/expert-coder')
  get "/courses/web-app-coder-angular-and-node", to: redirect('/courses/angular-coder')
  get "/ruby_on_rails_course_scholarship", to: redirect('/')
  get "/courses/summer-coder-camp-ruby-on-rails", to: redirect('/courses/summer-coder-camp-rails-angularjs')
  get "/courses/web-app-coder-pro", to: redirect('/courses/expert-coder')
  get "/courses/beginner-coder-weekend-workshop-melbourne", to: redirect('courses/beginner-coder-weekend-workshop-melbourne-adelaide-sydney-brisbane-perth')
  get "/courses/beginner-coder-weekend-workshop-melbourne-adelaide", to: redirect('courses/beginner-coder-weekend-workshop-melbourne-adelaide-sydney-brisbane-perth')
  devise_for :users, :skip => :registrations
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
  resources :transactions, only: [:new, :create]
  resources :bank_transfers, only: :index
  get "calendar" => "calendar#index"
  get "privacy" => "privacy#index"
  get "blog" => "blog#index"
  get "contact" => "contact#index"
  get "about" => "about#index"
  get "web-development-and-javascript-courses", to: "course_list#index"
  get "thanks" => "thanks#index"
  get "enrolment_thanks" => "enrolment_thanks#index"
  # get "bank_transfers" => "bank_transfers#index"
  get "volunteer_thanks" => "volunteer_thanks#index"
  resources :volunteers

  resources :code_club_schools

  resources :student_sites

  resources :payments

  resources :sliders
  # redirections
  


end