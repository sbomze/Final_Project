class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.integer :zip_code
      t.string :address
      t.string :address_2
      t.string :city
      t.string :state_province
      t.string :country
      t.float :card_number
      t.string :expiration_date
      t.integer :security_code

      t.timestamps

    end
  end
end
