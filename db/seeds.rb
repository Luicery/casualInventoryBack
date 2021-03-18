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
ltestsup = Location.create(address:"testsupplydress", phone:"52958452123401", manager:"Tester supplier Guy", is_supplier: true)
ltest = Location.create(address:"testdress", phone:"52958452123401", manager:"Tester Guy", is_supplier: false)
Stock.destroy_all
stest = Stock.create
stestsup = Stock.create
Item.destroy_all
itest = Item.create(amount:"1000", name:"Iron", restock:"100")
itest2 = Item.create(amount:"2000", name:"Bronze", restock:"200")
itest3 = Item.create(amount:"1500", name:"Gold", restock:"300")
itest4 = Item.create(amount:"2500", name:"Silver", restock:"400")
itest5 = Item.create(amount:"3000", name:"Copper", restock:"500")
itest6 = Item.create(amount:"3500", name:"Tin", restock:"600")
itestno = Item.create(amount:"500", name:"Aluminium", restock:"0")



ctest.locations << ltest
ctest.locations << ltestsup
ltest.stock = stest
ltestsup.stock = stestsup
stest.items << itest << itest1 << itest2 << itest3 << itest4
stestsup.items << itest5 << itest6 << itestno
