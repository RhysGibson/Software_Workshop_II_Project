Rails.application.routes.draw do
  get 'feedback/new'
  get 'sessions/new'
  get 'users/new'
  resources :clinics
  get 'site/home'
  get 'site/findClinics'
  get 'site/highVisibility'
  get 'site/lovedOnes'
  get 'site/notifications'
  get 'site/feedback'
  get 'site/records'
  get 'site/accountSupport'
  get 'site/prescriptions'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #if adding to databases comment out this root and uncomment which one you are working with
  root 'site#home'

  #Easy way to add to Clinics database
  # root 'clinics#index'

  #User DB
  # root 'users#new'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
