
execute as @p[hasitem={item=ds:cursed_eye},r=50] unless entity @e[tag=eye_trg,r=50] run tag @e[r=4.99,c=1] add eye_trg
execute as @p[hasitem={item=ds:cursed_eye},r=50] positioned ^^^5 run function relics/cursed_eye_target


