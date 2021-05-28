# Set the tagRunner variable to true
scoreboard players set tagRunner isRunning 1

# Tag all players inside of the map
tag @a[x=-127, y=40, z=5080, dx=-236, dy=110, dz=5189] add player



# Define a tagPlayers scoreboard that updates when players take damage
scoreboard objectives add tagPlayers minecraft.custom:minecraft.damage_taken
# Add all players with the player tag to the tagPlayers scoreboard
scoreboard players set @a[tag=player] tagPlayers 0
# Adding a dummy player to the tagPlayer scoreboard with a score of 0 that is used for comparisons
scoreboard players set dummy tagPlayers 0

# Define a tagDeaths scoreboard that updates when players die
scoreboard objectives add tagDeaths deathCount
# Add all players with the player tag to the tagDeath scoreboard
scoreboard players set @a[tag=player] tagDeaths 0
# Adding a dummy player to the tagDeath scoreboard with a score of 0 that is used for comparisons
scoreboard players set dummy tagDeaths 0

# Define a hit scoreboard that updates when player hits another player with a stick
scoreboard objectives add hit minecraft.custom:damage_dealt
# Add all players with the player tag to the hit scoreboard
scoreboard players set @a[tag=player] hit 0
# Adding a dummy player to the hit scoreboard with a score of 0 that is used for comparisons
scoreboard players set dummy hit 0

# Define a tagScore scoreboard that holds a dummy value
scoreboard objectives add tagScore dummy
# Add all players with the player tag to the tagScore scoreboard
scoreboard players set @a[tag=player] tagScore 0
# Display the tagScore scoreboard on the sidebar
scoreboard objectives setdisplay sidebar tagScore

# Define a boundryTimer scoreboard that holds a dummy value
scoreboard objectives add boundryTimer dummy
# Add all players with the player tag to the boundryTimer scoreboard
scoreboard players set @a[tag=player] boundryTimer 0

# Define a holdStillTimer scoreboard that holds a dummy value
scoreboard objectives add holdStillTimer dummy
# Add all players with the player tag to the holdStillTimer scoreboard
scoreboard players set @a[tag=player] holdStillTimer 0


# Define a tagPrevPosX scoreboard that holds a dummy value
scoreboard objectives add tagPrevPosX dummy
# Add all players with the player tag to the tagPrevPosX scoreboard
scoreboard players set @a[tag=player] tagPrevPosX 0

# Define a tagPrevPosX scoreboard that holds a dummy value
scoreboard objectives add tagPrevPosY dummy
# Add all players with the player tag to the tagPrevPosX scoreboard
scoreboard players set @a[tag=player] tagPrevPosY 0

# Define a tagScore scoreboard that holds a dummy value
scoreboard objectives add tagPrevPosZ dummy
# Add all players with the player tag to the tagScore scoreboard
scoreboard players set @a[tag=player] tagPrevPosZ 0


# Define a tagScore scoreboard that holds a dummy value
scoreboard objectives add tagCurrentPosX dummy
# Add all players with the player tag to the tagScore scoreboard
scoreboard players set @a[tag=player] tagCurrentPosX 0

# Define a tagScore scoreboard that holds a dummy value
scoreboard objectives add tagCurrentPosY dummy
# Add all players with the player tag to the tagScore scoreboard
scoreboard players set @a[tag=player] tagCurrentPosY 0

# Define a tagScore scoreboard that holds a dummy value
scoreboard objectives add tagCurrentPosZ dummy
# Add all players with the player tag to the tagScore scoreboard
scoreboard players set @a[tag=player] tagCurrentPosZ 0

# Adding a scoreboard called winner that will display the winner after the game instance
scoreboard objectives add Winner dummy

# Execute the util:unclearinv function as every player who has an unclear inventory & the player tag 
execute as @p[tag=player, nbt=!{Inventory:[]}] run function util:unclearinv

# Spread all players with the player tag across the map
spreadplayers -181 5136 10 40 false @a[tag=player]

tag @a[tag=player] add inMap

spawnpoint @a[tag=player] -180 67 5137

# Give a random player the it tag
tag @r[tag=player] add it
# Remove the player tag from all players with the it tag
tag @a[tag=it] remove player
# Giving all player who are to a stick 
give @a[tag=it] minecraft:stick
# Make all players who are it blind for 10 seconds
effect give @a[tag=it] minecraft:blindness 10 2
# Make all players who are it slow for 10 seconds
effect give @a[tag=it] minecraft:slowness 10 2