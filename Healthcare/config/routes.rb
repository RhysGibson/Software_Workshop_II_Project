Rails.application.routes.draw do
  get 'site/home'
  get 'site/findClinics'
  get 'site/highVisibility'
  get 'site/lovedOnes'
  get 'site/notifications'

  root 'site#home'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
