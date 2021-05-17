
# Clear all effects from the player who is it
effect clear @a[tag=it]

clear @a[tag=it]

# Set the player who is it's tagplayer score to 0 
scoreboard players set @a[tag=it] tagPlayers 0
# Set the player who is it's hit score to 0 
scoreboard players set @a[tag=it] hit 0

# Add the player tag to all players who are it
tag @a[tag=it] add player

# Removing the it tag from the player who is it
tag @a[tag=it] remove it

# Add the it tag to the player who has taken damage
execute as @a[tag=player] if score @s tagPlayers > dummy tagPlayers run tag @s add it

# Remove the player tag from all player who are it
tag @a[tag=it] remove player

# Spread all players with the it tag across the map
spreadplayers -181 5136 10 40 false @a[tag=it]

give @a[tag=it] minecraft:stick
effect give @a[tag=it] minecraft:blindness 10 2
effect give @a[tag=it] minecraft:slowness 10 2

scoreboard players set @a[tag=it] tagPlayers 0
scoreboard players set @a[tag=it] tagDeaths 0