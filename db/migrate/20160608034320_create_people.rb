class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nombres
      t.string :apellidos
      t.date :fecha_nac
      t.date :fecha_fallecimiento
      t.boolean :obituario

      t.timestamps null: false
    end
  end
end
