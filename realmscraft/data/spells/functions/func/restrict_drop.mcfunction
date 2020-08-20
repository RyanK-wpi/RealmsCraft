#support function for stopping players from dropiing items
#Author: Ryan Keller, Aug 2020

execute as @s run data modify entity @s Owner set from entity @s Thrower
execute as @s run data modify entity @s PickupDelay set value 0
tag @s add processed
