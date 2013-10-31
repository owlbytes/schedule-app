ScheduleApp::Application.routes.draw do
  root :to => "courses#index"
  resources :campuses
  resources :courses
  resources :rooms
  resources :users
end
