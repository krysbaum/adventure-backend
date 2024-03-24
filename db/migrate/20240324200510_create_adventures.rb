class CreateAdventures < ActiveRecord::Migration[7.1]
  def change
    create_table :adventures do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.string :location
      t.integer :category

      t.timestamps
    end
  end
end
