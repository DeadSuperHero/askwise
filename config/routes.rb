Rails.application.routes.draw do
  resources :dashboards
  resources :projects
  devise_for :admins
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get 'tags/:tag', to:'questions#index', as: :tag

    authenticated :user do
      root :to => 'questions#index', as: :authenticated
    end

    root :to=> 'page#home'

     resources :users, only:[:show] do
     end

  resources :questions do
    resources :answers
  end

    resources :departments do
    end

end
