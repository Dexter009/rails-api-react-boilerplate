# require 'api_constraints'
# add: `scope module: :v1, constraints: ApiConstraints.new(version: 1) do` to use versioning

Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      # add necessary resources here e.g:
      # resources :sessions, only: [:create, :destroy]
    end
  end

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server_error'
end
