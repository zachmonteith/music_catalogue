class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email, null: false
      t.text :password_digest, null: false
      t.text :session_token

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
    add_index :users, :session_token

  end
end
