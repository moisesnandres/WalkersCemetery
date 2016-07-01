class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombres
      t.string :correo
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
