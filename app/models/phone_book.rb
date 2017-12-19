class PhoneBook < ApplicationRecord
  has_many :phone_book_entries

  validates :title, presence: true, uniqueness: true, format: { with: /\A[a-z\s]+\z/i }
end
