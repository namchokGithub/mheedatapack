# hello:logout
# -------------------------------------- #

# makes sure we are ready for the next login
tag @a[scores={Logout=1}] remove enter

scoreboard players add @a[scores={Logout=1}] Logout 1

execute if entity @a[scores={Logout=2..}] run function hello:enter

scoreboard players set @a Login 2

tag @a[scores={Logout=2..}] remove enter

# -------------------------------------- #