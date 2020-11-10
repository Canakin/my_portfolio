class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.integer :value
      t.date :settlement_date
      t.integer :settlement_value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
