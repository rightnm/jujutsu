tellraw @a[r=50] {"rawtext":[{"text":"§l§4Stop Cheating."}]}
execute as @e[r=500,type=!ds:void_reactor] at @s run event entity @s ds:disappear
camera @a[r=20] fade time 0 0.5 0.5 color 0 0 0
stopsound @a[r=200]
