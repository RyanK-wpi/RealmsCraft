#loop function for class selection
#Author: Ryan Keller, Feb 2021

#disable class bot for player
#classbot_pg=-2

#enable players to access triggers
execute as @a[gamemode=adventure,tag=!class_setup] run trigger classbot_pg add 0
scoreboard players enable @a[tag=class_setup] classbot_pg

#reset class selection
execute as @a[scores={classbot_pg=-1}] run function classbot:reset

#begin class selection process
execute as @a[scores={classbot_pg=0}] run function classbot:pg/01

#class fighter selected
execute as @a[scores={classbot_pg=10}] run function classbot:pg/11

#class Skirmisher or Caster selected
execute as @a[scores={classbot_pg=20,weapon=0}] run function classbot:pg/02
execute as @a[scores={classbot_pg=30,weapon=0}] run function classbot:pg/02

#After picking weapon, move on to next page
execute as @a[scores={classbot_pg=20,weapon=1..}] run scoreboard players add @s classbot_pg 1
execute as @a[scores={classbot_pg=30,weapon=1..}] run scoreboard players add @s classbot_pg 1

#Skirmisher selection page
execute as @a[scores={classbot_pg=21}] run function classbot:pg/22

#skirmisher subclass selection
execute as @a[scores={classbot_pg=23}] run function classbot:pg/24
execute as @a[scores={classbot_pg=25}] run function classbot:pg/26
execute as @a[scores={classbot_pg=27}] run function classbot:pg/28

#Caster selection page
execute as @a[scores={classbot_pg=31}] run function classbot:pg/32

#Caster Subclass selection
execute as @a[scores={classbot_pg=33}] run function classbot:pg/34
execute as @a[scores={classbot_pg=35}] run function classbot:pg/36
execute as @a[scores={classbot_pg=37}] run function classbot:pg/38
execute as @a[scores={classbot_pg=39}] run function classbot:pg/310
execute as @a[scores={classbot_pg=311}] run function classbot:pg/312
execute as @a[scores={classbot_pg=313}] run function classbot:pg/314
execute as @a[scores={classbot_pg=315}] run function classbot:pg/316
execute as @a[scores={classbot_pg=317}] run function classbot:pg/318
execute as @a[scores={classbot_pg=319}] run function classbot:pg/320

#Caster Confirmation pages
execute as @a[scores={classbot_pg=321}] run function classbot:pg/322
execute as @a[scores={classbot_pg=323}] run function classbot:pg/324
execute as @a[scores={classbot_pg=325}] run function classbot:pg/326
execute as @a[scores={classbot_pg=327}] run function classbot:pg/328
execute as @a[scores={classbot_pg=329}] run function classbot:pg/330
execute as @a[scores={classbot_pg=331}] run function classbot:pg/332
