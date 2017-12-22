Rails.application.routes.draw do
  root to: redirect('/phone_books')
  resources :phone_books do
    member do
      get :import
      post :import
    end
  end
  resources :phone_book_entries
end
