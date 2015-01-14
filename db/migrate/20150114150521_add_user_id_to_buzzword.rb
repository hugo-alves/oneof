class AddUserIdToBuzzword < ActiveRecord::Migration
  def change
    add_column :buzzwords, :user_id, :integer
    add_index :buzzwords, :user_id
  end
end
