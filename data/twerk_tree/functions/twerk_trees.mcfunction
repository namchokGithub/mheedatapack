#datapack instructions, Uninstallation and reset
scoreboard players enable @a twerk_tree.opt

# Repeat of loading message
execute as @a[scores={twerk_tree.opt=1}] run tellraw @s {"text":"Hi!"}
# Makes armorstands glow for 10 more sec
execute as @a[scores={twerk_tree.opt=5}] at @s as @e[type=armor_stand,tag=twerk_tree.growth,distance=..20] run data merge entity @s {Glowing:1b,Marker:0b}
execute as @a[scores={twerk_tree.opt=5}] at @s run tellraw @a[distance=..20] {"text":"twerk_tree Armorstands around your area have been revealed!","color":"red","italic":true}
execute as @a[scores={twerk_tree.opt=5}] at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 1 0

# makes trigger only happen one at a time
execute as @a[scores={twerk_tree.opt=1..}] run scoreboard players reset @s twerk_tree.opt


# Summons an armorstand via raycasting when looking at saplings
execute as @a at @s anchored eyes positioned ^ ^ ^ anchored feet run function twerk_tree.raycast:start_ray

# Lets the armorstand glow for 10 seconds
execute as @e[type=armor_stand,tag=twerk_tree.growth,nbt={Glowing:1b}] run scoreboard players add @s twerk_tree.new 1
execute as @e[tag=twerk_tree.growth,scores={twerk_tree.new=200..}] run data merge entity @s {Glowing:0b, Marker:1b}
execute as @e[tag=twerk_tree.growth,scores={twerk_tree.new=200..}] run scoreboard players reset @s twerk_tree.new

# particles
execute as @a[scores={twerk_tree.Twerk=1..,twerk_tree.check=1}] at @s as @e[type=armor_stand,tag=twerk_tree.growth,distance=..10] run scoreboard players add @s twerk_tree.part 1
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.part=3}] at @s run tellraw @s {"text":"Growth up!!!", "color":"green"}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.part=4}] at @s run particle minecraft:heart ~ ~0.3 ~ 0.3 0.2 0.3 0 10
execute as @e[type=armor_stand,scores={twerk_tree.part=4..}] run scoreboard players reset @s twerk_tree.part

#Stop playings from abusing 
execute as @a[scores={twerk_tree.Twerk=1..}] run scoreboard players add @s twerk_tree.check 1
execute unless entity @a[scores={twerk_tree.Twerk=1..}] as @a[scores={twerk_tree.check=1..}] run scoreboard players reset @s twerk_tree.check

# Twerk to grow trees in a 5 block radius
execute as @a[scores={twerk_tree.Twerk=1..,twerk_tree.check=1}] at @s if entity @e[type=armor_stand,tag=twerk_tree.growth,distance=..10] as @e[type=armor_stand,distance=..10,tag=twerk_tree.growth,sort=random,limit=1] store success score @s twerk_tree.grow if entity @s[predicate=twerk_tree:treegrow_success]
execute as @a[scores={twerk_tree.Twerk=1..}] run scoreboard players reset @s twerk_tree.Twerk

# tping all bat to 0 0 rotation to prevent 1000s of rotations
execute as @e[type=bat] if entity @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1}] run tp @s ~ ~ ~ 0 0

# The tree spawns. Put a randomiser for extra trees
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1}] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Small:1b,Invisible:1b,Tags:["twerk_tree.success_grow"]}
execute as @e[type=armor_stand,tag=twerk_tree.growth] store result score @s twerk_tree.rand run data get entity @e[limit=1,sort=random,type=!item,type=!armor_stand] Rotation[0]
#converts negative score to pos
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.rand=-360..-1}] run scoreboard players add @s twerk_tree.rand 360

