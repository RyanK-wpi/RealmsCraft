bossbar add bossbar:boss "The Necromancer"

bossbar set bossbar:boss color red
bossbar set bossbar:boss style progress
execute store result bossbar bossbar:boss max run data get entity @p[tag=boss] Health

tell @a[team=marshals] Bossbar setup complete!