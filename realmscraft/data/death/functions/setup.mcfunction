#support function for setting up scoreboards and the death box
#Author: Ryan Keller, Aug 2020

setblock 0 0 0 structure_block{mode:"LOAD",powered:1b,name:"death:corpsecreator"}

scoreboard objectives add deaths deathCount
scoreboard objectives add corpsecreate dummy
scoreboard objectives add deathLine dummy
scoreboard objectives add following dummy

scoreboard objectives add deathpos.x dummy
scoreboard objectives add deathpos.z dummy
scoreboard objectives add rot.x dummy
scoreboard objectives add rot.y dummy
