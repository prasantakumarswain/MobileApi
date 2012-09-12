class CreateDeviceInfos < ActiveRecord::Migration
  def change
    create_table :device_infos do |t|
      t.string :device_id
      t.string :device_name
      t.string :qr_code

      t.timestamps
    end
  end
end
