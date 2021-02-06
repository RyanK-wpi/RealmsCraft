#support function for giving a player a class
#Author: Ryan Keller, Feb 2021

#clear previous class
function classbot:class/clear

#Tags
tag @s add Skirmisher

#apply 12 (6 hearts) health, remove 6 (3 hearts)
effect give @s minecraft:absorption 999999 2 true
effect give @s minecraft:instant_damage 1 0 true

#gain Skirmisher Class Equiptment
replaceitem entity @s armor.head minecraft:leather_helmet{Unbreakable:1} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{Unbreakable:1} 1
replaceitem entity @s armor.legs minecraft:leather_leggings{Unbreakable:1} 1
replaceitem entity @s armor.feet minecraft:leather_boots{Unbreakable:1} 1
replaceitem entity @s[scores={weapon=1}] hotbar.0 minecraft:stone_sword{Unbreakable:1} 1
replaceitem entity @s[scores={weapon=2}] hotbar.0 minecraft:stone_axe{Unbreakable:1} 1
replaceitem entity @s[scores={weapon=3}] hotbar.0 minecraft:shield{Unbreakable:1} 1
replaceitem entity @s hotbar.1 minecraft:bow{Unbreakable:1,Enchantments:[{id:"infinity",lvl:1}]} 1
give @s minecraft:arrow 1
