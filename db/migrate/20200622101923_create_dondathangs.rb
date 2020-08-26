class CreateDondathangs < ActiveRecord::Migration[6.0]
  def change
    create_table :dondathangs do |t|
      t.date :ngaydathang
      t.string :nguoinhanhang
      t.string :phuongthuctt
      t.string :diachigiao
      t.string :sdt
      t.string :ghichu
      t.string :tinhtrang
      t.decimal :tongtien
      t.references :giaohang, null: true, foreign_key: true
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
