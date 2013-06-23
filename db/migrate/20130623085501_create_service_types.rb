class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :name
      t.float :price
      t.boolean :repeating
      t.integer :ord

      t.timestamps
    end
  end
end
