Rails.application.routes.draw do
  # namespace :api, defaults: { format: :json } do
  #   resources :users do
  #     resources :lists
  #   end
    # users#index  -> /api/users (GET)
    # users#create -> /api/users (POST)
    # users#update -> /api/users/user_id
    # lists#create -> /api/users/user_id/lists
    # lists#update -> /api/users/user_id/lists/list_id
    # lists#show
    # lists#index
    
    # resources :lists, only: [] do
    #   resources :items, only: [:create]
    # end
    # items#create -> /api/lists/list_id/items
    
    # resources :items, only: [:index, :destroy, :update, :show]
    # items#destroy -> /api/items/item_id
    # items#update  -> /api/items/item_id
    # items#show
    # items#index
  # end
  
  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :lists
    end
    
    resources :lists, only: [] do
      resources :items, only: [:index, :show, :create, :update]
    end
  end
# ------------------------------------------------------------------------------------  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
