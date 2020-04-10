tag @e[type=item,nbt=!{Item:{tag:{AutoCrop:1b}}}] add ac.checked

execute as @e[type=item,tag=!ac.checked] at @s run function autocrops:replant