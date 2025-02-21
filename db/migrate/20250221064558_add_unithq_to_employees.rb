class AddUnithqToEmployees < ActiveRecord::Migration[8.0]
  def change
    add_column :employees, :unithq, :string
    add_column :employees, :personal_vehicle_type, :string
    add_column :employees, :vehicle_no , :string
    add_column :employees, :purpose_of_visit, :string
  
  end
end
