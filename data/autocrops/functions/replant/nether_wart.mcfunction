fill ~ ~ ~ ~ ~ ~ minecraft:nether_wart[age=0] replace air

execute if block ~ ~ ~ minecraft:nether_wart[age=0] run clear @s minecraft:nether_wart 1

scoreboard players reset @s ac.nether_wart

particle minecraft:elder_guardian ~ ~-0.25 ~ 0.25 0.25 0.25 0 1 normal @a[tag=ac.particle]