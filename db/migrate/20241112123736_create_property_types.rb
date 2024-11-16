class CreatePropertyTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :property_types do |t|
      t.string :name, limit: 50, null: false

      t.timestamps
    end
  end
end
