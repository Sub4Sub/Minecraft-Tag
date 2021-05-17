# -- Functions in this file are executed every in game tick (20 ticks per second) -- #

# Increasing all players with the player tags score by 1 per tick
scoreboard players add @a[tag=player] tagScore 1

# If a player takes any damage run the changeIt2 function
execute as @a[tag=player] if score @s tagPlayers > dummy tagPlayers run function util:changeit2

# If a player dies run the changeIt function
execute as @a[tag=player] if score @s tagDeaths > dummy tagDeaths run function util:changeit

tag @a[tag=inMap] remove inMap

execute as @a[x=-127, y=40, z=5080, dx=-236, dy=110, dz=5189] run tag @s add inMap

tag @a[tag=!inMap] add outMap

execute as @a[tag=inMap] run scoreboard players set @s boundryTimer 0

execute as @a[tag=outMap] run scoreboard players add @s boundryTimer 1

execute as @a[tag=outMap] if score @s boundryTimer matches 10 run tell @s If you remain out of bounds you will become it

#if a players score reaches 6000 run the stop function
execute as @a[tag=outMap] if score @s boundryTimer matches 100 run say @s stayed out of bounds for to long
execute as @a[tag=outMap] if score @s boundryTimer matches 100 run effect give @s minecraft:instant_damage 5 5


execute as @a[tag=player] run scoreboard players 

#if a players score reaches 6000 run the stop function
execute as @a if score @s tagScore matches 6000 run function tag:stop

