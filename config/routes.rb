Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :families
      resources :users
      get 'lists/:family_id/:date' => "lists#show_by_date"
      resources :lists
      resources :house_works
      resources :tasks
    end
  end
end