# -- Functions in this file are executed every in game tick (20 ticks per second) -- #

# Increasing all players with the player tags score by 1 per tick
scoreboard players add @a[tag=player] tagScore 1

# If a player takes any damage run the changeIt function
execute as @a[tag=player] if score @s tagPlayers > dummy tagPlayers run function util:changeit2

#if a players score reaches 6000 run the stop function
execute as @a if score @s tagScore matches 300 run function tag:stop

