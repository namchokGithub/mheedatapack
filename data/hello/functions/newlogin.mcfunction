# hello:newlogin
# -------------------------------------- #

tag @a add Login
execute if entity @a[tag=Login] run scoreboard players set @a[tag=Login] RLog 1
execute if entity @a[scores={RLog=1}] run scoreboard players add @a[scores={RLog=1}] Login 1

# the message thats sent the first time a player joins
title @a title [{"text":"Welcome!","color":"gold"},{"selector":"@s","color":"yellow"}]
title @a subtitle [{"text":"Datapack by ","color":"white"}, {"text":"Namchok","color":"pink"}]
execute at @p run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 100 0.0 1.0

execute at @a[scores={Login=1}] run stopsound @p
execute at @a[scores={Login=1}] run playsound minecraft:music_disc.far record @p[distance=..2]

# 
scoreboard players set @a Login 2
tag @a add enter

# -------------------------------------- #
