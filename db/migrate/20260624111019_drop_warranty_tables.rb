class DropWarrantyTables < ActiveRecord::Migration[8.1]
  def change
    drop_table :warranty_pdfs if table_exists?(:warranty_pdfs)
    drop_table :warranty_inquiries if table_exists?(:warranty_inquiries)
  end
end
