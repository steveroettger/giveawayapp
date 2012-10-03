GiveawayApp::Application.routes.draw do
  root to: 'pages#main'
  match 'test', to: 'pages#test'
  resources :contestants do
    member { post :vote }
  end
  match '/contestants/auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
