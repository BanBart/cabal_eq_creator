Rails.application.routes.draw do
	root to: 'page#home'

  scope module: :api, defaults: { format: 'json' }, constraints: { subdomain: 'api-cabal' } do 
    scope module: :v1, constraints: ApiConstraint.new(version: 1, default: :true) do 
      resources :weapons, only: [:index, :show]
    end
    match "*path", to: -> (env) { [404, {}, ['{"errors": [ {"message": "method not found", "status": "404"} ] }']] }, via: :all
  end
end
