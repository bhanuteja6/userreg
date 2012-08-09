Xplanner::Application.routes.draw do

 match "/auth/:provider/callback" => "sessions#create"
 match "/signout" => "sessions#destroy", :as => :signout
 
  get "sessions/create"
  get "sessions/destroy"

  resources :projects do
	 resources :iterations do
		resources :usdemos do
			 resources :tasks
		end
	 end
  end

  root :to => 'sessions#destroy'
end
