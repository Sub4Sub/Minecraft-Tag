
# Clear all effects from the player who is it
effect clear @a[tag=it]

# Set the player who is it's tagplayer score to 0 
scoreboard players set @a[tag=it] tagPlayers 0
# Set the player who is it's hit score to 0 
scoreboard players set @a[tag=it] hit 0

tag @a[tag=it] add player

tag @a[tag=it] remove it

tag @s add it

tag @a[tag=it] remove player

# Spread all players with the it tag across the map
spreadplayers -181 5136 10 40 false @a[tag=it]

effect give @a[tag=it] minecraft:blindness 10 2
effect give @a[tag=it] minecraft:slowness 10 2

scoreboard players set @a[tag=it] tagPlayers 0