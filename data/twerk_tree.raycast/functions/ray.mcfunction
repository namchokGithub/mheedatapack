execute if block ~ ~ ~ #twerk_tree:blocks run function twerk_tree.raycast:hit_block
scoreboard players add #distance vdvcasttemp 1
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..1000 positioned ^ ^ ^0.1 run function twerk_tree.raycast:ray