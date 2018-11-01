Rails.application.routes.draw do
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

  root 'site#home'

  #Easy way to add to Clinics database
  # root 'clinics#index'


  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
