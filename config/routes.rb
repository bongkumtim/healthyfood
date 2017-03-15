Rails.application.routes.draw do
  root "users#index"
  
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end
  resources :users, only: [:index]
  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  resources :recipes do
    collection do
      get :gout
      get :hypertension
      get :diabetes
      get :weight
      end
    member do
      get "like", to: "recipes#upvote"
      get "dislike", to: "recipes#downvote"
    end
    resources :comments
  end
  
  resources :posts
end
