class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.text :description
      t.integer :index_value
      t.float :ytd_return

      t.timestamps
    end
  end
end
