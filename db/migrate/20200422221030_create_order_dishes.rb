class CreateOrderDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_dishes do |t|
      t.belongs_to :order, null: false, foreign_key: true
      t.belongs_to :dish, null: false, foreign_key: true
      t.string :modifications

      t.timestamps
    end
  end
end
