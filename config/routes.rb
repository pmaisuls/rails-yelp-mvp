Rails.application.routes.draw do
    resources :restaurants, only: [:index, :new, :create, :show] do
      resources :reviews, only: [:new, :create]

    # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review
    # post 'restaurants/:id/reviews', to: 'reviews#create'
  end
end
