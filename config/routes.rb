Rails.application.routes.draw do
  devise_for :users, skip: [:registrations] # Disable signup routes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
