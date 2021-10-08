class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.float :weigth
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
