class AddStripeCardTokenToDondathang < ActiveRecord::Migration[6.0]
  def change
    add_column :dondathangs, :card_token, :string
  end
end
