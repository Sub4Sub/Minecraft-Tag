# -- Functions in this file are executed every in game tick (20 ticks per second) -- #

# Increasing all players with the player tags score by 1 per tick
scoreboard players add @a[tag=player] tagScore 1

scoreboard players add @a[tag=it] itTimer 1

# If a player takes any damage run the changeIt2 function
execute as @a[tag=player] if score @s tagPlayers > dummy tagPlayers run function util:changeit2

# If a player dies run the changeIt function
execute as @a[tag=player] if score @s tagDeaths > dummy tagDeaths run function util:changeit


execute as @a[tag=it] if score @s itTimer > radarDummy itTimer run function util:radar



execute as @e[x=-127, y=40, z=5080, dx=-236, dy=110, dz=5189] run tag @s add inMap


tag @a[tag=inMap] remove inMap

execute as @a[x=-127, y=40, z=5080, dx=-236, dy=110, dz=5189] run tag @s add inMap

tag @a[tag=!inMap, tag=player] add outMap

tag @a[tag=!inMap, tag=it] add outMap

execute as @a[tag=inMap] run scoreboard players set @s boundryTimer 0

execute as @a[tag=outMap] run scoreboard players add @s boundryTimer 1

execute as @a[tag=outMap] if score @s boundryTimer matches 10 run tell @s If you remain out of bounds you will become it

#if a players score reaches 6000 run the stop function
execute as @a[tag=outMap] if score @s boundryTimer matches 100 run say @s stayed out of bounds for to long
execute as @a[tag=outMap] if score @s boundryTimer matches 100 run effect give @s minecraft:instant_damage 5 5




execute as @a[tag=player] store result score @s tagCurrentPosX run data get entity @s Pos[0]

execute as @a[tag=player] store result score @s tagCurrentPosY run data get entity @s Pos[1]

execute as @a[tag=player] store result score @s tagCurrentPosZ run data get entity @s Pos[2]

tag @a[tag=player] remove holdingStill

execute as @a[tag=player] if score @s tagCurrentPosX = @s tagPrevPosX if score @s tagCurrentPosY = @s tagPrevPosY if score @s tagCurrentPosZ = @s tagPrevPosZ run tag @s add holdingStill

scoreboard players add @a[tag=holdingStill] holdStillTimer 1

scoreboard players set @a[tag=!holdingStill] holdStillTimer 0

execute as @a if score @s holdStillTimer matches 400 run effect give @s minecraft:glowing 10 1

execute as @a if score @s holdStillTimer matches 400 run scoreboard players set @s holdStillTimer 100

execute as @a[tag=player] store result score @s tagPrevPosX run scoreboard players get @s tagCurrentPosX

execute as @a[tag=player] store result score @s tagPrevPosY run scoreboard players get @s tagCurrentPosY

execute as @a[tag=player] store result score @s tagPrevPosZ run scoreboard players get @s tagCurrentPosZ



effect give @a[tag=player] minecraft:saturation 1 1

effect give @a[tag=it] minecraft:saturation 1 1

effect give @a[tag=it] minecraft:resistance 6 6


scoreboard players add dummy winnerTimer 1

execute as @a[tag=winner] if score dummy winnerTimer matches 20 run scoreboard players remove @s Winner 1

execute as @a[tag=winner] if score dummy winnerTimer matches 20 run scoreboard players set dummy winnerTimer 0

execute as @a[tag=winner] if score @s Winner matches 0 run function util:stop2

#if a players score reaches 6000 run the stop function
execute as @a if score @s tagScore matches 12000 run function tag:stop

