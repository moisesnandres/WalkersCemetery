class CreateCemeteries < ActiveRecord::Migration
  def change
    create_table :cemeteries do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono

      t.timestamps null: false
    end
  end
end
