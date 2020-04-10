# hello:text
# -------------------------------------- #

execute as @a run title @a title [{"text":"Welcome!!!","color":"yellow"}]
execute as @a run title @a subtitle [{"text":"Hi ","color":"light_purple"}, {"selector":"@p","color":"aqua"}]
# title @a subtitle [{"text":"Datapack by ","color":"white"}, {"text":"\u00A7oNamchok!!!","color":"light_purple"}]
execute as @a run tellraw @a [{"text":"Hi! ","color":"gray"}, {"selector":"@s","color":"yellow"}, {"text":", Welcome back!!. ", "color":"aqua"}, {"text":" Are you ready??","color":"green"}]
execute at @p run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 100 0.0 1.0
execute as @p at @p run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.2 0.5 0 30

# -------------------------------------- #