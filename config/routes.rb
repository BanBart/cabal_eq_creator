Rails.application.routes.draw do

  get '/' => 'main#index', constraints: { subdomain: 'cabal' }

  scope module: :api, defaults: { format: 'json' }, constraints: { subdomain: 'api-cabal' } do 
    scope module: :v1, constraints: ApiConstraint.new(version: 1, default: :true) do 
      resources :weapons, only: [:index, :show]
    end
  end
end
