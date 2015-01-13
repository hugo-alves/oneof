class CreateBuzzwords < ActiveRecord::Migration
  def change
    create_table :buzzwords do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
