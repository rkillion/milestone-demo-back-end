Rails.application.routes.draw do
  resources :assignments
  match "*all" => "application#cors_preflight_check", via: [:get,:post], :constraints => { :method => "OPTIONS" }
  resources :milestones
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
