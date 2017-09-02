Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  	get 'products/append'
  	resources :products

	root 'products#index'
	
end
