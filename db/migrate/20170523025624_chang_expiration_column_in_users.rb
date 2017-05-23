class ChangExpirationColumnInUsers < ActiveRecord::Migration[5.0]

  def change
    remove_column :users, :expiration_date
    add_column :users, :exp_month_num, :integer
    add_column :users, :exp_month_name, :string
    add_column :users, :exp_year, :integer
  end

end
