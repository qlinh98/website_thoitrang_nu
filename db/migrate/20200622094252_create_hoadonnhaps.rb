class CreateHoadonnhaps < ActiveRecord::Migration[6.0]
  def change
    create_table :hoadonnhaps do |t|
      t.date :ngaynhap
      t.decimal :tongtien
      t.references :nhacungcap, null: false, foreign_key: true

      t.timestamps
    end
  end
end
