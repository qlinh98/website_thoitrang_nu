class CreateMausanphams < ActiveRecord::Migration[6.0]
  def change
    create_table :mausanphams do |t|
      t.string :tenmau
      t.string :mamau

      t.timestamps
    end
  end
end