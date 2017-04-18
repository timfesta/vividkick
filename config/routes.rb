Rails.application.routes.draw do
  
	get 'signup' => 'users#new'
	get 'profile' => 'users#show'
	resources :users

	get 'login'   => 'sessions#new'
	get 'logout'  => 'sessions#destroy'
	resources :sessions

	get 'topseller' => 'photos#top_templates'
	resources :photos

	resources :charges
	resources :purchases, only: [:show]
	resources :products 

	get 'templates' => 'statics#templates'
	get 'contact' => 'statics#contact'
	get 'about' => 'statics#about'
	get 'socialmedia' => 'statics#socialmedia'
  get 'tutorials' => 'statics#tutorials'
	resources :statics

	root 'statics#home'

end
