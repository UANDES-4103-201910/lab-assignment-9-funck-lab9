Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :events

  #root :to => 'sessions#new'
  root :to => 'events#index'
  direct :homepage do
    "events#index"
  end

  #post '/login',   to: 'sessions#create', as: :log_in
  #delete '/log_out' => 'sessions#destroy', as: :log_out

  #get '/sign_in' => 'registrations#new', as: :registrations
  #post '/sign_in' => 'registrations#create', as: :sign_in

end
