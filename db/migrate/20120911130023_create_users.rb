class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_salt
      t.string :password
      t.string :token

      t.timestamps
    end
  end
end
