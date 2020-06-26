scoreboard players operation @a deathLine -= @s deathLine
tp @a[tag=dead,scores={deathLine=0}] @s
tag @a[tag=dead,scores={deathLine=0}] remove dead
scoreboard players operation @a deathLine += @s deathLine
scoreboard players set @a[tag=!dead] deathLine 0
kill @s
