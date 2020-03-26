class AddColumnStatusToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :status, :string
  end
end
