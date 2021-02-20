class AddColumnRollToIpl < ActiveRecord::Migration
  def change
  	add_column :ipls, :roll, :string
  end
end
