class CreatePhoneBookEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_book_entries do |t|
      t.references :phone_book, foreign_key: true
      t.string :name
      t.string :telephones

      t.timestamps
    end
  end
end
