#support function for reviving corpses
#Author: Ryan Keller, Aug 2020

#match corpse to player in deathline by making their score 0
scoreboard players operation @a deathLine -= @s deathLine

#reset players shift score (for regeneration)
scoreboard players set @p[tag=dead] shift 0
scoreboard players set @p[tag=dead,tag=regeneration] cooldownRegen 1

#move player to corpse
tp @s ~ ~0.5 ~
tp @a[tag=dead,scores={deathLine=0}] @s

#revive player
gamemode adventure @a[gamemode=spectator,tag=dead,tag=deathwatch,scores={deathLine=0}]
tag @a[tag=dead,scores={deathLine=0}] remove dead
execute at @p run particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 1 20

#return deathline to original state
scoreboard players operation @a deathLine += @s deathLine
scoreboard players set @a[tag=!dead] deathLine 0

#get rid of the bed and corpse
execute at @s run setblock ~ 1 ~ air
tp @s ~ 0 ~
kill @s
