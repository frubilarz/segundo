Rails.application.routes.draw do

  root 'personas#index'


  get 'autos', to: 'autos#index', as: 'autos'
  get 'autos/nuevo', to: 'autos#nuevo'
  get 'autos/:id', to: 'autos#mostrar', as: 'auto'

  get 'personas/', to: 'personas#index', as: 'personas'
  get 'personas/nuevo', to: 'personas#nuevo', as: 'nueva_persona'
  post '/personas', to: 'personas#crear', as: 'crear_persona'
  put 'personas/:id', to: 'personas#update'
  patch 'personas/:id', to: 'personas#update'
  get 'personas/crear'

  get 'personas/:id', to: 'personas#mostrar', as: 'persona'
  get 'personas/:id/editar', to: 'personas#editar', as: 'editar_persona'
  delete 'personas/:id', to: 'personas#eliminar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
