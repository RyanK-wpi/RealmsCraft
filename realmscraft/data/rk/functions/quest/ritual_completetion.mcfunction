#Triggered manually at successful end of ritual
kill @e[type=minecraft:item_frame,nbt={TileX:4,TileY:43,TileZ:-34},limit=1]
kill @e[type=minecraft:item_frame,nbt={TileX:4,TileY:43,TileZ:-20},limit=1]
summon minecraft:item_frame 4.5 43 -34 {Facing:3b}
summon minecraft:item_frame 4.5 43 -20 {Facing:2b}
gamemode creative @s
effect clear @s minecraft:invisibility
