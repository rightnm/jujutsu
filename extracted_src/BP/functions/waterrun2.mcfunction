camerashake add @a[r=10] 0.3 0.08
playanimation @s animation.waterrun
particle ds:waterrun1 ~~0.3~

particle ds:waterrun2 ~~0.3~

particle ds:waterrun3 ~~0.3~

particle ds:waterrun4 ~~0.1~
playsound random.splash @a ~~~ 0.1 2
scriptevent ds:upslightly2
execute as @s[type=player] run scriptevent ds:knockback 3.3
