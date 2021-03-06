Rails.application.routes.draw do

  get 'notas' => 'notas#index'

 

  get 'erro' => 'erro#index'

  resources :comentarios

  resources :posts


  get 'perfil' => 'usuarios#edit'

  post 'posts/:id/comentar' => 'comentarios#criar' 

  get 'posts'=> 'posts#show'

  get 'turmas/Index'

  get 'calendario/index'

  get 'calendario/ver'

  resources :contacts

  get 'login' => 'login#index' , as: :login_form

  post 'login/login', as: :login

  post 'login/logout', as: :logout

  resources :usuarios


  

  post 'contacts/new' => 'contacts#new'

resources :cadastros

root 'principal#index'
get 'principal/logout' => 'principal#logout'
get 'principal' => 'principal#index'
get 'login' => 'login#index' 
post 'cadastros' => 'usuarios#create'
post 'logar' => 'login#logar'
get 'tabela' => 'tabela#index'
get 'usuarios/:id' => 'usuarios#edit'

get 'elemento/:element' => 'tabela#elemento'


get  'turmas' => 'turmas#index'

  

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
