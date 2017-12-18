class PhoneBookEntry < ApplicationRecord
  belongs_to :phone_book

  validates :name, presence: true
end
