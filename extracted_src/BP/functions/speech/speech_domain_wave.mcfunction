summon ds:projectile "speech_domain_wave" ~~-40~
playsound mob.cursed_speech @a[r=60] ~~-40~ 999999 0.33 999999

execute as @s[tag=resonance_dontmove] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_dontmove
execute as @s[tag=resonance_runaway] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_runaway
execute as @s[tag=resonance_return] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_return
execute as @s[tag=resonance_sleep] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_sleep
execute as @s[tag=resonance_heal] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_heal
execute as @s[tag=resonance_break] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_break
execute as @s[tag=resonance_blastaway] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_blastaway
execute as @s[tag=resonance_getcrushed] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_getcrushed
execute as @s[tag=resonance_plummet] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_plummet
execute as @s[tag=resonance_die] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_die
execute as @s[tag=resonance_poo] positioned ~~-40~ run tag @e[type=ds:projectile,name="speech_domain_wave",r=5,c=1] add resonance_poo

