class CreateIpls < ActiveRecord::Migration
  def change
    create_table :ipls do |t|
      t.string :player_name
      t.string :player_country

      t.timestamps null: false
    end
  end
end
