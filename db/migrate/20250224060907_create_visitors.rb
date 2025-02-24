class CreateVisitors < ActiveRecord::Migration[8.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :occupation
      t.string :national_id
      t.string :contact_no
      t.string :personal_vehicle_type
      t.string :vehicle_no
      t.string :purpose_of_visit

      t.timestamps
    end
  end
end
