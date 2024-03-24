class AddDateToAdventures < ActiveRecord::Migration[7.1]
  def change
    add_column :adventures, :date, :date
  end
end
