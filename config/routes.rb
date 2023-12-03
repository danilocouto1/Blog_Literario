Rails.application.routes.draw do
  root 'book#new'
  resources :book, controller: 'book', param: :uuid
end
