# -- This function is called when a game tries to begin but a player has items in there inv -- #

# Say in chat "All players must have clear Inventories to begin"
say All players must have clear Inventories to begin.

scoreboard players set @s unclear 1

# Execute the stop function 
execute as @s run function tag:stop