class CreateAuthorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :authorizations do |t|
      t.integer :practioner_id, foreign_key: true
      t.integer :user_id, foreign_key: true
      t.string :status, :default => 'pending'
    end
  end
end
