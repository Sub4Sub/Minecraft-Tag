# -- Functions in this file are executed every in game tick (20 ticks per second) -- #

# Increasing all players with the player tags score by 1 per tick
scoreboard players add @a[tag=player] tagScore 1

# If a player takes any damage run the changeIt2 function
execute as @a[tag=player] if score @s tagPlayers > dummy tagPlayers run function util:changeit2

# If a player dies run the changeIt function
execute as @a[tag=player] if score @s tagDeaths > dummy tagDeaths run function util:changeit

tag @a[tag=inMap] remove inMap

execute as @a[x=-127, y=40, z=5080, dx=-236, dy=110, dz=5189] tag @s inMap

tag @a[tag=!inMap] add outMap

execute as @a[tag=inMap] scoreboard players set @s boundryTimer 0

#if a players score reaches 6000 run the stop function
execute as @a if score @s tagScore matches 300 run function tag:stop

