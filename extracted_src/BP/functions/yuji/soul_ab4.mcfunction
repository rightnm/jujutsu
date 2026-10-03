playanimation @s[scores={move=35..36}] animation.soul_shrine.ab4

playanimation @s[scores={move=28..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=28..,Stun=1..}] move 2

execute as @s[scores={move=28..29}] at @s if block ~~-0.2~ air run playanimation @s animation.cancel
execute as @s[scores={move=28..29}] at @s if block ~~-0.2~ air run scoreboard players set @s move 2

tag @s[scores={move=1..2},tag=form4] remove form4

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=17..18}] Frames 8


execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 unless block ~~~ water unless block ~~~ lava unless block ~~~ bedrock unless block ~~~ barrier if entity @p[tag=griefable] run setblock ~~~ air
execute as @s[scores={move=28}] at @s positioned ^-0.5^-0.6^-0.5 unless block ~~~ water unless block ~~~ lava unless block ~~~ bedrock unless block ~~~ barrier if entity @p[tag=griefable] run setblock ~~~ air

execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 run particle ds:rubble3
execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 run particle ds:crater
execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 run particle ds:ground_slam2
execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 run camerashake add @a[r=15] 2 0.15
execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 run playsound random.explode @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=28}] at @s positioned ^-0.5^^-0.5 run playsound mob.wither.break_block @a[r=100] ~~~  999999 0.8 9999999
execute as @s[scores={move=27..29}] at @s positioned ^-0.5^^-0.5 run playsound mob.slash1 @a[r=100] ~~~  999999 1.8 9999999
execute as @s[scores={move=28},has_property={property:heart=!4}] at @s run event entity @s rock_item
execute as @s[scores={move=17},has_property={property:heart=4}] at @s run event entity @s heart_off

execute as @s[scores={move=18}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=18}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=20}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=22}] at @s run playsound mob.heavy_swing @a[r=100] ~~~ 99999 1.15 99999
execute as @s[scores={move=18}] at @s run camerashake add @a[r=25] 3 0.25
execute as @s[scores={move=18}] at @s run particle ds:large_impact1 ^^1^1 
execute as @s[scores={move=18}] at @s run particle ds:ground_slam2
execute as @s[scores={move=18}] at @s run particle ds:heavy_impact2 ^^1^1 



execute as @s[scores={move=17}] at @s run summon ds:rock_throw ^^1^1 facing ^^^100
execute as @s[scores={move=17}] at @s positioned ^^1^50 run summon ds:projectile rockthrow_trg