class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :dob
      t.string :email
      t.integer :authorization_id, foreign_key: true
      t.integer :checkup_id, foreign_key: true

      t.timestamps
    end
  end
end
