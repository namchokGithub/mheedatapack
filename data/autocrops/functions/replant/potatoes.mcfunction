fill ~ ~ ~ ~ ~ ~ minecraft:potatoes[age=0] replace air

execute if block ~ ~ ~ minecraft:potatoes[age=0] run clear @s minecraft:potato 1

scoreboard players reset @s ac.potatoes

particle minecraft:happy_villager ~ ~-0.25 ~ 0.25 0.25 0.25 0 1 normal @a[tag=ac.particle]