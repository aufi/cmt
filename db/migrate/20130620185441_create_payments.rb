class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :name
      t.references :customer
      t.references :service
      t.float :amount
      t.text :data
      t.integer :ref

      t.timestamps
    end
    add_index :payments, :customer_id
    add_index :payments, :service_id
  end
end
