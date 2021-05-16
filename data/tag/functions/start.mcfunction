# If a game of tag is currently running send a message saying a game is in progress:
execute if score tagRunner isRunning matches 1 run say A game is already in progress

# If a game of tag is not currently running execute the util startup function:
execute if score tagRunner isRunning matches 0 run function util:startup
