class PhoneBookEntry < ApplicationRecord
  belongs_to :phone_book

  validates :name, presence: true

  scope :search, -> (query_string) {
    query = "%#{query_string.downcase}%"
    where(
        'lower(name) LIKE ? OR lower(phone_office) LIKE ? OR lower(phone_mobile) LIKE ? OR lower(phone_other) LIKE ?',
        query, query, query, query
    )
  }
end
