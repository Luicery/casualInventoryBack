# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
ctest = Company.create(email:"test@test.com", password:"test", address:"testdress")
Location.destroy_all
ltest = Location.create(address:"testdress", phone:"52958452123401", manager:"Tester Guy")
Stock.destroy_all
stest = Stock.create
Item.destroy_all
itest = Item.create(amount:"1000", name:"Iron", restock:"100")

ctest.locations << ltest
ltest.stock = stest
stest.items << itest
