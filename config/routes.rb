Rails.application.routes.draw do
    root to: 'tasks#index'
    
    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    delete 'logout' => 'sessions#destroy'
    
    get 'signup' => 'users#new'
    
    resources :users, only: [:index, :show, :new, :create]
    resources :tasks
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
