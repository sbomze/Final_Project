class ChangeColumnToNewFromTableName < ActiveRecord::Migration[5.0]

  change_table :charities do |t|
    t.change :rating, :float
  end

end