#region oak tree structures
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=0..153}] at @s if block ~ ~ ~ oak_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:oak_tree1",sizeY:7,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=154..269}] at @s if block ~ ~ ~ oak_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:oak_tree2",sizeY:6,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=270..343}] at @s if block ~ ~ ~ oak_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:oak_tree3",sizeY:7,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=344..359}] at @s if block ~ ~ ~ oak_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:-5,mode:"LOAD",posY:1,sizeX:11,posZ:-6,integrity:1.0f,showair:0b,name:"twerk_tree:oak_tree_large1",sizeY:16,sizeZ:13,showboundingbox:1b}
#endregion

#region spruce trees structures
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=0..180}] at @s if block ~ ~ ~ spruce_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-3,mode:"LOAD",posY:1,sizeX:7,posZ:-3,integrity:1.0f,showair:0b,name:"twerk_tree:spruce_tree1",sizeY:9,sizeZ:7,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=181..360}] at @s if block ~ ~ ~ spruce_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:1b,name:"twerk_tree:spruce_tree2",sizeY:8,sizeZ:5,showboundingbox:1b}
#endregion

#region birch trees structures
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=91..225}] at @s if block ~ ~ ~ birch_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:birch_tree1",sizeY:6,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=0..90}] at @s if block ~ ~ ~ birch_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:birch_tree2",sizeY:8,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=226..360}] at @s if block ~ ~ ~ birch_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:birch_tree3",sizeY:6,sizeZ:5,showboundingbox:1b}
#endregion

#region acacia trees structures
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=0..180}] at @s if block ~ ~ ~ acacia_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-5,mode:"LOAD",posY:1,sizeX:8,posZ:-3,integrity:1.0f,showair:0b,name:"twerk_tree:acacia_tree1",sizeY:7,sizeZ:9,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=181..360}] at @s if block ~ ~ ~ acacia_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-3,mode:"LOAD",posY:1,sizeX:7,posZ:-6,integrity:1.0f,showair:0b,name:"twerk_tree:acacia_tree2",sizeY:7,sizeZ:9,showboundingbox:1b}
#endregion

#region jungle trees structures
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=0..90}] at @s if block ~ ~ ~ jungle_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:jungle_tree1",sizeY:12,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=91..225}] at @s if block ~ ~ ~ jungle_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:jungle_tree2",sizeY:7,sizeZ:5,showboundingbox:1b}
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1,twerk_tree.rand=226..360}] at @s if block ~ ~ ~ jungle_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-2,mode:"LOAD",posY:1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"twerk_tree:jungle_tree3",sizeY:9,sizeZ:5,showboundingbox:1b}
#endregion

#region dark_oak trees structures
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1}] at @s if block ~ ~ ~ dark_oak_sapling run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"CrazyDav3",rotation:"NONE",posX:-3,mode:"LOAD",posY:1,sizeX:8,posZ:-4,integrity:1.0f,showair:0b,name:"twerk_tree:dark_oak_tree1",sizeY:10,sizeZ:8,showboundingbox:1b}
#endregion

#activates structure block & replaces it with dirt after
execute as @e[type=armor_stand,tag=twerk_tree.growth,scores={twerk_tree.grow=1}] at @s run setblock ~ ~ ~ minecraft:redstone_block replace

execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 3 0
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run particle minecraft:happy_villager ~ ~ ~ 1.5 1 1.5 1 300
#region kills the excess sapling around the tree
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}},distance=..5,limit=1]
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling",Count:1b}},distance=..5,limit=1]
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:birch_sapling",Count:1b}},distance=..5,limit=1]
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling",Count:1b}},distance=..5,limit=1]
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling",Count:1b}},distance=..5,limit=1]
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:1b}},distance=..5,limit=1]
#endregion
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s if block ~ ~ ~ structure_block run setblock ~ ~ ~ dirt
execute as @e[type=armor_stand,tag=twerk_tree.success_grow] at @s if block ~ ~ ~ dirt run kill @s

#kills twerk armorstand when sapling doesnt exist
execute as @e[type=armor_stand,tag=twerk_tree.growth] at @s unless block ~ ~ ~ #twerk_tree:blocks run kill @s
