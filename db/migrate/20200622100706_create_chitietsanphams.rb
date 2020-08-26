class CreateChitietsanphams < ActiveRecord::Migration[6.0]
  def change
    create_table :chitietsanphams do |t|
      t.decimal :giaban
      t.string :hinh1
      t.string :hinh2
      t.string :hinh3
      t.string :hinh4
      t.references :sanpham, null: false, foreign_key: true
      t.references :mausanpham, null: false, foreign_key: true

      t.timestamps
    end
  end
end
