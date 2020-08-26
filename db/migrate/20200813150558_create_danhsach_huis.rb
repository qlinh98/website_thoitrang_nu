class CreateDanhsachHuis < ActiveRecord::Migration[6.0]
  def change
    create_table :danhsach_huis do |t|
      t.string :taphuuich
      t.string :dohuuich

      t.timestamps
    end
  end
end
