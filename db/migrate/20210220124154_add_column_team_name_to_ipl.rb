class AddColumnTeamNameToIpl < ActiveRecord::Migration
  def change
  	add_column :ipls, :team_name, :string
  end
end
