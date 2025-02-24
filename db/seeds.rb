# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create some sample employees
Employee.create!(
  force_id: '123456789',
  rank: 'Officer',
  name: 'John Doe',
  unit_hq: 'HQ-1',
  contact_no: '123-456-7890',
  personal_vehicle_type: 'Car',
  vehicle_no: 'ABC-123',
  purpose_of_visit: 'Official Duty'
)

Employee.create!(
  force_id: '987654321',
  rank: 'Sergeant',
  name: 'Jane Smith',
  unit_hq: 'Unit-2',
  contact_no: '987-654-3210',
  personal_vehicle_type: 'Motorcycle',
  vehicle_no: 'XYZ-456',
  purpose_of_visit: 'Personal Use'
)

# Add more employees as needed

puts "Created sample employees"

