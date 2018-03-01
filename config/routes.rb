Rails.application.routes.draw do
	devise_for :users

	# muestra todos los maches
	get 'matches/index', as: 'matches'

	# habilita la interfaz de chat
	get 'matches/chat', as: 'chat' do
		resources :messages, only: [:create]
	end

	# vista principal para hacer likes
	get 'search', to:'users#search'
	root 'users#search'
	# ---------------------------
	
	# para guardar los likes
	resources :interactions, only: [:create]

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
