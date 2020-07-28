scoreboard players add @e[type=minecraft:trident] lightningTime 1
kill @e[type=trident,nbt={DealtDamage:1b}]
kill @e[type=trident,nbt={inGround:1b}]

execute at @e[type=minecraft:trident,scores={lightningTime=1}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,CustomName:"\"lightningMarker\"",Marker:1b,Invisible:1b}
execute as @e[type=minecraft:trident,scores={lightningTime=2..}] at @s run tp @e[type=minecraft:armor_stand,distance=..3,name=lightningMarker] @s

scoreboard players set @e[type=minecraft:armor_stand,name=lightningMarker] hasLightning 0
execute at @e[type=minecraft:trident] run scoreboard players set @e[type=minecraft:armor_stand,name=lightningMarker,distance=..1] hasLightning 1

execute at @e[type=minecraft:armor_stand,name=lightningMarker,scores={hasLightning=0}] run summon minecraft:lightning_bolt ~ ~ ~
kill @e[type=minecraft:armor_stand,name=lightningMarker,scores={hasLightning=0}]

execute as @a[tag=Mage,nbt=!{Inventory:[{id:"minecraft:trident"}]}] run function func:cooldownbolt
