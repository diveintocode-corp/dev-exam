class CreateTransportations < ActiveRecord::Migration[5.2]
  def change
    create_table :transportations do |t|
      t.string :line_name
      t.string :station_name
      t.integer :walking_distance

      t.timestamps
    end
  end
end
