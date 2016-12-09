class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.string :location
      t.string :image
      t.string :gender

      t.timestamps
    end
  end
end
