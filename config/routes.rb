Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  use_doorkeeper
  devise_for :users
  

resources :product, only: [:show]

resources :category, only: [:show]

resources :tokens, only: [:new]

post '/generate_token', to: 'tokens#generate_token', as: 'generate_token'

resource :cart, only: %i[destroy show] do  
resources :items, only: %i[destroy create]
end

resources :search, only: [:index]

namespace :api do 
  namespace :v1 do  
   resources :profile, only: [:index]
   resources :products, only: [:index, :show, :destroy, :update, :create]
   defaults format: :json do
     get "home/index", to: "home#index"
   end
  end
end

root to: "main#index"

end
