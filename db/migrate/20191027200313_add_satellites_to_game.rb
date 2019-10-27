class AddSatellitesToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :satellites, :string, array: true, default: []
  end
end
