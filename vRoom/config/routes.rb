Rails.application.routes.draw do
  root "top#index"
  resources :group_users, only: [:new, :create,:destroy]
  devise_for :users
  resources :users do
    resources :u_albums do
      resources :uposts
    end
    member do
      post :follow, :unfollow
    end

  end
  resources :groups do

    resources :g_albums do
   resources :gposts
 end
    end


  get '/search' => 'users#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
