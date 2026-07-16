class CreateHomeProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :home_products do |t|
      t.string :title
      t.string :link
      t.integer :position
      t.integer :row
      t.boolean :active

      t.timestamps
    end
  end
end
