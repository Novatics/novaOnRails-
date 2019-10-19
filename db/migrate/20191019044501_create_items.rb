class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :code
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
