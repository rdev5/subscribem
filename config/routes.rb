require 'subscribem/constraints/subdomain_required'

Subscribem::Engine.routes.draw do
  root :to => 'dashboard#index'
  get '/sign_up', :to => 'accounts#new', :as => :sign_up
  post '/accounts', :to => 'accounts#create', :as => :accounts

  constraints(Subscribem::Constraints::SubdomainRequired) do
    scope :module => 'account' do
      root :to => 'dashboard#index'
    end
  end
end
