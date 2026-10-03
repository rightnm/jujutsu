playanimation @s[scores={move=35}] animation.executioners_ab4

tag @e[scores={move=1..2}] remove wep4

scoreboard players set @e[scores={move=7..22}] Camera 5
scoreboard players set @e[scores={move=7..24}] Frames 5
scoreboard players set @e[scores={move=7..}] Move 4

scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

scoreboard players set @e[scores={move=19..22}] atk 2
execute as @s[scores={move=23..25}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=19..23}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=20}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999

execute as @s[scores={move=20}] at @s run playsound portal.travel @a[r=40] ~~~ 9999 8 9999
execute as @s[scores={move=22}] at @s run playsound mob.wither.shoot @a[r=40] ~~~ 9999 0.95 9999
execute as @s[scores={move=20}] at @s run playsound mob.slash1 @a[r=40] ~~~ 9999 1.2 9999


execute as @s[scores={move=30..35}] at @s if  block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=30..35}] at @s if  block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=30..35}] at @s if block ~~-0.05~ air run tp @s ~~-0.05~
execute as @s[scores={move=30..35}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=30..35}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=23}] at @s  run tp @s @s
execute as @s[scores={move=1..18}] at @s  run tp @s @s
execute as @s[scores={move=7..}] at @s  run scoreboard objectives add quickdodge dummy
execute as @s[scores={move=19..22}] at @s  run scoreboard players random @e[type=!player,tag=deathsentence,r=3.5,scores={strength=0..10}] quickdodge 9 10
execute as @s[scores={move=19..22}] at @s  run scoreboard players random @e[type=!player,tag=deathsentence,r=3.5,scores={strength=11..20}] quickdodge 7 10
execute as @s[scores={move=19..22}] at @s  run scoreboard players random @e[type=!player,tag=deathsentence,r=3.5,scores={strength=21..30}] quickdodge 5 10
execute as @s[scores={move=19..22}] at @s  run scoreboard players random @e[type=!player,tag=deathsentence,r=3.5,scores={strength=31..40}] quickdodge 4 10
execute as @s[scores={move=19..22}] at @s  run scoreboard players random @e[type=!player,tag=deathsentence,r=3.5,scores={strength=41..44}] quickdodge 2 10
execute as @s[scores={move=19..22}] at @s  run scoreboard players set @e[type=!player,tag=deathsentence,r=3.5,scores={strength=45..}] quickdodge 1
execute as @s[scores={move=19..22}] at @s  run tag @e[r=3.5,scores={quickdodge=1..8}] add Frames
execute as @s[scores={move=19..22}] at @s  run scoreboard players set @e[r=3.5,scores={quickdodge=1..8}] Frames 14
execute as @s[scores={move=19..22}] at @s  run playanimation @e[r=3.5,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={move=19..22}] at @s  run playanimation @e[r=3.5,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={move=19..22}] at @s  run playanimation @e[r=3.5,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={move=19..22}] at @s  run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={move=19..22}] at @s  run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=1]
execute as @s[scores={move=19..22}] at @s  run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0

execute as @s[scores={move=21}] at @s run playsound beacon.power @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=19..22}] at @s run tag @e[tag=!Frames,r=3.5] add swiftflash

execute as @s[scores={move=19..22}] at @s  if entity @e[tag=!Frames,r=3.5] run playsound mob.slice @a[r=59] ~~~ 9999 1.75 9999
execute as @s[scores={move=19..22}] at @s  if entity @e[tag=!Frames,r=3.5] run playsound mob.sword @a[r=50] ~~~ 9999 2 9999

execute as @s[scores={move=10..18}] at @s run camera @s set minecraft:free pos ^1.5 ^0.25 ^3 facing @e[tag=swiftflash,c=1]
execute as @s[scores={move=14}] at @s run execute as @e[tag=swiftflash,r=20] at @s run particle ds:judgement_stars ~~1.7~
execute as @s[scores={move=14}] at @s run execute as @e[tag=swiftflash,r=20] at @s run particle ds:swift_flash1 ~~1.65~
execute as @s[scores={move=14}] at @s run playanimation @e[tag=swiftflash,r=20] animation.stunned i 1
execute as @s[scores={move=14}] at @s run tag @e[tag=swiftflash,r=20,tag=!soul_damage] add soul_damage
execute as @s[scores={move=14}] at @s run damage @e[tag=swiftflash,r=20] 20 suicide
execute as @s[scores={move=14}] at @s run scoreboard players operation @e[tag=swiftflash,r=20] damage += @s damageadd
execute as @s[scores={move=14}] at @s run execute as @e[tag=swiftflash,r=20] at @s run playsound portal.travel @a[r=30] ~~~ 9999 7.6 9999
execute as @s[scores={move=14}] at @s run execute as @e[tag=swiftflash,r=20] at @s run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=14}] at @s run execute as @e[tag=swiftflash,r=20] at @s run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=11}] at @s run effect @a[r=20] night_vision 0 20 true
execute as @s[scores={move=14}] at @s run execute as @e[tag=swiftflash,r=20,tag=deathsentence] at @s run function judgeman/death_sentence_hit
execute as @s[scores={move=4..14}] at @s run tag @e[tag=swiftflash] remove swiftflash