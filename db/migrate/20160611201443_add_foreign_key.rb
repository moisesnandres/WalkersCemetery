class AddForeignKey < ActiveRecord::Migration
  def change
  	add_reference :people, :sector, index: true, foreign_key: true
  end
end
