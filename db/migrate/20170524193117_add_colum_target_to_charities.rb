class AddColumTargetToCharities < ActiveRecord::Migration[5.0]

  def change
    add_column :charities, :target_url, :string
  end

end
