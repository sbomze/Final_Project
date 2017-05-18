class CreateCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :charities do |t|
      t.string :image_url
      t.string :name
      t.string :mission
      t.float :rating

      t.timestamps

    end
  end
end
