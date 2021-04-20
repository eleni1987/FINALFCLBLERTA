class CreateOrderclasses < ActiveRecord::Migration[5.0]
  def change
    create_table :orderclasses do |t|
      t.integer :fitness_class_id
      t.string :name
      t.string :adress
      t.datetime :hourAndDateAvailable
      t.integer :quantity
      t.decimal :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
