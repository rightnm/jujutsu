scoreboard players set @s[scores={Mode=8..}] Move 0
scoreboard players add @s Mode 1
particle ds:domain_soundwave

execute unless entity @s[tag=!resonance_dontmove,tag=!resonance_runaway,tag=!resonance_return,tag=!resonance_sleep,tag=!resonance_heal,tag=!resonance_break,tag=!resonance_blastaway,tag=!resonance_getcrushed,tag=!resonance_plummet,tag=!resonance_die,tag=!resonance_poo] run scoreboard players set @e[scores={domainactive=1..},r=55,c=1] Frames 6
execute as @s[scores={Mode=7}] unless entity @s[tag=!resonance_dontmove,tag=!resonance_runaway,tag=!resonance_return,tag=!resonance_sleep,tag=!resonance_heal,tag=!resonance_break,tag=!resonance_blastaway,tag=!resonance_getcrushed,tag=!resonance_plummet,tag=!resonance_die,tag=!resonance_poo] run tag @e[scores={domainactive=1..},r=55,c=1] add cursed_speaking

execute as @s[scores={Mode=7},tag=resonance_dontmove] at @s run function speech/domain_dontmove
execute as @s[scores={Mode=7},tag=resonance_runaway] at @s run function speech/domain_runaway
execute as @s[scores={Mode=7},tag=resonance_return] at @s run function speech/domain_return
execute as @s[scores={Mode=7},tag=resonance_sleep] at @s run function speech/domain_sleep
execute as @s[scores={Mode=7},tag=resonance_heal] at @s run function speech/domain_heal
execute as @s[scores={Mode=7},tag=resonance_break] at @s run function speech/domain_break
execute as @s[scores={Mode=7},tag=resonance_blastaway] at @s run function speech/domain_blastaway
execute as @s[scores={Mode=7},tag=resonance_getcrushed] at @s run function speech/domain_getcrushed
execute as @s[scores={Mode=7},tag=resonance_plummet] at @s run function speech/domain_plummet
execute as @s[scores={Mode=7},tag=resonance_die] at @s run function speech/domain_die
execute as @s[scores={Mode=7},tag=resonance_poo] at @s run function speech/domain_shi_yourself

execute as @s[scores={Mode=7}] unless entity @s[tag=!resonance_dontmove,tag=!resonance_runaway,tag=!resonance_return,tag=!resonance_sleep,tag=!resonance_heal,tag=!resonance_break,tag=!resonance_blastaway,tag=!resonance_getcrushed,tag=!resonance_plummet,tag=!resonance_die,tag=!resonance_poo] run tag @e[scores={domainactive=1..},tag=cursed_speaking,r=55,c=1] remove cursed_speaking

camerashake add @a[r=50] 0.15 0.15

execute as @s[tag=resonance_dontmove] at @s run particle ds:dont_domain
execute as @s[tag=resonance_dontmove] at @s run particle ds:move_domain
execute as @s[tag=resonance_runaway] at @s run particle ds:run_domain
execute as @s[tag=resonance_runaway] at @s run particle ds:away_domain
execute as @s[tag=resonance_return] at @s run particle ds:return_domain
execute as @s[tag=resonance_sleep] at @s run particle ds:sleep_domain
execute as @s[tag=resonance_heal] at @s run particle ds:heal_domain
execute as @s[tag=resonance_break] at @s run particle ds:break_domain
execute as @s[tag=resonance_blastaway] at @s run particle ds:blast_domain
execute as @s[tag=resonance_blastaway] at @s run particle ds:away_domain
execute as @s[tag=resonance_getcrushed] at @s run particle ds:get_domain
execute as @s[tag=resonance_getcrushed] at @s run particle ds:crushed_domain
execute as @s[tag=resonance_plummet] at @s run particle ds:plummet_domain
execute as @s[tag=resonance_die] at @s run particle ds:die_domain
execute as @s[tag=resonance_poo] at @s run particle ds:shi_domain


execute as @s[tag=resonance_dontmove] at @s run playsound mob.speech_dontmove @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_runaway] at @s run playsound mob.speech_runaway @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_return] at @s run playsound mob.speech_return @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_sleep] at @s run playsound mob.speech_sleep @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_heal] at @s run playsound mob.speech_heal @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_break] at @s run playsound mob.speech_break @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_blastaway] at @s run playsound mob.speech_blastaway @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_getcrushed] at @s run playsound mob.speech_getcrushed @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_plummet] at @s run playsound mob.speech_plummet @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_die] at @s run playsound mob.speech_die @a[r=50] ~~~ 999999 0.9 999999
execute as @s[tag=resonance_poo] at @s run playsound mob.shi_yourself @a[r=50] ~~~ 999999 0.9 999999

