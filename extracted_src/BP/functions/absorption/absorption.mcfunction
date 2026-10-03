scoreboard players set @e[scores={absorption=3001..}] absorption 3000

scoreboard players add @a[scores={absorption=1..}] absorption_timer 1
scoreboard players remove @a[scores={absorption_timer=16..,Energy=2..}] Energy 2
scoreboard players remove @a[scores={absorption_timer=16..,Energy=200..}] Energy 3
scoreboard players remove @a[scores={absorption_timer=16..,Energy=500..}] Energy 4
scoreboard players remove @a[scores={absorption_timer=16..,Energy=1000..}] Energy 8
scoreboard players remove @a[scores={absorption_timer=16..,absorption=2..}] absorption 2
scoreboard players remove @a[scores={absorption_timer=16..,absorption=50..}] absorption 4
scoreboard players remove @a[scores={absorption_timer=16..,absorption=150..}] absorption 8
scoreboard players set @a[scores={absorption_timer=16..}] absorption_timer 0
scoreboard players set @a[scores={absorption=1}] absorption 0

#Calculate damage taken
execute as @a[tag=absorption] run scoreboard players operation @s damage_taken = @s prev_health
execute as @a[tag=absorption] run scoreboard players operation @s damage_taken -= @s detect_health

#Apply only if positive (damage taken)
execute as @a[tag=absorption,m=!spectator] if score @s damage_taken matches 1.. at @s run playsound mob.electricity @a[r=15] ~~~ 9999 1.35 9999
execute as @a[tag=absorption] if score @s damage_taken matches 1.. run scoreboard players operation @s absorption += @s damage_taken

#Update prev_health (delayed 1 tick)
execute as @a[tag=absorption] run scoreboard players operation @s prev_health = @s detect_health



scoreboard players add @s[tag=absorption,scores={Sneaking=5..50,move=0},tag=!nocts,m=c] absorption 1
scoreboard players add @s[tag=absorption,scores={Sneaking=51..100,move=0},tag=!nocts,m=c] absorption 5
scoreboard players add @a[tag=absorption,scores={Sneaking=101..,move=0},tag=!nocts,m=c] absorption 25


execute as @a[scores={absorption=1..},tag=absorption,m=!spectator] at @s run particle ds:absorption
execute as @a[scores={absorption=51..},tag=absorption,m=!spectator] at @s run particle ds:absorption
execute as @a[scores={absorption=101..},tag=absorption,m=!spectator] at @s run particle ds:absorption6






