class AddTitleToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :title, :string
  end
end
