json.extract! phone_book_entry, :id, :phone_book_id, :name, :phone_office, :phone_mobile, :phone_other, :created_at, :updated_at
json.url phone_book_entry_url(phone_book_entry, format: :json)
