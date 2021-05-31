
scoreboard objectives add winnerTimer dummy
scoreboard players set dummy winnerTimer 0

scoreboard players set @s Winner 10
tag @s add winner

say @s is the winner!

gamemode survival @a[tag=player]
gamemode survival @a[tag=it]

scoreboard objectives remove tagPlayers
scoreboard objectives remove tagScore
scoreboard objectives remove tagTimer
scoreboard objectives remove tagTimer2
scoreboard objectives remove hit
scoreboard objectives remove tagDeaths
scoreboard objectives remove boundryTimer
scoreboard objectives remove holdStillTimer
scoreboard objectives remove tagCurrentPosX
scoreboard objectives remove tagCurrentPosY
scoreboard objectives remove tagCurrentPosZ
scoreboard objectives remove tagPrevPosX
scoreboard objectives remove tagPrevPosY
scoreboard objectives remove tagPrevPosZ
scoreboard objectives remove itTimer

scoreboard objectives setdisplay sidebar Winner

tag @a remove inMap
tag @a remove outMap
tag @a remove holdingStill

tag @a remove it
tag @a remove player

gamerule sendCommandFeedback true

fill -169 58 5127 -173 62 5131 air hollow

scoreboard players set tagRunner isRunning 0