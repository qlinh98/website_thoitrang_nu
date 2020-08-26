class CreateLoaisanphams < ActiveRecord::Migration[6.0]
  def change
    create_table :loaisanphams do |t|
      t.string :tenloai
      t.references :danhmuc, null: false, foreign_key: true

      t.timestamps
    end
  end
end
