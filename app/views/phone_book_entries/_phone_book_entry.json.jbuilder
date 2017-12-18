json.extract! phone_book_entry, :id, :phone_book_id, :name, :telephones, :created_at, :updated_at
json.url phone_book_entry_url(phone_book_entry, format: :json)
