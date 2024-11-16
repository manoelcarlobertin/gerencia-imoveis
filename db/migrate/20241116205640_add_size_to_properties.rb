class AddSizeToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :size, :float
  end
end
