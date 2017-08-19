# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.destroy_all

Department.create!([{
  name: "Marketing",
},
{
  name: "Sales",
},
{
  name: "Customer Success",
},
{
  name: "Product",
}])

p "Created #{Department.count} departments"
