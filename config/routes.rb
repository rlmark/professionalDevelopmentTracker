Rails.application.routes.draw do

  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  # Home Route
  get '/', to: 'home#index', as: :root

  # Goal Routes
  get 'goal',          to: 'goals#index',      as: :goals
  get 'goals/new',      to: 'goals#new',        as: :new_goal
  post 'goals',         to: 'goals#create'
  get 'goal/:id',       to: 'goals#show',       as: :goal
  patch 'goal/:id',     to: 'goals#update'
  delete 'goal/:id',    to: 'goals#destroy'
  get 'goal/:id/edit',  to: 'goals#edit',       as: :edit_goal
  
  # Subtask Routes
  get 'subtask',           to: 'subtasks#index',      as: :subtasks
  get 'subtasks/new',      to: 'subtasks#new',        as: :new_subtask
  post 'subtasks',         to: 'subtasks#create'
  get 'subtask/:id',       to: 'subtasks#show',       as: :subtask
  patch 'subtask/:id',     to: 'subtasks#update'
  delete 'subtask/:id',    to: 'subtasks#destroy'
  get 'subtask/:id/edit',  to: 'subtasks#edit',       as: :edit_subtask
  
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
