class AddParamsStatusTransactionIdPurchasedAtToDondathangs < ActiveRecord::Migration[6.0]
  def change
    add_column :dondathangs, :notification_params, :text
    add_column :dondathangs, :status, :string
    add_column :dondathangs, :transaction_id, :string
    add_column :dondathangs, :purchased_at, :datetime
  end
end
