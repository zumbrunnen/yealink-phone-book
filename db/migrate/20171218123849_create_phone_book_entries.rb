class CreatePhoneBookEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_book_entries do |t|
      t.references :phone_book, foreign_key: true
      t.string :name
      t.string :phone_office
      t.string :phone_mobile
      t.string :phone_other

      t.timestamps
    end
  end
end
