CryptographyBasics::Application.routes.draw do

  root "welcome#index"
  get "overview" => "welcome#overview"

  get "binary_number" => "binary_number#index"

  get "binary_number_exercises/1" => "binary_number_exercises#exercise1"
  post "binary_number_exercises/1" => "binary_number_exercises#check1"
  get "binary_number_exercises/2" => "binary_number_exercises#exercise2"
  post "binary_number_exercises/2" => "binary_number_exercises#check2"

  get "caesar_cipher" => "caesar_cipher#index"

  get "caesar_cipher_exercises/1" => "caesar_cipher_exercises#exercise1"
  post "caesar_cipher_exercises/1" => "caesar_cipher_exercises#check1"
  get "caesar_cipher_exercises/2" => "caesar_cipher_exercises#exercise2"
  post "caesar_cipher_exercises/2" => "caesar_cipher_exercises#check2"

  get "caesar_cipher_brute_force" => "caesar_cipher_brute_force#index"

  get "ascii_code" => "ascii_code#index"

  get "ascii_code_exercises/1" => "ascii_code_exercises#exercise1"
  post "ascii_code_exercises/1" => "ascii_code_exercises#check1"
  get "ascii_code_exercises/2" => "ascii_code_exercises#exercise2"
  post "ascii_code_exercises/2" => "ascii_code_exercises#check2"

  get "simple_substitution_cipher" => "simple_substitution_cipher#index"

  get "simple_substitution_cipher_exercises/1" => "simple_substitution_cipher_exercises#exercise1"
  post "simple_substitution_cipher_exercises/1" => "simple_substitution_cipher_exercises#check1"
  get "simple_substitution_cipher_exercises/2" => "simple_substitution_cipher_exercises#exercise2"
  post "simple_substitution_cipher_exercises/2" => "simple_substitution_cipher_exercises#check2"

  get "simple_substitution_cipher_brute_force" => "simple_substitution_cipher_brute_force#index"

  get "exclusive_or" => "exclusive_or#index"

  get "one_time_pad" => "one_time_pad#index"

  get "one_time_pad_exercises/1" => "one_time_pad_exercises#exercise1"
  post "one_time_pad_exercises/1" => "one_time_pad_exercises#check1"
  get "one_time_pad_exercises/2" => "one_time_pad_exercises#exercise2"
  post "one_time_pad_exercises/2" => "one_time_pad_exercises#check2"

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
