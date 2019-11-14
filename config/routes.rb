Rails.application.routes.draw do
  # scope :api, defaults: { format: :json } do
  #   devise_for :users, controllers: { sessions: :sessions },
  #   path_names: { sign_in: :login }
  # end
  Rails.application.routes.draw do
    devise_for :users,
               path: '',
               path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup'
               },
               controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
               }
   end
  resources :tutorial_modules
  
  resource :user, only: [:show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
