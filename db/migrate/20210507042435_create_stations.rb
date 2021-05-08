class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :route
      t.string :nearest_station
      t.string :foot
      t.references :estate, foreign_key: true

      t.timestamps
    end
  end
end
