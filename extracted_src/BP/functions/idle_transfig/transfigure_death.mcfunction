playanimation @s[scores={dying=40..41}] animation.exploding
execute as @s[scores={dying=40}] at @s run playsound mob.disfigure1 @a[r=50] ~~1~ 99999 0.7 99999

execute as @s[scores={dying=25}] at @s run summon ds:body_explode ~~~ facing ~~~2
execute as @s[scores={dying=25}] at @s run summon ds:body_explode ~~~ facing ^2^^1 
execute as @s[scores={dying=27}] at @s run playsound mob.blood @a[r=50] ~~1~ 99999 0.7 99999
execute as @s[scores={dying=25}] at @s run camerashake add @a[r=10] 2 0.25
execute as @s[scores={dying=30}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={dying=25}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={dying=25}] at @s run particle ds:transfigure_death ~~1~
execute as @s[scores={dying=24..25}] at @s run particle ds:blood_splat ~~~
execute as @s[scores={dying=24..25}] at @s run particle ds:blood_splat ~~~
execute as @s[scores={dying=24..25}] at @s run particle ds:blood_splat2 ~~~

execute as @s[scores={dying=24..25},tag=yujis_itadori_brother] at @s if entity @e[family=yuji,r=50] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=50] run function idle_transfig/start_yuji_rage_cutscene

execute as @s[scores={dying=24..25},tag=yujis_friend] at @s if entity @e[family=yuji,r=50] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=50] run function idle_transfig/start_yuji_rage_cutscene

execute as @s[scores={dying=24..25},tag=yujis_friend] at @s if entity @p[hasitem={item=ds:yuji_fists}] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=50] run function idle_transfig/start_yuji_rage_cutscene

effect @s[scores={dying=20..24}] invisibility 5 1 true

tag @s[scores={dying=0..3}] remove transfigure_death