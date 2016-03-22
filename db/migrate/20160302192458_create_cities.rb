class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :population
      t.string :economy

      t.timestamps null: false
    end
  end
end
