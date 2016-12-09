class CreateAdopts < ActiveRecord::Migration[5.0]
  def change
    create_table :adopts do |t|
      t.references :user, foreign_key: true
      t.integer :animal_id
      t.float :amount

      t.timestamps
    end
  end
end
