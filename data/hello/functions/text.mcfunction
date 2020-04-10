# hello:text
# -------------------------------------- #

title @a title [{"text":"Hello!!!","color":"yellow"}]
title @a subtitle [{"text":"\u00A7kNNN   ", "color":"gold"}, {"text":"Datapack by ","color":"white"}, {"text":"\u00A7oNamchok!!!","color":"light_purple"}, {"text":"   \u00A7kNNN", "color":"gold"}]
execute as @a run tellraw @a [{"text":"Hi! ","color":"gray"}, {"selector":"@s","color":"yellow"}, {"text":", Welcome back!!. ", "color":"aqua"}, {"text":" Are you ready??","color":"green"}]
execute at @p run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 100 0.0 1.0
execute as @p at @p run particle minecraft:happy_villager ~ ~0.5 ~ 0.5 0.2 0.5 0 30

# -------------------------------------- #