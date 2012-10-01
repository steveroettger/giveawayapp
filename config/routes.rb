GiveawayApp::Application.routes.draw do
  root to: 'pages#main'
  resources :contestants
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
