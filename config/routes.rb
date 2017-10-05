Rails.application.routes.draw do
  get 'personas/', to: 'personas#index', as: 'personas'


  get 'personas/eliminar'

  get 'personas/update'

  get 'personas/nuevo'

  get 'personas/crear'

  get 'personas/editar'
  get 'personas/:id', to: 'personas#mostrar', as: 'persona'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
