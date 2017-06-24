Myapp::Application.routes.draw do
  get 'profile/index'

  get 'details/:id', to:'profile#details',as: :profile_show

  resources :progresses
  resources :questions
  resources :pictures
  resources :products
  resources :contacts
  resources :categories
  resources :lilpros
  resources :tags
  resources :allies
  resources :sliders
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  resources :steps
  resources :benefits
  resources :whoares
  resources :testimonials
  resources :mensajes
  get "home/index"
  get "home/minor"
  #get "home/inicio"
  get "home/home"
  get "login",  to: "home#login"
  get "productos", to: "home#products"
  get "detail", to:"home#detail"
  get "aliarse", to: "home#aliarse"
  get 'products/:id/avance', to: 'products#avance', as: :avance
  get 'products/:id/alianza', to: 'products#create_alianza', as: :alianza
  get 'panel', to: 'products#panel', as: :panel
  get 'aprobar/:id', to: 'products#aprobar', as: :aprobar
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'home#inicio'
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
