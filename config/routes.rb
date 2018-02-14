Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # GET /restaurants/42/reviews/new
    # POST /restaurants/42/reviews
    resources :reviews, only: [ :new, :create ]

    collection do
     # /restaurants/..
     # /restaurants/top => restaurants#top
      get 'top', to: 'restaurants#top'
    end
    member do # /restaurants/:id/..
      get 'chef', to: 'restaurants#chef'
    end
  end
end
