Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :announcements
  resources :schedules
  resources :technical_mentors

  resources :students, only: [:index, :create, :show]

  resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  #LOGIN/LOGOUT STUDENT
  post '/login_student', to: 'student_session#create'
  delete '/logout_student', to: 'student_session#destroy'

  #LOGIN/LOGOUT TM
  post '/login_tm', to: 'technical_mentor_session#create'
  delete '/logout_tm', to: 'technical_mentor_session#destroy'
end
