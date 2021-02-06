#cooldown function for "lightning bolt"
#Author: Ryan Keller, Aug 2020

#give cooldown item
execute as @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] at @s run tag @e[type=minecraft:trident,distance=..5] add lightning_bolt
execute as @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Lightning Bolt on Cooldown\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s[scores={cooldownLB=0},nbt=!{Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] cooldownLB 1200

#reset cooldown if player picks up item (Example, moved inventory spaces)
#execute if entity @s[scores={cooldownLB=1..},nbt={Inventory:[{id:"minecraft:trident",tag:{display:{Name:"\"Lightning Bolt\""}}}]}] run scoreboard players set @s cooldownLB 0

#return spell
clear @s[scores={cooldownLB=1}] minecraft:barrier{display:{Name:"\"Lightning Bolt on Cooldown\""}}
give @s[scores={cooldownLB=1}] minecraft:trident{display:{Name:"\"Lightning Bolt\"",Lore:["\"Spell Attack\""]},AttributeModifiers:[{Amount:0}]}
