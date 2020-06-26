execute store result bossbar bossbar:boss value run data get entity @p[tag=boss] Health

execute if entity @p[tag=boss] run bossbar set bossbar:boss visible true
execute unless entity @p[tag=boss] run bossbar set bossbar:boss visible false
execute unless entity @p[tag=boss] run bossbar set bossbar:boss players

execute at @p[tag=boss] run bossbar set bossbar:boss players @a[distance=..20]