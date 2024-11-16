class AddBathroomCountToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :bathroom_count, :integer
  end
end
