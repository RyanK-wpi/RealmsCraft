#function that attaches the spell "lightning bolt" to the trident
#To use this spell, throw the lighting bolt, and a lightning bolt will hit where it lands.
#author: Ryan Keller, Aug 2020

#increment score for each tick the lightning bolt exists
scoreboard players add @e[type=minecraft:trident,tag=lightning_bolt] lightningTime 1

#create an invisible armor stand object to track the lighting bolt
execute at @e[type=minecraft:trident,scores={lightningTime=1}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,CustomName:"\"lightningMarker\"",Marker:1b,Invisible:1b}
execute as @e[type=minecraft:trident,scores={lightningTime=2..}] at @s run tp @e[type=minecraft:armor_stand,distance=..3,name=lightningMarker] @s

#get rid of tridents that have hit their target
kill @e[type=trident,nbt={DealtDamage:1b},tag=lightning_bolt]
kill @e[type=trident,nbt={inGround:1b},tag=lightning_bolt]

#check if the lighting bolt near the tracker has been deleted
scoreboard players set @e[type=minecraft:armor_stand,name=lightningMarker] hasLightning 0
execute at @e[type=minecraft:trident] run scoreboard players set @e[type=minecraft:armor_stand,name=lightningMarker,distance=..1] hasLightning 1

#summon the lighting bolt
execute at @e[type=minecraft:armor_stand,name=lightningMarker,scores={hasLightning=0}] run summon minecraft:lightning_bolt ~ ~ ~
#damage any nearby entity
execute at @e[type=minecraft:armor_stand,name=lightningMarker,scores={hasLightning=0}] positioned ~ ~-1 ~ run effect give @e[type=!#spells:undead,distance=..2] minecraft:instant_damage 1 2 true
execute at @e[type=minecraft:armor_stand,name=lightningMarker,scores={hasLightning=0}] positioned ~ ~-1 ~ run effect give @e[type=#spells:undead,distance=..2] minecraft:instant_health 1 2 true
kill @e[type=minecraft:armor_stand,name=lightningMarker,scores={hasLightning=0}]

#give a cooldown to players who have cast lighting bolt
execute as @a[tag=lightning_bolt,nbt=!{Inventory:[{id:"minecraft:trident"}]}] run function spells:cooldown/lightning_bolt
