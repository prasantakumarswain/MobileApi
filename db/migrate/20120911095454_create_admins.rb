class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :email
      t.string :encrypted_password,  :null => false
      t.string :password_salt,       :null => false
      t.string :persistence_token,   :null => false
      t.string :single_access_token, :null => false
      t.string :perishable_token,    :null => false
      t.integer:login_count,         :null => false, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
