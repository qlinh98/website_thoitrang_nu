class CreateThuonghieus < ActiveRecord::Migration[6.0]
  def change
    create_table :thuonghieus do |t|
      t.string :tenthuonghieu
      t.string :hinhanh
      t.string :diachi
      t.string :email

      t.timestamps
    end
  end
end
