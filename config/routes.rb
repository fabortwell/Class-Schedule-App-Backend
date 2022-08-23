Rails.application.routes.draw do

  resources :schedules
  resources :technical_mentors
  resources :students, only: [:create, :show]
<<<<<<< HEAD
  
  #LOGIN/LOGOUT STUDENT
  post '/login_student', to: 'student_session#create'
  delete '/logout_student', to: 'student_session#destroy'
=======

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
>>>>>>> fc14f5cfe35792538ec039639f16dc3def24d87a

  #LOGIN/LOGOUT TM
  post '/login_tm', to: 'technical_mentor_session#create'
  delete '/logout_tm', to: 'technical_mentor_session#destroy'
end
