RedmineApp::Application.routes.draw do
  resource :kanban do
    put :sync,  on: :member
    resources :user_kanbans, :as => 'users'
    resource :user_kanbans, :as => 'my_requests'
    resources :assigned_kanbans, :as => 'assigned_to'
    resource :assigned_kanbans, :as => 'my_assigned', :only => [:show]
    resource :kanban_overviews, :as => 'overview', :only => [:show]
  end
  resources :kanban_issues
end
