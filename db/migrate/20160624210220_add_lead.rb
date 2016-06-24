class AddLead < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :nombres
      t.string :correo
      t.text :mensaje

      t.timestamps
    end
  end
end
