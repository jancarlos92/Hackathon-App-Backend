class CreateCheckups < ActiveRecord::Migration[5.2]
  def change
    create_table :checkups do |t|
      t.references :practioner, foreign_key: true
      t.references :user, foreign_key: true
      t.string :diagnosis
      t.string :treatment
      t.timestamps
    end
  end
end
