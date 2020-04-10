scoreboard players set #hit vdvcasttemp 1

# ummons armorstand on saplings.
execute if block ~ ~ ~ #twerk_tree:blocks positioned ~ ~ ~ unless entity @e[type=armor_stand,distance=..1.2,tag=twerk_tree.growth,limit=1] align xz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Glowing:1b,Marker:0b,Small:1b,Invisible:1b,DisabledSlots:4144959,Tags:["twerk_tree.growth"]}
