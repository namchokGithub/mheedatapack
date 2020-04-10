execute if entity @s[nbt={Item:{tag:{Wheat:1b}}}] as @a[distance=..7,scores={ac.wheat=1..},nbt={Inventory:[{id:"minecraft:wheat_seeds"}]}] run function autocrops:replant/wheat

execute if entity @s[nbt={Item:{tag:{Carrots:1b}}}] as @a[distance=..7,scores={ac.carrots=1..},nbt={Inventory:[{id:"minecraft:carrot"}]}] run function autocrops:replant/carrots

execute if entity @s[nbt={Item:{tag:{Potatoes:1b}}}] as @a[distance=..7,scores={ac.potatoes=1..},nbt={Inventory:[{id:"minecraft:potato"}]}] run function autocrops:replant/potatoes

execute if entity @s[nbt={Item:{tag:{Beetroots:1b}}}] as @a[distance=..7,scores={ac.beetroots=1..},nbt={Inventory:[{id:"minecraft:beetroot_seeds"}]}] run function autocrops:replant/beetroots

execute if entity @s[nbt={Item:{tag:{NetherWart:1b}}}] as @a[distance=..7,scores={ac.nether_wart=1..},nbt={Inventory:[{id:"minecraft:nether_wart"}]}] run function autocrops:replant/nether_wart

execute if entity @s[nbt={Item:{tag:{Cocoa:1b}}}] as @a[distance=..7,scores={ac.cocoa=1..},nbt={Inventory:[{id:"minecraft:cocoa_beans"}]}] run function autocrops:replant/cocoa

kill @e[type=item,tag=!ac.checked]