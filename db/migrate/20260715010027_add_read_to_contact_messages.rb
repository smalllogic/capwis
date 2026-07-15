class AddReadToContactMessages < ActiveRecord::Migration[8.1]
  def change
    add_column :contact_messages, :read, :boolean, default: false
  end
end
