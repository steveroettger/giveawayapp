GiveawayApp::Application.routes.draw do
  root to: 'pages#main'
  resources :contestants
end
