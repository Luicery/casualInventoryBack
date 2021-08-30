# company testing seeds 8 is enough i think my little ecosystem
Company.destroy_all
ctest1 = Company.create(email:"test@test.com", password:"test", address:"84 blanket place", name:"origin", phone:"+645833269305")
ctest2 = Company.create(email:"test2@test.com", password:"test", address:"21 jump street", name:"betacomp", phone:"+618408504031")
ctest3 = Company.create(email:"test3@test.com", password:"test", address:"61 place place", name:"th3stooges", phone:"+615555555555")
ctest4 = Company.create(email:"test4@test.com", password:"test", address:"4 balon street", name:"warehousing of warehouses", phone:"+619474920406")
ctest5 = Company.create(email:"test5@test.com", password:"test", address:"161 treehouse bay", name:"maker of things that make things", phone:"+618574930685")
ctest6 = Company.create(email:"test6@test.com", password:"test", address:"457 apartment road", name:"just a little company", phone:"+611234567890")
ctest7 = Company.create(email:"capstest7@test.com", password:"test", address:"94 bigger place", name:"just a bigger company", phone:"+610987654321")
ctest8 = Company.create(email:"test8@test.com", password:"test", address:"51 lasting avenue", name:"the last company", phone:"+610987664752")
# location testing seeds 3 for each should be enough
Location.destroy_all
ltest1 = Location.create(address:"864 patterson fork road", phone:"52958452123401", manager:"johnathon", is_supplier: true)
ltest2 = Location.create(address:"59 maccarthy street", phone:"52958452123401", manager:"arthur livingston", is_supplier: false)
ltest3 = Location.create(address:"18 philips avenue", phone:"12903845124", manager:"kelam", is_supplier: false)
ltest4 = Location.create(address:"152 chapel road", phone:"52958452123401", manager:"ape man", is_supplier: true)
ltest5 = Location.create(address:"62 screwdon crescent", phone:"52958452123401", manager:"monkey dude", is_supplier: false)
ltest6 = Location.create(address:"89 curtain street", phone:"12903845124", manager:"toilet brush", is_supplier: true)
ltest7 = Location.create(address:"195 paltes road", phone:"52958452123401", manager:"actual poop", is_supplier: false)
ltest8 = Location.create(address:"59 boxton road", phone:"12903845124", manager:"controller controller", is_supplier: false)
ltest9 = Location.create(address:"95 townhouse place", phone:"52958452123401", manager:"ghost man", is_supplier: false)
ltest10 = Location.create(address:"293/18 wilkers road", phone:"12903845124", manager:"ghostman wife", is_supplier: false)
ltest11 = Location.create(address:"193 jonae street", phone:"52958452123401", manager:"ghostman kid", is_supplier: true)
ltest12 = Location.create(address:"924 big place place", phone:"12903845124", manager:"timmy", is_supplier: false)
ltest13 = Location.create(address:"2 tile road", phone:"52958452123401", manager:"buckarooni", is_supplier: true)
ltest14 = Location.create(address:"91 framin place", phone:"52958452123401", manager:"aralekmffsjsef", is_supplier: false)
ltest15 = Location.create(address:"59 doyle avenue", phone:"12903845124", manager:"unpronounable", is_supplier: false)
ltest16 = Location.create(address:"153 macca road", phone:"52958452123401", manager:"guy weird", is_supplier: true)
ltest17 = Location.create(address:"163 arthan place", phone:"52958452123401", manager:"s0m3th1ng wr0ng", is_supplier: true)
ltest18 = Location.create(address:"296 ajen road", phone:"12903845124", manager:"firstname lastname", is_supplier: true)
ltest19 = Location.create(address:"93 yale avenue", phone:"52958452123401", manager:"surname firstname", is_supplier: false)
ltest20 = Location.create(address:"31 alep place", phone:"12903845124", manager:"alexander (the great) manager", is_supplier: true)
ltest21 = Location.create(address:"61 jekam crescent", phone:"52958452123401", manager:"ivan (the terrible and me) manager", is_supplier: false)
ltest22 = Location.create(address:"903 hakel road", phone:"12903845124", manager:"winston churchill", is_supplier: false)
ltest23 = Location.create(address:"195 falep place", phone:"52958452123401", manager:"abrahamical lincolny", is_supplier: true)
ltest24 = Location.create(address:"186 stackton avenue", phone:"12903845124", manager:"eggsbenedict cucumberpacked", is_supplier: false)
# item testing seeds done every location should have 5 items done with some good ol looping
Item.destroy_all
itest1 = Item.create(amount:1573, price:73, name:"oofltqinli", restockPoint:817, restockTo:1419, lastSupplier:0, autoRestock: false)
itest2 = Item.create(amount:1809, price:74, name:"seoyxnbztc", restockPoint:656, restockTo:1209, lastSupplier:0, autoRestock: true)
itest3 = Item.create(amount:1261, price:63, name:"tztkaaovwo", restockPoint:720, restockTo:1670, lastSupplier:0, autoRestock: true)
itest4 = Item.create(amount:1316, price:59, name:"xscqkydpkl", restockPoint:461, restockTo:1408, lastSupplier:0, autoRestock: false)
itest5 = Item.create(amount:1845, price:60, name:"xzxnxbwcbm", restockPoint:786, restockTo:1998, lastSupplier:0, autoRestock: false)
itest6 = Item.create(amount:1183, price:65, name:"lrpdihrikb", restockPoint:791, restockTo:1334, lastSupplier:0, autoRestock: true)
itest7 = Item.create(amount:1421, price:56, name:"xqkucwxgvo", restockPoint:816, restockTo:1427, lastSupplier:0, autoRestock: true)
itest8 = Item.create(amount:1767, price:60, name:"wynffoxozl", restockPoint:444, restockTo:2140, lastSupplier:0, autoRestock: true)
itest9 = Item.create(amount:1345, price:61, name:"glipgnrfxs", restockPoint:531, restockTo:1351, lastSupplier:0, autoRestock: true)
itest10 = Item.create(amount:1224, price:85, name:"drtflsrtgn", restockPoint:804, restockTo:1788, lastSupplier:0, autoRestock: true)
itest11 = Item.create(amount:1544, price:30, name:"wvseyagepe", restockPoint:754, restockTo:1236, lastSupplier:0, autoRestock: false)
itest12 = Item.create(amount:1292, price:71, name:"qudeyzrppw", restockPoint:481, restockTo:1618, lastSupplier:0, autoRestock: true)
itest13 = Item.create(amount:1426, price:76, name:"inapsrxcga", restockPoint:554, restockTo:1922, lastSupplier:0, autoRestock: false)
itest14 = Item.create(amount:1472, price:47, name:"fxzildremz", restockPoint:684, restockTo:2026, lastSupplier:0, autoRestock: true)
itest15 = Item.create(amount:1224, price:85, name:"wtaaejrhrt", restockPoint:530, restockTo:1936, lastSupplier:0, autoRestock: true)
itest16 = Item.create(amount:1415, price:34, name:"gtxhvngxqn", restockPoint:545, restockTo:2093, lastSupplier:0, autoRestock: false)
itest17 = Item.create(amount:1704, price:75, name:"xqnjkezcuy", restockPoint:885, restockTo:1902, lastSupplier:0, autoRestock: false)
itest18 = Item.create(amount:1118, price:56, name:"gccskagewo", restockPoint:845, restockTo:1822, lastSupplier:0, autoRestock: true)
itest19 = Item.create(amount:1314, price:90, name:"wdeqrsricr", restockPoint:579, restockTo:1866, lastSupplier:0, autoRestock: false)
itest20 = Item.create(amount:1353, price:71, name:"rsaemdjcek", restockPoint:881, restockTo:1926, lastSupplier:0, autoRestock: true)
itest21 = Item.create(amount:1803, price:60, name:"aalfzodjdo", restockPoint:467, restockTo:2030, lastSupplier:0, autoRestock: false)
itest22 = Item.create(amount:1058, price:23, name:"umxinltbkd", restockPoint:593, restockTo:1520, lastSupplier:0, autoRestock: false)
itest23 = Item.create(amount:1015, price:19, name:"emwjcfxcbf", restockPoint:493, restockTo:1352, lastSupplier:0, autoRestock: true)
itest24 = Item.create(amount:1560, price:68, name:"jkvgqwtvst", restockPoint:716, restockTo:1887, lastSupplier:0, autoRestock: true)
itest25 = Item.create(amount:1818, price:72, name:"mkybrilrqg", restockPoint:593, restockTo:1585, lastSupplier:0, autoRestock: true)
itest26 = Item.create(amount:1397, price:57, name:"ldfgjxfrqo", restockPoint:409, restockTo:1874, lastSupplier:0, autoRestock: false)
itest27 = Item.create(amount:1844, price:19, name:"ljhmuvqvpo", restockPoint:646, restockTo:1896, lastSupplier:0, autoRestock: true)
itest28 = Item.create(amount:1934, price:33, name:"klmsfjeiik", restockPoint:635, restockTo:1581, lastSupplier:0, autoRestock: true)
itest29 = Item.create(amount:1639, price:87, name:"ynnvxxnvkr", restockPoint:799, restockTo:1350, lastSupplier:0, autoRestock: true)
itest30 = Item.create(amount:1935, price:25, name:"uykyesvesb", restockPoint:468, restockTo:2023, lastSupplier:0, autoRestock: false)
itest31 = Item.create(amount:1914, price:82, name:"rcfvufbkow", restockPoint:411, restockTo:1271, lastSupplier:0, autoRestock: true)
itest32 = Item.create(amount:1235, price:17, name:"auyvnikbhf", restockPoint:749, restockTo:1240, lastSupplier:0, autoRestock: true)
itest33 = Item.create(amount:1729, price:85, name:"eswwnkznov", restockPoint:819, restockTo:1849, lastSupplier:0, autoRestock: false)
itest34 = Item.create(amount:1612, price:70, name:"bhpfahlhax", restockPoint:848, restockTo:1837, lastSupplier:0, autoRestock: false)
itest35 = Item.create(amount:1247, price:83, name:"eowynoytxu", restockPoint:517, restockTo:1886, lastSupplier:0, autoRestock: false)
itest36 = Item.create(amount:1839, price:56, name:"fivuebcead", restockPoint:742, restockTo:2160, lastSupplier:0, autoRestock: false)
itest37 = Item.create(amount:1454, price:53, name:"izlufeuyky", restockPoint:817, restockTo:1446, lastSupplier:0, autoRestock: true)
itest38 = Item.create(amount:1118, price:76, name:"pwbppogpjo", restockPoint:742, restockTo:1433, lastSupplier:0, autoRestock: true)
itest39 = Item.create(amount:1566, price:35, name:"ukgpcciglp", restockPoint:673, restockTo:1921, lastSupplier:0, autoRestock: true)
itest40 = Item.create(amount:1482, price:85, name:"zelfhtibtr", restockPoint:695, restockTo:1610, lastSupplier:0, autoRestock: true)
itest41 = Item.create(amount:1854, price:50, name:"chmrwanpvr", restockPoint:875, restockTo:1703, lastSupplier:0, autoRestock: false)
itest42 = Item.create(amount:1698, price:71, name:"brutbwhklw", restockPoint:644, restockTo:1821, lastSupplier:0, autoRestock: false)
itest43 = Item.create(amount:1368, price:45, name:"ojyziajjgl", restockPoint:470, restockTo:1296, lastSupplier:0, autoRestock: false)
itest44 = Item.create(amount:1609, price:84, name:"kupiuuohrm", restockPoint:454, restockTo:1814, lastSupplier:0, autoRestock: true)
itest45 = Item.create(amount:1960, price:18, name:"cmqxpmlrbl", restockPoint:802, restockTo:2188, lastSupplier:0, autoRestock: true)
itest46 = Item.create(amount:1586, price:39, name:"dotalcxyfm", restockPoint:479, restockTo:1843, lastSupplier:0, autoRestock: true)
itest47 = Item.create(amount:1686, price:90, name:"tvbxdnjdwd", restockPoint:468, restockTo:1562, lastSupplier:0, autoRestock: true)
itest48 = Item.create(amount:1871, price:63, name:"xufjpdacfa", restockPoint:624, restockTo:2000, lastSupplier:0, autoRestock: true)
itest49 = Item.create(amount:1936, price:29, name:"krzazpfuia", restockPoint:497, restockTo:1550, lastSupplier:0, autoRestock: false)
itest50 = Item.create(amount:1737, price:44, name:"wdpacowriq", restockPoint:886, restockTo:1806, lastSupplier:0, autoRestock: true)
itest51 = Item.create(amount:1815, price:87, name:"usxvsecafd", restockPoint:852, restockTo:1696, lastSupplier:0, autoRestock: false)
itest52 = Item.create(amount:1657, price:64, name:"nhmnllmyfz", restockPoint:746, restockTo:1208, lastSupplier:0, autoRestock: true)
itest53 = Item.create(amount:1903, price:33, name:"kngmwtcyxg", restockPoint:748, restockTo:1533, lastSupplier:0, autoRestock: true)
itest54 = Item.create(amount:1750, price:72, name:"yeskvyikcu", restockPoint:611, restockTo:1587, lastSupplier:0, autoRestock: false)
itest55 = Item.create(amount:1012, price:59, name:"tuakqsshfw", restockPoint:729, restockTo:1591, lastSupplier:0, autoRestock: false)
itest56 = Item.create(amount:1850, price:73, name:"nppfjtitfx", restockPoint:837, restockTo:1523, lastSupplier:0, autoRestock: true)
itest57 = Item.create(amount:1197, price:30, name:"zhtpkasqry", restockPoint:408, restockTo:1787, lastSupplier:0, autoRestock: false)
itest58 = Item.create(amount:1875, price:90, name:"labbdhrsje", restockPoint:765, restockTo:1526, lastSupplier:0, autoRestock: false)
itest59 = Item.create(amount:1959, price:18, name:"pkadygiqlc", restockPoint:776, restockTo:1869, lastSupplier:0, autoRestock: true)
itest60 = Item.create(amount:1541, price:95, name:"akcwacoitw", restockPoint:579, restockTo:1925, lastSupplier:0, autoRestock: false)
itest61 = Item.create(amount:1645, price:77, name:"exurbgfmta", restockPoint:813, restockTo:1659, lastSupplier:0, autoRestock: true)
itest62 = Item.create(amount:1540, price:98, name:"vudsrtbfid", restockPoint:519, restockTo:1735, lastSupplier:0, autoRestock: true)
itest63 = Item.create(amount:1623, price:67, name:"yckxhgqced", restockPoint:617, restockTo:1241, lastSupplier:0, autoRestock: true)
itest64 = Item.create(amount:1149, price:73, name:"ckgueeldek", restockPoint:424, restockTo:1512, lastSupplier:0, autoRestock: true)
itest65 = Item.create(amount:1580, price:13, name:"bohjormwjz", restockPoint:559, restockTo:2095, lastSupplier:0, autoRestock: false)
itest66 = Item.create(amount:1402, price:88, name:"nwgpvtrglk", restockPoint:785, restockTo:1499, lastSupplier:0, autoRestock: false)
itest67 = Item.create(amount:1403, price:62, name:"pgtnbroedu", restockPoint:439, restockTo:1671, lastSupplier:0, autoRestock: true)
itest68 = Item.create(amount:1665, price:35, name:"mtrajeeddw", restockPoint:699, restockTo:1483, lastSupplier:0, autoRestock: true)
itest69 = Item.create(amount:1184, price:54, name:"getlgrxxpy", restockPoint:701, restockTo:2077, lastSupplier:0, autoRestock: true)
itest70 = Item.create(amount:1170, price:16, name:"rymnwutkfu", restockPoint:660, restockTo:1790, lastSupplier:0, autoRestock: false)
itest71 = Item.create(amount:1282, price:46, name:"izheaxrwtd", restockPoint:617, restockTo:1457, lastSupplier:0, autoRestock: true)
itest72 = Item.create(amount:1929, price:94, name:"tnhptxhwdq", restockPoint:413, restockTo:1951, lastSupplier:0, autoRestock: true)
itest73 = Item.create(amount:1872, price:38, name:"yywyjizxeh", restockPoint:715, restockTo:1861, lastSupplier:0, autoRestock: true)
itest74 = Item.create(amount:1324, price:90, name:"nxetwxtpwb", restockPoint:400, restockTo:1254, lastSupplier:0, autoRestock: false)
itest75 = Item.create(amount:1479, price:23, name:"hqkrfyzoxb", restockPoint:771, restockTo:1359, lastSupplier:0, autoRestock: false)
itest76 = Item.create(amount:1084, price:53, name:"wnmjmvhzhe", restockPoint:537, restockTo:1211, lastSupplier:0, autoRestock: false)
itest77 = Item.create(amount:1403, price:24, name:"zwhmsevkfx", restockPoint:867, restockTo:1828, lastSupplier:0, autoRestock: false)
itest78 = Item.create(amount:1579, price:61, name:"mglrgkgbcs", restockPoint:625, restockTo:1752, lastSupplier:0, autoRestock: true)
itest79 = Item.create(amount:1157, price:73, name:"kyzpcnhjkc", restockPoint:894, restockTo:1309, lastSupplier:0, autoRestock: false)
itest80 = Item.create(amount:1314, price:81, name:"pfptpftmoj", restockPoint:717, restockTo:1730, lastSupplier:0, autoRestock: true)
itest81 = Item.create(amount:1628, price:24, name:"uymaqywvea", restockPoint:750, restockTo:1962, lastSupplier:0, autoRestock: true)
itest82 = Item.create(amount:1223, price:16, name:"cjiffjzlfr", restockPoint:575, restockTo:2055, lastSupplier:0, autoRestock: true)
itest83 = Item.create(amount:1634, price:54, name:"lohtzofmrz", restockPoint:821, restockTo:1256, lastSupplier:0, autoRestock: false)
itest84 = Item.create(amount:1418, price:95, name:"tkntclnlta", restockPoint:888, restockTo:1454, lastSupplier:0, autoRestock: true)
itest85 = Item.create(amount:1882, price:83, name:"hoqhedfjrc", restockPoint:760, restockTo:1546, lastSupplier:0, autoRestock: false)
itest86 = Item.create(amount:1916, price:18, name:"thfnwmcnzz", restockPoint:496, restockTo:2020, lastSupplier:0, autoRestock: true)
itest87 = Item.create(amount:1322, price:78, name:"vnfcjbyhew", restockPoint:726, restockTo:1214, lastSupplier:0, autoRestock: true)
itest88 = Item.create(amount:1676, price:56, name:"mwscactupe", restockPoint:549, restockTo:2167, lastSupplier:0, autoRestock: false)
itest89 = Item.create(amount:1390, price:65, name:"slgaspyxgf", restockPoint:541, restockTo:1229, lastSupplier:0, autoRestock: false)
itest90 = Item.create(amount:1946, price:24, name:"zqfwbhzzoc", restockPoint:889, restockTo:1416, lastSupplier:0, autoRestock: true)
itest91 = Item.create(amount:1691, price:13, name:"maxczzapbg", restockPoint:487, restockTo:1796, lastSupplier:0, autoRestock: false)
itest92 = Item.create(amount:1228, price:55, name:"dxyjlpezac", restockPoint:795, restockTo:1429, lastSupplier:0, autoRestock: false)
itest93 = Item.create(amount:1148, price:81, name:"isiennnzps", restockPoint:897, restockTo:1951, lastSupplier:0, autoRestock: true)
itest94 = Item.create(amount:1160, price:60, name:"eibbfkroks", restockPoint:616, restockTo:2056, lastSupplier:0, autoRestock: true)
itest95 = Item.create(amount:1303, price:65, name:"oijgujahow", restockPoint:449, restockTo:1971, lastSupplier:0, autoRestock: true)
itest96 = Item.create(amount:1369, price:43, name:"furqsjfrvj", restockPoint:577, restockTo:1750, lastSupplier:0, autoRestock: true)
itest97 = Item.create(amount:1332, price:81, name:"rgfvwcxvcd", restockPoint:549, restockTo:1237, lastSupplier:0, autoRestock: true)
itest98 = Item.create(amount:1319, price:64, name:"xycbcnkmcm", restockPoint:854, restockTo:1273, lastSupplier:0, autoRestock: false)
itest99 = Item.create(amount:1438, price:89, name:"odlersrtbt", restockPoint:649, restockTo:1840, lastSupplier:0, autoRestock: true)
itest100 = Item.create(amount:1111, price:34, name:"flkvghxqsd", restockPoint:835, restockTo:1546, lastSupplier:0, autoRestock: true)
itest101 = Item.create(amount:1497, price:99, name:"jyeugchsfq", restockPoint:617, restockTo:1395, lastSupplier:0, autoRestock: true)
itest102 = Item.create(amount:1597, price:68, name:"evywvlweim", restockPoint:537, restockTo:1421, lastSupplier:0, autoRestock: false)
itest103 = Item.create(amount:1930, price:51, name:"uocudjhqnq", restockPoint:502, restockTo:1221, lastSupplier:0, autoRestock: true)
itest104 = Item.create(amount:1764, price:47, name:"rqvjaafdgm", restockPoint:581, restockTo:1225, lastSupplier:0, autoRestock: true)
itest105 = Item.create(amount:1235, price:12, name:"rzcijofopn", restockPoint:634, restockTo:1904, lastSupplier:0, autoRestock: true)
itest106 = Item.create(amount:1106, price:88, name:"obqtcmthkn", restockPoint:774, restockTo:2023, lastSupplier:0, autoRestock: false)
itest107 = Item.create(amount:1844, price:10, name:"haavdvpsht", restockPoint:416, restockTo:1346, lastSupplier:0, autoRestock: false)
itest108 = Item.create(amount:1764, price:61, name:"leyfvfcpkk", restockPoint:500, restockTo:1606, lastSupplier:0, autoRestock: false)
itest109 = Item.create(amount:1997, price:35, name:"pioqsapqfb", restockPoint:658, restockTo:1773, lastSupplier:0, autoRestock: true)
itest110 = Item.create(amount:1025, price:88, name:"zknehubgkj", restockPoint:830, restockTo:1743, lastSupplier:0, autoRestock: true)
itest111 = Item.create(amount:1687, price:65, name:"xiegodvhdm", restockPoint:746, restockTo:1492, lastSupplier:0, autoRestock: true)
itest112 = Item.create(amount:1235, price:82, name:"cgrgiqqqih", restockPoint:741, restockTo:2137, lastSupplier:0, autoRestock: false)
itest113 = Item.create(amount:1790, price:91, name:"ravmdpipqy", restockPoint:843, restockTo:1318, lastSupplier:0, autoRestock: false)
itest114 = Item.create(amount:1711, price:49, name:"jzxbpacyvx", restockPoint:411, restockTo:2002, lastSupplier:0, autoRestock: false)
itest115 = Item.create(amount:1171, price:54, name:"uqdfkmooxd", restockPoint:751, restockTo:1436, lastSupplier:0, autoRestock: true)
itest116 = Item.create(amount:1827, price:26, name:"djekfgxbpv", restockPoint:883, restockTo:2183, lastSupplier:0, autoRestock: true)
itest117 = Item.create(amount:1122, price:57, name:"ygfevtrqmz", restockPoint:790, restockTo:2165, lastSupplier:0, autoRestock: true)
itest118 = Item.create(amount:1934, price:84, name:"snlkspqdft", restockPoint:564, restockTo:1292, lastSupplier:0, autoRestock: true)
itest119 = Item.create(amount:1688, price:22, name:"grffzrzvzs", restockPoint:817, restockTo:1453, lastSupplier:0, autoRestock: true)
itest120 = Item.create(amount:1521, price:82, name:"iefhmpzwqo", restockPoint:430, restockTo:1457, lastSupplier:0, autoRestock: true)

