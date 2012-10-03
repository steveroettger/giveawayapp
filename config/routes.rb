GiveawayApp::Application.routes.draw do
  root to: 'pages#main'
  match 'test', to: 'pages#test'
  resources :contestants
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
