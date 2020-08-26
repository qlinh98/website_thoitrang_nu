class AddToDondathangs < ActiveRecord::Migration[6.0]
  def change
    add_column :dondathangs, :email, :text
  end
end
