Rails.application.routes.draw do
  resources :announcements

  resources :schedules
  resources :technical_mentors
  resources :students, only: [:create, :show]
  
  #LOGIN/LOGOUT STUDENT
  post '/login_student', to: 'student_session#create'
  delete '/logout_student', to: 'student_session#destroy'

  #LOGIN/LOGOUT TM
  post '/login_tm', to: 'technical_mentor_session#create'
  delete '/logout_tm', to: 'technical_mentor_session#destroy'
end
