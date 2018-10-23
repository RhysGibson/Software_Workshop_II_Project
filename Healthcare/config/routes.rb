Rails.application.routes.draw do
  get 'site/findClinics'
  get 'site/highVisibility'
  get 'site/lovedOnes'
  get 'site/notifications'
  get 'site/home'

  root 'site#home'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
