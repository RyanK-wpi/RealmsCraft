scoreboard players operation @a deathLine -= @s deathLine
tp @a[tag=dead,scores={deathLine=0}] @s
gamemode adventure @a[gamemode=spectator,tag=dead,tag=deathwatch,scores={deathLine=0}]

# Start regeneration spell cooldown (if appropriate)
execute at @s run scoreboard players set @p[tag=dead] shift 0
execute as @s[scores={regenerateTime=0},tag=regenSpell] run scoreboard players set @a[tag=dead,tag=regeneration,scores={deathLine=0}] cooldownRegen 600

tag @a[tag=dead,scores={deathLine=0}] remove dead
scoreboard players operation @a deathLine += @s deathLine
scoreboard players set @a[tag=!dead] deathLine 0
particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 1 20
kill @s
