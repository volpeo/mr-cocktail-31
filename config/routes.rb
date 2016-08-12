Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  root "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :destroy], shallow: true
  end
end
