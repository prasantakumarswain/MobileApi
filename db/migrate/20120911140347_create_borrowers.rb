class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.integer :user_id
      t.integer :device_info_id
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
