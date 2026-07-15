class CreateAboutCarousels < ActiveRecord::Migration[8.1]
  def change
    create_table :about_carousels do |t|
      t.string :title
      t.text :description
      t.string :link
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
