class CreateChitietsizes < ActiveRecord::Migration[6.0]
  def change
    create_table :chitietsizes do |t|
      t.integer :soluongton
      t.references :chitietsanpham, null: false, foreign_key: true
      t.references :sizesanpham, null: true, foreign_key: true

      t.timestamps
    end
  end
end
