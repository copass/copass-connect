CopassConnect::Application.routes.draw do
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  match 'faq' => 'home#faq', via: :get, :as => 'faq'
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"

  #STI
  devise_for :users, :skip => :registrations
  devise_for :places, :skip => :sessions
  devise_for :coworkers, :skip => :sessions

  # customizing default login/logout routes, views, actions
  devise_for :users, :controller => { :sessions => 'sessions'}, :skip => [:sessions, :registrations] do
    delete '/logout', :to => 'sessions#destroy', :as => :destroy_user_session
    get '/login', :to => 'sessions#new', :as => :new_user_session
    post '/login', :to => 'sessions#create', :as => :user_session
  end

  resources :users
end