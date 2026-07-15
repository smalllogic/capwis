class AddMetaFieldsToTables < ActiveRecord::Migration[8.1]
  def change
    %i[categories skus posts].each do |table|
      add_column table, :meta_title, :string
      add_column table, :meta_description, :text
      add_column table, :meta_keywords, :string
    end
  end
end
