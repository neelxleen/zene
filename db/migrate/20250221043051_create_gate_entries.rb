class CreateGateEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :gate_entries do |t|
      t.string :vehicle_number
      t.datetime :entry_time
      t.datetime :exit_time
      t.string :camera_snapshot

      t.timestamps
    end
  end
end
