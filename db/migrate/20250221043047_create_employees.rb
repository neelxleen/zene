class CreateEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :employees do |t|
      t.string :force_id
      t.string :rank
      t.string :name
      t.string :dept
      t.string :contact_no
      t.string :designation

      t.timestamps
    end
  end
end
