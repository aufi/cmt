class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :num
      t.references :customer
      t.references :service
      t.text :items

      t.timestamps
    end
    add_index :invoices, :customer_id
    add_index :invoices, :service_id
  end
end
