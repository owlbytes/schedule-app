ScheduleApp::Application.routes.draw do
  root :to => "courses#index"
  resources :campuses
  resources :courses
  resources :rooms
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  # let's you flag a specific user
  get '/users/:user_id/flag' => 'users#flag'

  # let's you view all the flagged users in one go
  # get '/users/flagged' => 'users#show_flagged', as: 'flagged' 
 
  get "/signup", to: "users#new",         as: "signup"
  get "/login",  to: "sessions#new" ,     as: "login"
  delete "/logout", to: "sessions#destroy",  as: "logout"

end
