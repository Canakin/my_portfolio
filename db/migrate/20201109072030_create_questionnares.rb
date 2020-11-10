class CreateQuestionnares < ActiveRecord::Migration[6.0]
  def change
    create_table :questionnares do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
