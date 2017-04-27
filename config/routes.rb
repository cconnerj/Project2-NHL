Rails.application.routes.draw do

  resources :teams do
    resources :players
  end
  resources :players do
    member do
      post 'add_membership'
      delete 'remove_membership'
    end
  end
end
