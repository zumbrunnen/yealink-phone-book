json.extract! phone_book, :id, :title, :created_at, :updated_at
json.url phone_book_url(phone_book, format: :json)
