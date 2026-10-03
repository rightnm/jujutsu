particle ds:ground_slam1
particle ds:ground_slam1
particle ds:ground_slam2
particle ds:ground_slam3
particle ds:leap
camerashake add @a[r=25] 2 0.2
playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.5 9999
playsound mob.wither.shoot @a[r=25] ~~~ 9999 0.5 9999
scriptevent ds:leapforwards
playanimation @s animation.hiten.leap
scoreboard players set @s Disabled 20
effect @s slow_falling 10 1 true
tag @s add hitenfly