Rails.application.routes.draw do
  
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  root 'static_pages#home'
  match '/new', to: 'game#new', via: 'get'
  match '/enter', to: 'game#existing', via: 'get'

end
