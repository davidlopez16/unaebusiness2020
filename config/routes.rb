Rails.application.routes.draw do
	  
  
  resources :idiomas
  resources :capacidads
  resources :nivelacademicos
  resources :titulos
  resources :carreras
  	  resources :personas
	  resources :empresas
	  resources :postulantes do
	  		resources :exp_laborals
	  		resources :estudios
	  end
	  devise_for :users
  	  root 'welcome#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
