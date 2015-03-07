Rails.application.routes.draw do
  root to: 'pages#index'

  mount RailsAppcache::Engine => '/'
end
