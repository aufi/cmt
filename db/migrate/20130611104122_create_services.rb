class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.date :paid_to
      t.float :price
      t.text :note
      t.references :customer

      t.timestamps
    end
    add_index :services, :customer_id
  end
end
