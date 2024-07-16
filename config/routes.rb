Rails.application.routes.draw do
    root to: "homes#top"
    devise_for :users
    
    resources :books, only: [:index, :show, :edit]
    
    get 'homes/about', as: 'about'
end
