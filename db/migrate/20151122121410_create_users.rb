class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.integer :profile_type
      t.integer :profileable_id
      t.string  :profileable_type
      t.timestamps null: false
    end
 
    add_index :users, :profileable_id
  end
end
