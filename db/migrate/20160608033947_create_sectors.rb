class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :nombre
      t.integer :capacidad

      t.timestamps null: false
    end
  end
end
