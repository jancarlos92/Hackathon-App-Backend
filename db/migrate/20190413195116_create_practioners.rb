class CreatePractioners < ActiveRecord::Migration[5.2]
  def change
    create_table :practioners do |t|
      t.string :name
      t.string :company
      t.integer :authorization_id, foreign_key: true

      t.timestamps
    end
  end
end
