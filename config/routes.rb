Rails.application.routes.draw do
  resources :blogs
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
