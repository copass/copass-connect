CopassConnect::Application.routes.draw do
  match 'faq' => 'home#faq', via: :get, :as => 'faq'
  match 'contact' => 'home#contact', via: :get, :as => 'contact'
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end