#support function for casting "magic missile"
#Author: Ryan Keller, Aug 2020

#check if player has thrown a magic missile (instead of a normal snowball)
execute as @s positioned ~ ~1.6 ~ if entity @e[distance=..0.6,nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:"\"Magic Missile\""}}}}] run scoreboard players remove @s MMCount 1
scoreboard players remove @s castMM 1

#if the player is out of magic missiles, give them a placeholder item
execute if entity @s[scores={MMCount=0}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Magic Missile on Cooldown\"",Lore:["\"Spell Focus\""]}} 1
