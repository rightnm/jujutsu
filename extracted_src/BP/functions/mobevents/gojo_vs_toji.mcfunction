summon ds:student_gojo ~5~~
summon ds:toji ~-5~~
execute positioned ~-5~~ as @e[type=ds:toji,r=1,c=1] positioned ~10~~ run damage @s 0 entity_attack entity @e[type=ds:student_gojo,r=1,c=1]
execute positioned ~5~~ run spreadplayers ~ ~ 35 45 @e[type=ds:student_gojo,r=1,c=1]
execute positioned ~-5~~ run spreadplayers ~ ~ 35 45 @e[type=ds:toji,r=1,c=1]
playsound random.explode @a ~~~ 9999 0.25 9999