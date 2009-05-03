ActionController::Routing::Routes.draw do |map|

  map.resource  :account, :controller => 'users'
  map.resources :users
  map.resource  :user_session
  map.root :controller => 'user_sessions', :action => 'new'
    
  map.namespace :admin do |admin| 
    admin.resources :users,     :active_scaffold => true 
  end  
  
  map.resources :gardens,       :active_scaffold => true 

        
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
