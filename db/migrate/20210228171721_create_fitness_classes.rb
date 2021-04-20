class CreateFitnessClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :fitness_classes do |t|
      t.string :image_url
      t.string :name
      t.string :offerdBy
      t.string :address
      t.datetime :hourAndDateAvailable
      t.decimal :price

      t.timestamps
    end
  end
end
