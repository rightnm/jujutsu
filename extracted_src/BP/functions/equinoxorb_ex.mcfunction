
kill @s
kill @e[name=equinoxorbtrg]
damage @e[r=20] 50 override
kill @e[type=item,r=150]
kill @e[type=xp_orb,r=150]
camerashake add @a 4 0.15 rotational
summon gg:impact_frame
particle ds:equinox_orb_ex
particle ds:equinox_orb_ex2
particle ds:invert
playsound mob.distort2 @a ~~~ 99999 0.5 99999
playsound mob.shock1 @a ~~~ 99999 0.5 99999
playsound mob.shock1 @a ~~~ 99999 0.25 99999
execute as @p[tag=griefable] run effect @e[r=25] resistance 1 25 true
execute as @p[tag=griefable] run summon ds:red_reversal
execute as @p[tag=griefable] run summon ds:red_reversal
execute as @p[tag=griefable] run summon ds:red_reversal
execute as @p[tag=griefable] run summon ds:red_reversal
execute as @p[tag=griefable] run summon ds:red_reversal
execute as @p[tag=griefable] run summon ds:red_reversal
fill ~5~5~5~-5~-5~-5 air
kill @s