class AddCollectedSatellitesToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :collected_satellites, :string, array: true, default: []
  end
end
