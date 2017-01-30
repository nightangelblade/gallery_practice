Rails.application.routes.draw do
	resources :images
	get '/', to: 'images#index'
end
