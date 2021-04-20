Rails.application.routes.draw do

  get 'orderclasses/index'

  get 'orderclasses/show'

 
  get 'orderclasses/new'

  get 'orderclasses/edit'

     resources :fitness_classes
       resources :fitness_class
 
  root 'static_pages#home'
    
  get 'fitness_classes/index'
  get 'fitness_classes/show'
  get 'fitness_classes/new'
  get 'fitness_classes/edit'
    get 'fitness_class/edit'
  
  resources :orders do 
    resources :orderclasses
  end

  
  get '/home' => 'static_pages#home'
  

  get '/about' => 'static_pages#about'
  get '/fitness_classes' => 'fitness_classes#index'
  
 
  get '/login' => 'user#login' 
  get '/logout' => 'user#logout'
  post '/search' => 'fitness_classes#search'
  
  #get '/category/:title' =>  'static_pages#category'
  
  
  
  
  devise_for :users do
    resources :orders
     
  end


  
  
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clear'
  get '/cart/:id' => 'cart#add'
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart/reduce/:id' => 'cart#reduce'
  get '/cart/increase/:id' => 'cart#increase'
  
  get '/orders/show/:id' => 'orders#show'
  
   get '/orderclasses/:id' => 'orderclasses#show'
  get '/checkout' => 'cart#createOrder'
   #get '/checkout' => 'orders#create'
 
 # post '/search' => 'fitness_classes#search'
  
get '/aboutSend/:id' => 'static_pages#aboutSend'
get '/aboutSend' => 'static_pages#aboutSend'
#get '/about/:id' => 'static_pages#about'
get '/fitness_classes/remove/:id' => 'fitness_classes#remove'
  
end
