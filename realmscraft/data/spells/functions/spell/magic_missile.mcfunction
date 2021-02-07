#function that emulates the "magic missile" spell
#To use this spell, throw the missile, and enemies it hits will take damage
#author: Ryan Keller, Aug 2020

#increment score for each tick the magic missile exists
scoreboard players add @e[nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:"\"Magic Missile\""}}}}] magicMissileTime 1

#create an invisible armor stand object to track the missile
execute at @e[type=snowball,scores={magicMissileTime=1}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,CustomName:"\"missileMarker\"",Marker:1b,Invisible:1b}
execute as @e[type=minecraft:snowball,scores={magicMissileTime=2..}] at @s run teleport @e[type=minecraft:armor_stand,distance=..2,name=missileMarker] @s

#check if the missile has hit a target
scoreboard players set @e[type=minecraft:armor_stand,name=missileMarker] hasMissile 0
execute at @e[type=minecraft:snowball] run scoreboard players set @e[type=minecraft:armor_stand,name=missileMarker,distance=..1] hasMissile 1

#damage any nearby entity
execute at @e[type=minecraft:armor_stand,name=missileMarker,scores={hasMissile=0}] positioned ~ ~-1 ~ run effect give @e[type=!#spells:undead,distance=..2.5] minecraft:instant_damage 1 0 true
execute at @e[type=minecraft:armor_stand,name=missileMarker,scores={hasMissile=0}] positioned ~ ~-1 ~ run effect give @e[type=#spells:undead,distance=..2.5] minecraft:instant_health 1 1 true

#clean up
kill @e[type=minecraft:armor_stand,name=missileMarker,scores={hasMissile=0}]
