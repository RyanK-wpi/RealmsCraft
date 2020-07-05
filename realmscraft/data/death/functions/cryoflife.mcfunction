tag @e[distance=..12,type=zombie,scores={deathLine=1..}] add revive

execute if entity @e[tag=revive] run scoreboard players set @s click 0
execute as @e[tag=revive] run function death:revive
clear @s carrot_on_a_stick{display:{Name:"\"Cry of Life\"",Lore:["\"Spell Focus\""]}}
