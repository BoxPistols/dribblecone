Rails.application.routes.draw do
  
  resources :shots do

    resources :comments
    #shot/1/comment/3
  end

  devise_for :users, controllers: { registrations: 'registrations' }
  root "shots#index"
  
end
