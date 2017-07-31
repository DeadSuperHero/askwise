Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :tags, only: [:index, :show]

    authenticated :user do
      root :to => 'questions#index', as: :authenticated
    end

    root :to=> 'page#home'

  resources :questions do
    resources :answers
  end

end
