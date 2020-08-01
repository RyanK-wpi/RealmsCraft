execute as @s[scores={regenerateTime=1..}] run scoreboard players remove @s regenerateTime 1
execute at @s run particle heart ~ ~1 ~ 0.25 0.25 0.25 1 1
execute as @s[scores={regenerateTime=0}] at @s run function death:revive
