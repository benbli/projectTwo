class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :table, index: true, foreign_key: true
      t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
