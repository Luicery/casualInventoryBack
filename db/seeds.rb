# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Company.destroy_all
ctest = Company.create(email:"test@test.com", password:"test", address:"testdress", name:"TestCompany", phone:"+64109238109238")
ctest2 = Company.create(email:"test2@test2.com", password:"test", address:"testdress2", name:"TestCompany2", phone:"+6113523524")
Location.destroy_all
ltestsup = Location.create(address:"testsupplydress", phone:"52958452123401", manager:"Tester supplier Guy", is_supplier: true)
ltest = Location.create(address:"testdress", phone:"52958452123401", manager:"Tester Guy", is_supplier: false)
ltest2 = Location.create(address:"testdress2", phone:"12903845124", manager:"Tester Guy2", is_supplier: false)
Stock.destroy_all
stest = Stock.create
stestsup = Stock.create
stest2 = Stock.create
Item.destroy_all
itest = Item.create(amount:"1000", name:"Iron", restockPoint:"100", restockTo:"1000" lastSupplier:3, autoRestock:false)
itest1 = Item.create(amount:"10000", name:"Nickel", restockPoint:"1000", restockTo:"1200" lastSupplier:3, autoRestock:false)
itest2 = Item.create(amount:"2000", name:"Bronze", restockPoint:"200", restockTo:"1000" lastSupplier:3, autoRestock:true)
itest3 = Item.create(amount:"1500", name:"Gold", restockPoint:"300", restockTo:"1000" lastSupplier:3, autoRestock:false)
itest4 = Item.create(amount:"2500", name:"Silver", restockPoint:"400", restockTo:"1000" lastSupplier:3, autoRestock:true)
itest5 = Item.create(amount:"3000", name:"Copper", restockPoint:"500", restockTo:"1000" lastSupplier:3,autoRestock:false)
itest6 = Item.create(amount:"3500", name:"Tin", restockPoint:"600", restockTo:"1000" lastSupplier:3, autoRestock:true)
itestno = Item.create(amount:"500", name:"Aluminium", restockPoint:"0", restockTo:"1000" lastSupplier:3, autoRestock:false)
itest52 = Item.create(amount:"3000", name:"Copper", restockPoint:"500", restockTo:"1000" lastSupplier:3,autoRestock:false)
itest62 = Item.create(amount:"3500", name:"Tin", restockPoint:"600", restockTo:"1000" lastSupplier:3, autoRestock:true)



ctest.locations << ltest
ctest.locations << ltestsup
ltest.stock = stest
ltestsup.stock = stestsup
stest.items << itest << itest1 << itest2 << itest3 << itest4
stestsup.items << itest5 << itest6 << itestno
ctest2.locations << ltest2
ltest2.stock = stest2
stest2.items << itest52 << itest62
