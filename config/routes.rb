Rails.application.routes.draw do
  resources :user_locations
  resources :user_affiliations
  resources :locations
  resources :affiliations
  resources :users do
	collection do
		get :import
		post :csv_import
		get :datatable_view
	end
  end

  root 'users#import'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
