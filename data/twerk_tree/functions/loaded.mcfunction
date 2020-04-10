#twerk_tree.opt = options
scoreboard objectives add twerk_tree.opt trigger
scoreboard objectives add twerk_tree.Twerk minecraft.custom:minecraft.sneak_time
scoreboard objectives add twerk_tree.grow dummy
scoreboard objectives add twerk_tree.rand dummy
scoreboard objectives add twerk_tree.part dummy
scoreboard objectives add twerk_tree.new dummy
#cooldown and its division variable
scoreboard objectives add twerk_tree.coold dummy
scoreboard objectives add twerk_tree.coolV dummy
#checks for abuse of sneaking 
scoreboard objectives add twerk_tree.check dummy

tellraw @s {"text":"Loaded tree growth", "color":"green"}
scoreboard players set twerk_tree.Cooldown twerk_tree.coolV 1200