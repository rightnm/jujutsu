scoreboard players set @s Stun 50
scoreboard players set @s[scores={Flourish=1..}] Flourish 0
tag @s[tag=flourish] remove flourish
tag @s[tag=fallingflourish] remove fallingflourish
particle ds:ground_slam2 ~~1~
particle ds:rubble3 ~~1~
particle ds:large_impact1 ~~1~
particle ds:large_imapct2 ~~1~
playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.7 99999
playsound mob.wither.break_block @a[r=50] ~~~ 99999 2.7 99999
playsound random.explode @a[r=50] ~~~ 99999 1.25 99999
camerashake add @a[r=10] 2 0.15
playanimation @s animation.wallbang