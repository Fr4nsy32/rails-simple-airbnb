class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_x_night
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
