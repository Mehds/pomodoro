Rails.application.routes.draw do
  get 'pomodoro/index'

  resources :tasks do
  	resources :cycles
  end

  root 'pomodoro#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
