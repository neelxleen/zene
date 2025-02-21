class AddContactnoToVisitors < ActiveRecord::Migration[8.0]
  def change
    add_column :visitors, :contact_no, :integer
    add_column :visitors, :remarks, :text


  end
end
