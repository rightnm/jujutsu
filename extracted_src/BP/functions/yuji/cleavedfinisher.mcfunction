playanimation @s[tag=cleaved_finisher,scores={dying=1..}] animation.stunned
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run playsound mob.swordslash @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run summon gg:impact_frame
execute as @s[scores={dying=29},tag=cleaved_finisher] at @s run particle ds:invert ^^1^
execute as @s[scores={dying=29},tag=cleaved_finisher] at @s run function clear_impframe

execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run camerashake add @a[r=22] 0.2 0.08

execute as @s[scores={dying=5..10},tag=cleaved_finisher] at @s run camerashake add @a[r=22] 0.4 0.08
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run playsound mob.slice2 @a ~~~ 0.2 1.5

execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1.5
execute as @s[scores={dying=27},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1.75
execute as @s[scores={dying=25},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1
execute as @s[scores={dying=20},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1.33
execute as @s[scores={dying=19},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 2
execute as @s[scores={dying=15},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1
execute as @s[scores={dying=12},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1.15
execute as @s[scores={dying=8},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 1.25
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run playsound mob.slice @a ~~~ 0.2 0.75
execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run playsound mob.swordslash @a ~~~ 0.2 2.25

execute as @s[scores={dying=6},tag=cleaved_finisher] at @s run playsound mob.slice2 @a ~~~ 0.2 0.8

execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:heian_impact1 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave1 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave2 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave3 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave4 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave5 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave6 ~~1~


execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:heian_impact1 ~~1~
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave1 ~~1~
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave2 ~~1~
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave3 ~~1~
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave4 ~~1~
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave5 ~~1~
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:soul_cleave6 ~~1~

execute as @s[scores={dying=4},tag=cleaved_finisher] at @s run playsound mob.get @a ~~1~  9999900 1 999900

execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher0 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~
execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher2 ~~1~
execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher3 ~~1~
execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher4 ~~1~
execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher5 ~~1~
execute as @s[scores={dying=5..30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher6 ~~1~
execute as @s[scores={dying=30},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=27},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=25},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=22},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=21},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=17},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=14},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=10},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=7},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher7 ~~1~

execute as @s[scores={dying=25},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~
execute as @s[scores={dying=23},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~

execute as @s[scores={dying=19},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~
execute as @s[scores={dying=17},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~

execute as @s[scores={dying=14},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~
execute as @s[scores={dying=12},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~

execute as @s[scores={dying=8},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~
execute as @s[scores={dying=6},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher1 ~~1~

execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher0 ~~1~
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher ~~1~

execute as @s[scores={dying=1..5},tag=cleaved_finisher] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={dying=1..6},tag=cleaved_finisher] at @s run particle ds:blood_2 ~~1~
execute as @s[scores={dying=1..6},tag=cleaved_finisher] at @s run particle ds:blood_splat1 ~~1~

execute if entity @e[tag=yuji_awakened,tag=!spectator,r=50,c=1] run particle ds:turbo_intensity4 ~~1~

effect @s[scores={dying=1..5},tag=cleaved_finisher] invisibility 2 1 true

execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run playsound mob.blood @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run camerashake add @a[r=25] 4 0.15 rotational
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run particle ds:cleaved_finisher ~~1~
execute as @s[scores={dying=5},tag=cleaved_finisher] at @s run summon gg:impact_frame
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s run particle ds:invert ^^1^
execute as @s[scores={dying=1..3},tag=cleaved_finisher] at @s run kill @s 
execute as @s[scores={dying=4},tag=cleaved_finisher] at @s run function clear_impframe




