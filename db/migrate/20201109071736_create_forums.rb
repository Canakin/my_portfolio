class CreateForums < ActiveRecord::Migration[6.0]
  def change
    create_table :forums do |t|
      t.string :name
      t.date :creation_date

      t.timestamps
    end
  end
end