#whatever this is called its done
ctest1.locations << ltest1 << ltest2 << ltest3
ctest2.locations << ltest4 << ltest5 << ltest6
ctest3.locations << ltest7 << ltest8 << ltest9
ctest4.locations << ltest10 << ltest11 << ltest12
ctest5.locations << ltest13 << ltest14 << ltest15
ctest6.locations << ltest16 << ltest17 << ltest18
ctest7.locations << ltest19 << ltest20 << ltest21
ctest8.locations << ltest22 << ltest23 << ltest24

ltest1.items << itest1 << itest2 << itest3 << itest4 << itest5
ltest2.items << itest6 << itest7 << itest8 << itest9 << itest10
ltest3.items << itest11 << itest12 << itest13 << itest14 << itest15
ltest4.items << itest16 << itest17 << itest18 << itest19 << itest20
ltest5.items << itest21 << itest22 << itest23 << itest24 << itest25
ltest6.items << itest26 << itest27 << itest28 << itest29 << itest30
ltest7.items << itest31 << itest32 << itest33 << itest34 << itest35
ltest8.items << itest36 << itest37 << itest38 << itest39 << itest40
ltest9.items << itest41 << itest42 << itest43 << itest44 << itest45
ltest10.items << itest46 << itest47 << itest48 << itest49 << itest50
ltest11.items << itest51 << itest52 << itest53 << itest54 << itest55
ltest12.items << itest56 << itest57 << itest58 << itest59 << itest60
ltest13.items << itest61 << itest62 << itest63 << itest64 << itest65
ltest14.items << itest66 << itest67 << itest68 << itest69 << itest70
ltest15.items << itest71 << itest72 << itest73 << itest74 << itest75
ltest16.items << itest76 << itest77 << itest78 << itest79 << itest80
ltest17.items << itest81 << itest82 << itest83 << itest84 << itest85
ltest18.items << itest86 << itest87 << itest88 << itest89 << itest90
ltest19.items << itest91 << itest92 << itest93 << itest94 << itest95
ltest20.items << itest96 << itest97 << itest98 << itest99 << itest100
ltest21.items << itest101 << itest102 << itest103 << itest104 << itest105
ltest22.items << itest106 << itest107 << itest108 << itest109 << itest110
ltest23.items << itest111 << itest112 << itest113 << itest114 << itest115
ltest24.items << itest116 << itest117 << itest118 << itest119 << itest120
