#cooldown function for "lightning bolt"
#Author: Ryan Keller, Aug 2020

#give cooldown item
execute as @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] at @s run tag @e[type=minecraft:trident,distance=..5] add lightning_bolt
execute as @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] run clear @s minecraft:carrot_on_a_stick{display:{Name:"\"Grab\""}} 1
execute as @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] run give @s minecraft:barrier{CustomModelData:1,display:{Name:"\"Lightning Bolt on Cooldown\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] cooldownLB 1200

#return spell
clear @s[scores={cooldownLB=1}] minecraft:barrier{display:{Name:"\"Lightning Bolt on Cooldown\""}}
give @s[scores={cooldownLB=1}] minecraft:trident{display:{Name:"\"Lightning Bolt\"",Lore:["\"Spell Attack\""]},AttributeModifiers:[{Amount:0}]}
