class CreateDanhmucs < ActiveRecord::Migration[6.0]
  def change
    create_table :danhmucs do |t|
      t.string :tendanhmuc

      t.timestamps
    end
  end
end
