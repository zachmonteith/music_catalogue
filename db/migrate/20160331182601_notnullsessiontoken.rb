class Notnullsessiontoken < ActiveRecord::Migration
  def change
    change_column :users, :session_token, :text, null: false
  end
end
