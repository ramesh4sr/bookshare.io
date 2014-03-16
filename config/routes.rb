Bookshare::Application.routes.draw do

  root 'books#index'

  resources :books, param: :isbn do
    member do
      post   'claim'
      delete 'claim' => 'books#unclaim'
    end
  end

  get '/faq' => 'pages#faq'
  
end
