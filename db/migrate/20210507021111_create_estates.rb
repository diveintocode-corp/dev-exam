class CreateEstates < ActiveRecord::Migration[5.2]
  def change
    create_table :estates do |t|
      t.string :name
      t.text :rent
      t.string :address
      t.integer :years
      t.text :remarks

      t.timestamps
    end
  end
end
