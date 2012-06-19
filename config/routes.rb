RedmineApp::Application.routes.draw do
  resource :kanban, :member => {:sync => :put} do
    resources :user_kanbans, :as => 'users'
    resource :user_kanbans, :as => 'my-requests'
    resources :assigned_kanbans, :as => 'assigned-to'
    resource :assigned_kanbans, :as => 'my-assigned', :only => [:show]
    resource :kanban_overviews, :as => 'overview', :only => [:show]
  end
  resources :kanban_issues
end
