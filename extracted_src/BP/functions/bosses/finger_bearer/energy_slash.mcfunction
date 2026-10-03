playanimation @s[scores={move=45}] animation.finger_bearer.slash

effect @s[scores={move=1..}] slowness 1 3 true
tp @s ~~~ facing @e[tag=!Frames,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=46,c=1]
tp @s ~~~


execute as @s[scores={move=25}] at @s positioned ^^^7 run function damages/explosion_damage
execute as @s[scores={move=25}] at @s positioned ^^^7 run function damages/rct_damage

execute as @s[scores={move=45}] at @s positioned ^^^13 run playsound beacon.activate @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=45}] at @s positioned ^^^13 run playsound portal.trigger @a[r=90] ~~~ 99999 4 99999

execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.99,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 30
execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.99,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 29
execute as @s[scores={move=25}] at @s positioned ^^^13 run scoreboard players add @e[r=12.99,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 12
execute as @s[scores={move=25}] at @s positioned ^^^13 run damage @e[r=12.99,tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 25 entity_attack entity @s
execute as @s[scores={move=25}] at @s run summon ds:red_reverse ^8^17^9
execute as @s[scores={move=25}] at @s run summon ds:red_reverse ^4^13^13
execute as @s[scores={move=25}] at @s run summon ds:red_reverse ^^9^9
execute as @s[scores={move=25}] at @s run summon ds:red_reverse ^4^4^4
execute as @s[scores={move=25}] at @s run summon ds:red_reverse ^8^^
execute as @s[scores={move=25}] at @s run effect @e[r=25] resistance 1 10 true
execute as @s[scores={move=25}] at @s run summon ds:red_reversal ^8^17^9
execute as @s[scores={move=25}] at @s run summon ds:red_reversal ^4^13^13
execute as @s[scores={move=25}] at @s run summon ds:red_reversal ^^9^9
execute as @s[scores={move=25}] at @s run summon ds:red_reversal ^4^4^4
execute as @s[scores={move=25}] at @s run summon ds:red_reversal ^8^^


execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.shock1 @a[r=90] ~~~ 99999 2.85 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.25 99999
execute as @s[scores={move=25}] at @s positioned ^^^13 run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=25}] at @s positioned ^^^13 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=24}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:ground_slam3 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:fingerer_ex1 ^^1^2

