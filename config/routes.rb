Rails.application.routes.draw do
   root to: 'pages#index'

  # LOGIN
   get '/login' => 'session#new'
   post '/login' => 'session#create'
   delete '/logout' => 'session#destroy'

  # Home Page (Search Products)
   get "/" => "pages#home"
  # About Page
   get "/about" => "pages#about"
  # Contact Page
  get "/contact" => "contact_us/contacts#new"

  # SIGN UP
   get '/suppliers/new' => 'suppliers#new'

  # Supplier Edit
   get '/suppliers/:id/edit' => 'suppliers#edit'
   patch '/suppliers/:id' => 'suppliers#update'

  # Supplier Show
   get '/suppliers/:id' => 'suppliers#show'

  # Products Index
   get '/products/:id/products' => 'products#index'

   # Product New
    get '/products/new' => 'products#new'
  # Product Show
   get '/products/:id' => 'products#show'

  # Product Edit
   get '/products/:id/edit' => 'products#edit'
   patch '/products/:id' => 'products#update'

  # Product Delete
   delete '/products/:id' => 'products#destroy'






  resources :suppliers, :products

  resources :contacts,
             controller: "contact_us/contacts",
             only:       [:new, :create]

end
