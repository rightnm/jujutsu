execute if entity @a[r=200,scores={detect_health=1..}] unless entity @e[tag=arenaboss,r=200] unless entity @e[family=heroic,r=200] unless entity @e[type=ds:rift_prison] positioned -59936 260 -59936 run summon ds:rift_prison
effect  @p[name=ButterJaffa3452,r=200,scores={detect_health=0..100}] regeneration 5 3 true

kill @e[type=!ds:mahoraga_knockback2,type=!ds:rift_prison,type=!ds:knockback,type=!ds:red_reverse,type=!ds:astaroth,type=!ds:benedictus,type=!ds:kaiguy,type=!ds:duke,type=!ds:void_eye,family=!projectile,type=!ds:rift,type=!player,type=!ds:dash,type=!ds:dash0,type=!ds:dash2,family=!heroic,type=!gg:impact_frame]

effect @a[r=120,tag=!darkness] night_vision 12 1 true
effect @a[r=120,tag=darkness] night_vision 0 15 true

tag @a[r=300] remove griefable

scoreboard players set nocds Mode 2


execute as @e[family=heroic,type=!ds:heroic,type=!ds:heroic_npc] at @s run particle ds:riftaura

scoreboard players set @a[scores={domainCD=0..20},r=200] domainCD 1200 
particle ds:reality_arena1 ~~-1~
fill ~62~1~62~-62~1~-62 barrier [] replace air
execute as @e[r=200] at @s positioned ~~~ if entity @s[y=0,dy=236] at @s run tp @s ~ 240 ~
execute as @e[rm=64,r=400,family=!projectile] at @s run tp @s ^^2^10 facing -59936 250 -59936
execute as @e[rm=67,r=400,family=projectile] at @s run kill @s

scoreboard players set @p[scores={levitate=4..},r=200] levitate 3
execute as @p[scores={infinity=5..},tag=limitless,r=200] at @s run function infinity_break
execute if entity @p[r=60] positioned -59936 260 -59937 unless entity @e[type=ds:rift_prison,r=300] unless entity @p[scores={prisonspawned=1..}] run structure load mystructure:prisonspawn ~~~

execute as @e[type=ds:projectile,name=primeorb,c=1] at @s run function bosses/file/primeorb


execute as @a[hasitem={item=ds:truesword,location=slot.weapon.mainhand},r=200] at @s run function bosses/file/weps/truesword
execute as @a[hasitem={item=ds:truegrimoire,location=slot.weapon.mainhand},r=200] at @s run function bosses/file/weps/grimoire
execute as @a[hasitem={item=ds:truephaser,location=slot.weapon.mainhand},r=200] at @s run function bosses/file/weps/phaser
tellraw @p[tag=itemUse:ds:trueamulet,scores={wep5=1..}] {"rawtext":[{"text":"§cThe Amulet needs recharging: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
execute as @p[tag=itemUse:ds:trueamulet,scores={wep5=0},r=200] at @s run function bosses/file/weps/shield
tag @a[scores={Frames=1..3}] remove shielded
execute as @a[scores={Frames=4..},r=200,tag=shielded] at @s run particle ds:rct_aura2