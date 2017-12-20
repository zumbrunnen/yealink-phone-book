class PhoneBookEntry < ApplicationRecord
  belongs_to :phone_book

  before_save :cleanup_phone_numbers

  validates :name, presence: true, uniqueness: { scope: :phone_book_id }
  validates :phone_office, :phone_mobile, :phone_other, format: { with: /\A\+?[\d\s]+\z/, message: :invalid_phone_number_format }, allow_blank: true
  validate :has_at_least_one_phone_number

  scope :search, -> (query_string) {
    query = "%#{query_string.downcase}%"
    where(
        'lower(name) LIKE ? OR lower(phone_office) LIKE ? OR lower(phone_mobile) LIKE ? OR lower(phone_other) LIKE ?',
        query, query, query, query
    )
  }

  private

  def has_at_least_one_phone_number
    unless [phone_office, phone_mobile, phone_other].map(&:present?).any?
      errors.add(:base, :has_at_least_one_phone_number_required)
    end
  end

  def cleanup_phone_numbers
    self.phone_office.delete!(' ') if self.phone_office.present?
    self.phone_mobile.delete!(' ') if self.phone_mobile.present?
    self.phone_other.delete!(' ') if self.phone_other.present?
  end
end
