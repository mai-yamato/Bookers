Rails.application.routes.draw do

  get 'books/books'

  resources :books
root to: 'books#start'



 
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
