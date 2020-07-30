Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "application#index"

  post 'up',   to: "application#up"
  post 'down', to: "application#down"
end
