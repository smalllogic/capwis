class CreateSiteConfigs < ActiveRecord::Migration[8.1]
  def change
    create_table :site_configs do |t|
      t.string :name
      t.string :meta_title
      t.string :meta_keywords
      t.string :meta_description
      t.string :phone
      t.string :email
      t.string :address
      t.string :copyright_year
      t.text :statistics_code

      t.timestamps
    end
  end
end
