#support function for giving a player a class
#Author: Ryan Keller, Feb 2021

#clear previous class
function classbot:class/clear

#gain Caster Class Equiptment
replaceitem entity @s[scores={weapon=1}] hotbar.0 minecraft:golden_sword{Unbreakable:1} 1
replaceitem entity @s[scores={weapon=2}] hotbar.0 minecraft:golden_axe{Unbreakable:1} 1
replaceitem entity @s[scores={weapon=3}] hotbar.0 minecraft:shield{Unbreakable:1} 1
#replaceitem entity @s hotbar.1 minecraft:bow{Unbreakable:1,Enchantments:[id:"infinity",lvl:1]} 1
#give @s minecraft:arrow 1
