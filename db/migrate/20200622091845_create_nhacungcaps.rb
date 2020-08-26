class CreateNhacungcaps < ActiveRecord::Migration[6.0]
  def change
    create_table :nhacungcaps do |t|
      t.string :tenncc
      t.string :sdt
      t.string :diachi
      t.string :email

      t.timestamps
    end
  end
end
