class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.float :amount

      t.timestamps
    end
  end
end
