class CreateVisits < ActiveRecord::Migration[8.0]
  def change
    create_table :visits do |t|
      t.references :visitor, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true
      t.text :purpose_of_visit
      t.datetime :time_in
      t.datetime :time_out
      t.string :gate_pass_type
      t.text :notes

      t.timestamps
    end
  end
end
