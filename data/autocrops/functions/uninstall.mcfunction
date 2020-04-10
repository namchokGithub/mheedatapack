scoreboard objectives remove ac.wheat
scoreboard objectives remove ac.carrots
scoreboard objectives remove ac.potatoes
scoreboard objectives remove ac.beetroots
scoreboard objectives remove ac.nether_wart
scoreboard objectives remove ac.cocoa

tag @a remove ac.particle

datapack disable "file/Auto Crops"

tellraw @a ["",{"text":"[Datapack] ","color":"white"},{"text":"Auto Crops was disabled.","color":"red"}]
