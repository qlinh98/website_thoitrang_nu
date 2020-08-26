class CreateChitiethoadonnhaps < ActiveRecord::Migration[6.0]
  def change
    create_table :chitiethoadonnhaps do |t|
      t.integer :soluongnhap
      t.decimal :dongia
      t.references :hoadonnhap, null: false, foreign_key: true
      t.references :chitietsanpham, null: false, foreign_key: true

      t.timestamps
    end
  end
end
