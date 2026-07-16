class CreateLoginLogs < ActiveRecord::Migration[8.1]
  def change
    create_table :login_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :ip_address
      t.string :user_agent
      t.string :country
      t.string :province
      t.string :city
      t.datetime :login_at

      t.timestamps
    end
  end
end
