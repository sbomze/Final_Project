class ChangeColumnCardNumberInUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.change :card_number, :string
    end
  end
end
