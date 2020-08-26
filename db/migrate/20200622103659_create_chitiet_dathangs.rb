class CreateChitietDathangs < ActiveRecord::Migration[6.0]
  def change
    create_table :chitiet_dathangs do |t|
      t.string :mausp
      t.string :size
      t.integer :soluong, default: 1
      t.decimal :dongia
      t.decimal :thanhtien
      t.references :chitietsanpham, null: false, foreign_key: true
      t.references :dondathang, null: true, foreign_key: true
      t.references :cart, null: true, foreign_key: true

      t.timestamps
    end
  end
end
