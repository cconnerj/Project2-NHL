Rails.application.routes.draw do
  root to: 'teams#index'
  resources :teams do
    resources :players do
      member do
        post 'add_membership'
        delete 'remove_membership'
      end
    end
  end
  resources :players

end
