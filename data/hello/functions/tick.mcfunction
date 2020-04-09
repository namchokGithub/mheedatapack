# Hello:Tick
# -------------------------------------- #
# Main Functions]

scoreboard players add @a Login 0

# First login 
execute if entity @a[scores={Login=0}] run function rmt:new

# Joined
execute if entity @a[tag=Joined,scores={Logout=1..}] run function rmt:joining

# When logout
execute if entity @a[scores={Logout=1..}] run function rmt:logout

execute run title @a title [{"text":"Hello!","color":"gold"},{"selector":"@s","color":"red"}]
execute run title @a subtitle [{"text":"Datapack by ","color":"white"}, {"text":"Namchok","color":"pink"}]
# Sound opening
# execute at @p run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 100 0.0 1.0

# -------------------------------------- #