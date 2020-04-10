fill ~ ~ ~ ~ ~ ~ minecraft:beetroots[age=0] replace air

execute if block ~ ~ ~ minecraft:beetroots[age=0] run clear @s minecraft:beetroot_seeds 1

scoreboard players reset @s ac.beetroots

particle minecraft:happy_villager ~ ~-0.25 ~ 0.25 0.25 0.25 0 1 normal @a[tag=ac.particle]