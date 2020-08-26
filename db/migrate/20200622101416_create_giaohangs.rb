class CreateGiaohangs < ActiveRecord::Migration[6.0]
  def change
    create_table :giaohangs do |t|
      t.date :ngaygiao
      t.boolean :tinhtrang
      t.string :ghichu

      t.timestamps
    end
  end
end
