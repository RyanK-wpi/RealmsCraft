#function that emulates the "Regeneration" spell
#To use this spell, hold shift until you receive a message, then your corpse will automatically begin regenerating after death.
#author: Ian Pushee, Ryan Keller, Aug 2020

#give the players corpse a regeration timer
scoreboard players set @e[type=zombie,x=1,y=1,z=2,distance=..2] regenerateTime 2400
tag @e[type=zombie,x=1,y=1,z=2,distance=..2] add regenerate
