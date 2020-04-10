fill ~ ~ ~ ~ ~ ~ minecraft:carrots[age=0] replace air

execute if block ~ ~ ~ minecraft:carrots[age=0] run clear @s minecraft:carrot 1

scoreboard players reset @s ac.carrots

particle minecraft:happy_villager ~ ~-0.25 ~ 0.25 0.25 0.25 0 1 normal @a[tag=ac.particle]