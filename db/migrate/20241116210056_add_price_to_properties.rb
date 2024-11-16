class AddPriceToProperties < ActiveRecord::Migration[7.2]
  def change
    add_monetize :properties, :price
    add_monetize :properties,
                 :condominium_fee,
                 amount: { null: true, default: nil },
                 currency: { null: true, default: nil }
    add_monetize :properties,
                 :tax,
                 amount: { null: true, default: nil },
                 currency: { null: true, default: nil }
  end
end
