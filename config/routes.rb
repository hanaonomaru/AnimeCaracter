Rails.application.routes.draw do
  root to: 'characters#index'
  post '/characters', to: 'characters#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
