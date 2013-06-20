class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company_name
      t.string :street
      t.string :city
      t.string :postal_code
      t.string :phone
      t.string :email
      t.text :note

      t.timestamps
    end
  end
end
