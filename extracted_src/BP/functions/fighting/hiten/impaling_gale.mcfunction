playanimation @s[scores={move=60..}] animation.hiten.ab5

tag @s[scores={move=1..2}] remove wep5

execute as @s[scores={Stun=1..,move=46..}] at @s run function cancel_attackv2

scoreboard players set @s[scores={move=5..}] Move 8

scoreboard players set @s[scores={move=5..46}] Frames 8
scoreboard players set @s[scores={move=5..46}] Camera 8
execute as @s[scores={move=45}] at @s run tp @s ~~~

execute as @s[scores={move=46..49}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=60}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.5 9999
execute as @s[scores={move=50}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.5 9999

execute as @s[scores={move=45}] at @s run particle ds:heavenly_wind1 ^^1^1 
execute as @s[scores={move=45}] at @s run particle ds:heavenly_wind2 ^^1^1 
execute as @s[scores={move=45}] at @s run particle ds:heavenly_wind3 ^^1^1 
execute as @s[scores={move=45}] at @s run particle ds:heavenly_wind4 ^^1^1 
execute as @s[scores={move=45}] at @s run particle ds:heavenly_wind6 ^^1^1 
execute as @s[scores={move=45}] at @s run summon ds:hiten_spear ^^1.5^2 facing ^^^20 none hiten_spear
execute as @s[scores={move=45}] at @s run  camerashake add @a[r=100] 4 0.2 rotational
execute as @s[scores={move=45}] at @s run summon gg:impact_frame
execute as @s[scores={move=44}] at @s run function clear_impframe
execute as @s[scores={move=51}] at @s run playsound mob.heavy_swing @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=44}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=44}] at @s run playsound mob.wind @a[r=100] ^^1^25 99999 0.75 99999
execute as @s[scores={move=44}] at @s run playsound mob.wind @a[r=100] ^^1^16 99999 0.45 99999
execute as @s[scores={move=45}] at @s run playsound item.trident.throw @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=44}] at @s run playsound item.trident.thunder @a[r=100] ~~~ 99999 0.85 99999

effect @s slow_falling 1 1 true

execute as @s[scores={move=10}] at @s run camerashake add @a[r=25] 2 0.15 rotational
execute as @s[scores={move=10}] at @s run playsound item.trident.return @a[r=100] ~~1~ 9999 1 9999
execute as @s[scores={move=10}] at @s run playsound item.trident.return @a[r=100] ~~1~ 9999 0.8 9999
execute as @s[scores={move=8..10}] at @s run particle ds:hiten_stars ~~1~
execute as @s[scores={move=10}] at @s run particle ds:ground_slam2
execute as @s[scores={move=10}] at @s run particle ds:dirt0
execute as @e[name=hiten_spear] at @s run function fighting/hiten/hiten_spear