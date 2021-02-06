#support function for resetting death mechanics
#Author: Ryan Keller, Aug 2020

#Reset deaths/death mechanics
scoreboard players set @a deathLine 0
kill @e[name="death location"]
kill @e[tag=corpse]
execute as @a[tag=dead] run function rcq:tp/tavern
tag @a[tag=dead] remove dead
