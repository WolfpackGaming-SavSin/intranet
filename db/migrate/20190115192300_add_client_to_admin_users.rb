class AddClientToAdminUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :admin_users, :client, foreign_key: true
  end
end
