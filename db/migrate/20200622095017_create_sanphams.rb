class CreateSanphams < ActiveRecord::Migration[6.0]
  def change
    create_table :sanphams do |t|
      t.string :tensanpham
      t.text :mota
      t.references :loaisanpham, null: false, foreign_key: true
      t.references :thuonghieu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
