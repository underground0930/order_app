class CreateOrderUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :order_units do |t|

      t.timestamps
    end
  end
end
