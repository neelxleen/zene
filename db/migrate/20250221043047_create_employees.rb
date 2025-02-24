class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees, id: false do |t|
      t.string :force_id, primary_key: true
      t.string :rank
      t.string :name
      t.string :unit_hq
      t.string :contact_no
      t.string :personal_vehicle_type
      t.string :vehicle_no
      t.string :purpose_of_visit

      t.timestamps
    end
  end
end
