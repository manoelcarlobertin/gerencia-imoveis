class AddPropertySituationToProperties < ActiveRecord::Migration[7.2]
  def change
    add_reference :properties, :property_situation, null: false, foreign_key: true
  end
end
