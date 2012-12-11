FinalProject::Application.routes.draw do
  root :to => 'home#index'

  #photos
  post '/request/:id' => 'providers#join_patient_request', :as => :request
  delete '/request/:id' => 'providers#destroy_patient_request', :as => :request

  #patient paths
  get '/patient_session' => 'patient_session#new'
  post '/patient_session' => 'patient_session#create'
  get 'patient_dashboard' => 'dashboards#index_patient'
  match '/patient/join/:id' => 'patients#join', :as => :join
  get '/patient_doctorlist' => 'patients#show_doctors'
  delete '/patient_doctorlist/:id' => 'patients#delete_doctor', :as => :delete_doctor
  #add a photo
  get '/add_patient_photo' => 'patients#add_photo'
  post '/add_patient_photo' => 'patients#create_photo'

  #provider paths
  get '/provider_session' => 'provider_session#new'
  post '/provider_session' => 'provider_session#create'
  get '/provider_dashboard' => 'dashboards#index_provider'
  get '/patient_requests' => 'providers#patient_requests'  #AJAX - Create a relationship between doctor and patient
  get '/provider_patientlist' => 'providers#show_patients'
  delete '/provider_patientlist/:id' => 'providers#delete_patient', :as => :delete_patient

  #shared paths
  get '/logout' => 'patient_session#destroy'
  get '/doctor_data' => 'dashboards#doctor_data' #AJAX
  # get '/messages' =>






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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
