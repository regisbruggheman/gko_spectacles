Rails.application.routes.draw do
  namespace :admin do
    resources :sites do
      resources :spectacle_lists do
        resources :spectacles do
          collection do
            get :move
            get :selected
          end
        end
      end
      resources :spectacle_event_categories
      resources :spectacle_event_lists do
        resources :spectacle_events
      end
    end
  end 
  get 'spectacle_event_lists/:spectacle_event_list_id', 
    :to => 'spectacle_events#index', 
    :as => :spectacle_event_list
  get 'spectacle_lists/:spectacle_list_id/categories/:category_id', 
    :to => 'spectacles#index', 
    :as => :spectacle_list_category
  get 'spectacle_lists/:spectacle_list_id/tags/:sticker_id', 
    :to => 'spectacles#index', 
    :as => :spectacle_list_sticker
  get 'spectacle_lists/:spectacle_list_id', 
    :to => 'spectacles#index', 
    :as => :spectacle_list
  get 'spectacle_lists/:spectacle_list_id/*permalink.:format', 
    :to => "spectacles#show"
  get 'spectacle_lists/:spectacle_list_id/*permalink', 
    :to => "spectacles#show", 
    :as => :spectacle_list_spectacle
 
end