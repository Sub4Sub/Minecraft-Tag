
scoreboard objectives add winnerTimer dummy
scoreboard players set dummy winnerTimer 0

scoreboard players set dummy winnerTimer 20
scoreboard players set @s Winner 10
tag @s add winner

scoreboard objectives remove tagPlayers
scoreboard objectives remove tagScore
scoreboard objectives remove tagTimer
scoreboard objectives remove tagTimer2

scoreboard objectives setdisplay sidebar Winner

tag @a remove it
tag @a remove player

gamerule sendCommandFeedback true

scoreboard players set tagRunner isRunning 0