class CreateSizesanphams < ActiveRecord::Migration[6.0]
  def change
    create_table :sizesanphams do |t|
      t.string :tensize

      t.timestamps
    end
  end
end
