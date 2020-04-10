scoreboard objectives add ac.wheat minecraft.mined:minecraft.wheat
scoreboard objectives add ac.carrots minecraft.mined:minecraft.carrots
scoreboard objectives add ac.potatoes minecraft.mined:minecraft.potatoes
scoreboard objectives add ac.beetroots minecraft.mined:minecraft.beetroots
scoreboard objectives add ac.nether_wart minecraft.mined:minecraft.nether_wart
scoreboard objectives add ac.cocoa minecraft.mined:minecraft.cocoa

tag @a add ac.particle

forceload add 0 0
execute unless entity @e[tag=autocrops.firstreload] run summon area_effect_cloud 0 0 0 {Tags:["autocrops.firstreload"],Duration:2147483647,Radius:0.0f}