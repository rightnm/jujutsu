execute as @s[family=!special_grade,family=!grade1,family=!npc,family=!projectile,family=!purecurse,family=!damage,type=!item,type=!xp_orb,type=!falling_block,family=!heroic] unless entity @s[scores={grade=4..}] run damage @s 9999 override
particle ds:blood_mist
particle ds:blood_splat
particle ds:blood
particle ds:agito_dash1 ~~-2~
particle ds:turbo_intensity4 ~~1~
playsound mob.sword @a[r=100] ~~~ 99999 0.85 99999
particle ds:beru_speedblitz ~~1~
damage @s[type=ds:haruta] 999
damage @s[scores={hakarimode=1..1000}] 400

scoreboard players set @s Stun 20
scoreboard players add @s Evade 5
scoreboard players set @s Hit 1
damage @s 25 override


