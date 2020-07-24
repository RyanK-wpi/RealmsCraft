scoreboard players add @e[nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:"\"Magic Missile\""}}}}] magicMissileTime 1

execute at @e[type=snowball,scores={magicMissileTime=1}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,CustomName:"\"missileMarker\"",Marker:1b,Invisible:1b}
execute as @e[type=minecraft:snowball,scores={magicMissileTime=2..}] at @s run teleport @e[type=minecraft:armor_stand,distance=..2,name=missileMarker] @s

scoreboard players set @e[type=minecraft:armor_stand,name=missileMarker] hasMissile 0
execute at @e[type=minecraft:snowball] run scoreboard players set @e[type=minecraft:armor_stand,name=missileMarker,distance=..1] hasMissile 1

execute at @e[type=minecraft:armor_stand,name=missileMarker,scores={hasMissile=0}] positioned ~ ~-1 ~ run effect give @e[type=!#spells:undead,distance=..2] minecraft:instant_damage 1 0 true 
execute at @e[type=minecraft:armor_stand,name=missileMarker,scores={hasMissile=0}] positioned ~ ~-1 ~ run effect give @e[type=#spells:undead,distance=..2] minecraft:instant_health 1 1 true 

kill @e[type=minecraft:armor_stand,name=missileMarker,scores={hasMissile=0}]
