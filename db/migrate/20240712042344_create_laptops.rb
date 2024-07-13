class CreateLaptops < ActiveRecord::Migration[7.1]
  def change
    create_table :laptops do |t|
      t.string :lbrand
      t.string :lmodel

      t.timestamps
    end
  end
end
