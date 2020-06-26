effect give @a[gamemode=adventure,scores={health=9..16}] minecraft:mining_fatigue 1 0 true
effect give @a[gamemode=adventure,scores={health=5..12}] minecraft:slowness 1 0 true
effect give @a[gamemode=adventure,scores={health=..8}] minecraft:mining_fatigue 1 1 true
effect give @a[gamemode=adventure,scores={health=..4}] minecraft:slowness 1 1 true
effect give @a[gamemode=adventure,scores={health=..4}] minecraft:weakness 1 0 true

effect give @a[gamemode=adventure] minecraft:saturation 999999 255 true

scoreboard players set playerCounter playerCount 0
execute as @a[gamemode=adventure] run scoreboard players add playerCounter playerCount 1