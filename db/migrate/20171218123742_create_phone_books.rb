class CreatePhoneBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :phone_books do |t|
      t.string :title

      t.timestamps
    end
  end
end
