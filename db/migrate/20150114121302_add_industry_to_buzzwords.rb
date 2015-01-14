class AddIndustryToBuzzwords < ActiveRecord::Migration
  def change
    add_column :buzzwords, :industry, :string
  end
end
