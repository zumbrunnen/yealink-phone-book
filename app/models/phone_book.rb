class PhoneBook < ApplicationRecord
  has_many :phone_book_entries

  validates :title, presence: true, uniqueness: true
end
