Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :families
      put 'users/:id/:name' => "users#put_name"
      resources :users
      get 'lists/:family_id/:date' => "lists#show_by_date"
      resources :lists
      put 'house_works/:id/done' => "house_works#put_done"
      resources :house_works
      resources :tasks
    end
  end
end