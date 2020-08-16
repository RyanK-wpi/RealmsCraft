#loop function for cooldowns
#Author: Ryan Keller, Aug 2020

scoreboard players remove @a[scores={cooldownHeal=1..}] cooldownHeal 1
scoreboard players remove @a[scores={cooldownRA=1..}] cooldownRA 1
scoreboard players remove @e[scores={cooldownLight=1..}] cooldownLight 1
scoreboard players remove @a[scores={cooldownMM=1..}] cooldownMM 1
scoreboard players remove @a[scores={cooldownEnfeeble=1..}] cooldownEnfeeble 1
scoreboard players remove @a[scores={cooldownLB=1..}] cooldownLB 1
scoreboard players remove @a[scores={cooldownGuidance=1..}] cooldownGuidance 1
scoreboard players remove @a[scores={cooldownVision=1..}] cooldownVision 1
scoreboard players remove @a[scores={cooldownRD=1..,raisedeadcount=..4}] cooldownRD 1
scoreboard players remove @a[scores={cooldownSoL=1..}] cooldownSoL 1

execute as @a[scores={cooldownHeal=1}] run function spells:cooldown/heal_limb
execute as @a[scores={cooldownRA=1}] run function spells:cooldown/repair_armor
execute as @e[tag=light] run function spells:cooldown/light
execute as @a[tag=mm] run function spells:cooldown/magic_missile
execute as @a[scores={cooldownEnfeeble=1}] run function spells:cooldown/enfeeble_being
execute as @a[scores={cooldownLB=1}] run function spells:cooldown/lightning_bolt
execute as @a[scores={cooldownGuidance=1}] run function spells:cooldown/guidance
execute as @a[scores={cooldownVision=1}] run function spells:cooldown/vision
execute as @a[scores={cooldownRD=1}] run function spells:cooldown/raise_dead
execute as @a[scores={cooldownSoL=1}] run function spells:cooldown/seed_of_life
execute as @a[scores={cooldownRegen=1..}] run function spells:cooldown/regeneration
