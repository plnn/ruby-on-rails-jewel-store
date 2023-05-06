Jewelstore::Application.routes.draw do
  

  get "commands_admin/index"

  get "commands_admin/destroy"

  get "commands_admin/show"

  get "commands_admin/new"

  get "commands_admin/create"

 delete "commands/destroy"
  get "users/new"
get "sessions/new"

resources:commands_admin
  resources :orders
resources:userproducts
  resources :line_items
 resources :users
 resources:commands
  resources :carts
resources:sessions 
get "userproducts/index"

  get "userproducts/show"
  get "store/index"
get "sessions/new"
#get "commands/index"
#post "commands/create"
  resources :products do
      get :who_bought, :on => :member
  end
  
  resources :commands do
    member do
        delete :destroy
    end
end
  
 get 'admin' => 'admin#index'
  #controller :sessions do
   # get 'login' => :new
    #post 'login' => :create
    #delete 'logout' => :destroy
  #end
controller :sessions do
 get 'login' => :new
 post 'login' => :create
 get 'logout' => :destroy
end
  
  
 
  resources :store do
      get "news"
      get "contact"
      get "questions"
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   #root :to => 'welcome#index'
  root :to => 'store#index', :as => 'store' 
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end