playanimation @s[type=!Player] animation.finger_bearer.hit2
particle ds:punch_clashes ~~1~
playsound random.explode @a[r=10] ~~~ 0.2 1.5 
camerashake add @a[r=15] 0.5 0.08
tag @s add clashed2