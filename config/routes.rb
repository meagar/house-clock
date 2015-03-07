Rails.application.routes.draw do
  root to: 'pages#index'

  get ':action.appcache', controller: 'manifests', format: 'appcache'
end
