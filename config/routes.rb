Rails.application.routes.draw do
  root to: redirect('/phone_books')
  resources :phone_books
  resources :phone_book_entries
end
