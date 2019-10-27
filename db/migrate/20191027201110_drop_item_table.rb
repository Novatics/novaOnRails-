class DropItemTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :items do |t|
      t.string :code
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
