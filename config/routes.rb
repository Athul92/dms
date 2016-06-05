Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: 'json' }  do
    namespace :web do
      get '/hello_world' => 'welcome#hello'
      post '/sign_up' => 'registrations#create'
      devise_scope :user do
        post '/sign_in' => 'sessions#create'
      end
    end
  end
end
