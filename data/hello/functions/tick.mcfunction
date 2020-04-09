# hello:tick
# -------------------------------------- #
# Main Functions]

scoreboard players add @a Login 0

# First login 
execute if entity @a[scores={Login=0}] run function hello:newlogin

# Joined
execute if entity @a[tag=enter,scores={Logout=1..}] run function hello:enter

# When logout
execute if entity @a[scores={Logout=1..}] run function hello:logout

# -------------------------------------- #