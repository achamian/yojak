ActionController::Routing::Routes.draw do |map|
  map.resources :projects do |product|
    product.resources :cards
    product.resources :card_statuses
  end
  
  map.resource :project_administration, :only => [:show]
  map.root :controller => "projects"
end
