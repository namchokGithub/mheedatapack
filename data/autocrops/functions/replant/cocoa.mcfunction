execute if entity @e[distance=..7,nbt={Item:{tag:{North:1b}}}] run setblock ~ ~ ~ minecraft:cocoa[age=0,facing=north]
execute if entity @e[distance=..7,nbt={Item:{tag:{South:1b}}}] run setblock ~ ~ ~ minecraft:cocoa[age=0,facing=south]
execute if entity @e[distance=..7,nbt={Item:{tag:{East:1b}}}] run setblock ~ ~ ~ minecraft:cocoa[age=0,facing=east]
execute if entity @e[distance=..7,nbt={Item:{tag:{West:1b}}}] run setblock ~ ~ ~ minecraft:cocoa[age=0,facing=west]

execute if block ~ ~ ~ minecraft:cocoa[age=0] run clear @s minecraft:cocoa_beans 1

scoreboard players reset @s ac.cocoa

particle minecraft:happy_villager ~ ~-0.25 ~ 0.25 0.25 0.25 0 1 normal @a[tag=ac.particle]