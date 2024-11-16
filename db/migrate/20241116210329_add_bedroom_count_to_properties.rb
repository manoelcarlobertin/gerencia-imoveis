class AddBedroomCountToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :bedroom_count, :integer
  end
end
