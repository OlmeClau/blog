Blog::Application.routes.draw do
  resources :posts
  resources :comments  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get '/administrative' => 'posts#administrative',:as => 'administrative_post'
  get '/administrative/like_administrative/:id'=> 'posts#like_administrative',:as =>'like_post'
  get '/administrative/dislike/:id'=> 'posts#dislike',:as =>'dislike_post'
  get '/report'=> 'posts#report',:as =>'report_post'
  #get '/administrative/show_comment/:id'=> 'posts#show_comment',:as =>'comment_post'
  post '/posts/:id/comment'=>'comments#create', :as => 'post_comments'
  post '/posts/new' => 'history_post#create'
  #post '/administrative/:word' => 'posts/search'
  
  root 'posts#index'


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
