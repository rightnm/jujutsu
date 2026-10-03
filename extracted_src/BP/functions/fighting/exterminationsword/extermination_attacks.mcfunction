execute as @s[scores={move=1..},tag=wep1,tag=exterminationsword] run function fighting/exterminationsword/severing_slash
execute as @s[scores={move=1..},tag=wep2,tag=exterminationsword] run function fighting/exterminationsword/pierce_flourish
execute as @s[scores={move=1..},tag=wep3,tag=exterminationsword] run function fighting/exterminationsword/curse_exorcism
execute as @s[scores={move=1..},tag=wep4,tag=exterminationsword,tag=heavenlyrestriction] run function fighting/exterminationsword/ext_combo

execute as @e[type=ds:projectile,name=SeveringSlice] at @s run function fighting/exterminationsword/severing_slashb
