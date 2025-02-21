class DropVisitors < ActiveRecord::Migration[8.0]
  def change
    drop_table :visitors

    drop_table :visits
    drop_table :gate_entries
     
  end
end
