class CreateSecurities < ActiveRecord::Migration[6.0]
  def change
    create_table :securities do |t|
      t.string :security_type
      t.integer :value
      t.integer :beg_value
      t.text :description
      t.references :portfolio, null: false, foreign_key: true
      t.references :market, null: false, foreign_key: true

      t.timestamps
    end
  end
end
