Rails.application.routes.draw do
  get 'messages/create'

	get 'matches/index', as: 'matches'
	
	get 'matches/chat', as: 'chat' do
		resources :messages, only: [:create]
	end

	# resources :matches, only: :create do
	# 	resources :messages, only: [:create]
	# end


  get 'interactions/create'

	devise_for :users
	get 'search', to:'users#search'
	root 'users#search'
	
	resources :interactions, only: [:create]

	resources :histories
	# root "histories#index"
	resources :users
	
	
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
