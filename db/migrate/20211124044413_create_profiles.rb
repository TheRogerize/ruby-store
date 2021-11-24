class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :phone_number
      t.string :gender
      t.string :address_line_1
      t.string :address_line_2
      t.string :zip_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
