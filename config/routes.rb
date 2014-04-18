Rails.application.routes.draw do
  resources :games
  root 'static_pages#home'
  match '/search',		to: 'games#search',				via: 'get'
  match '/new',       to: 'games#new',          via: 'get'
  match '/enter',     to: 'games#existing',     via: 'get'
  match '/help',      to: 'static_pages#help',  via: 'get'
  match '/about',     to: 'static_pages#about', via: 'get'
end
