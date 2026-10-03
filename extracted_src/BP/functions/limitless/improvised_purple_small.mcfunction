kill @e[family=projectile,r=5]
function damages/deletion_damage
particle ds:hollow_purple_impact ~~1~
particle ds:hollow_purple_make1 ~~1~
particle ds:hollow_purple_make2 ~~1~
particle ds:hollow_purple6 ~~-2.8~
particle ds:hollow_purple6 ~~-2.8~
particle ds:hollow_purple7 ~~-2.8~
particle ds:hollow_purple7 ~~-2.8~
particle ds:hollow_purple8 ~~-2.8~
particle ds:improvised_purple_end_small1 ~~1~
particle ds:improvised_purple_end6 ~~1~
particle ds:improvised_purple_small1 ~~1~
particle ds:improvised_purple_shockwave_small1 ~~1~
particle ds:improvised_purple_shockwave_small2 ~~1~
playsound mob.blitz2 @a[r=50] ~~~ 9999 0.85 9999
playsound mob.electricity @a[r=50] ~~~ 9999 0.5 9999
playsound mob.electricity @a[r=50] ~~~ 9999 0.5 9999
playsound mob.electricity @a[r=50] ~~~ 9999 0.5 9999
summon ds:red_reverse
camerashake add @a[r=50] 4 0.25
effect @a[r=50] night_vision 2 1 true
playsound music.bassboost @a[r=50] ~~~ 9999 1.8 9999
damage @e[tag=!Frames,r=10] 40 override
summon ds:red_reversal