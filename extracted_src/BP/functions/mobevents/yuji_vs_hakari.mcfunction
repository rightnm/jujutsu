summon ds:yuji_itadori ~5~~
summon ds:hakari ~-5~~
execute positioned ~5~~ as @e[type=ds:yuji_itadori,r=1,c=1] positioned ~-10~~ run damage @e[type=ds:hakari,r=1,c=1] 0 entity_attack entity @s
execute positioned ~5~~ run spreadplayers ~ ~ 35 45 @e[type=ds:yuji_itadori,r=1,c=1]
execute positioned ~-5~~ run spreadplayers ~ ~ 35 45 @e[type=ds:hakari,r=1,c=1]
playsound random.explode @a ~~~ 9999 0.25 9999