fill ~ ~ ~ ~ ~ ~ minecraft:wheat[age=0] replace air

execute if block ~ ~ ~ minecraft:wheat[age=0] run clear @s minecraft:wheat_seeds 1

scoreboard players reset @s ac.wheat

particle minecraft:flame ~ ~-0.25 ~ 0.25 0.25 0.25 0 5 normal @a[tag=ac.particle]