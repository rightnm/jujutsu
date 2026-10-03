tag @a[scores={detect_health=0},tag=rabbit_fight] remove rabbit_fight
tag @a[scores={detect_health=0},tag=toad_fight] remove toad_fight
tag @a[scores={detect_health=0},tag=dog_fight] remove dog_fight
tag @a[scores={detect_health=0},tag=nue_fight] remove nue_fight
tag @a[scores={detect_health=0},tag=serpent_fight] remove serpent_fight
tag @a[scores={detect_health=0},tag=ox_fight] remove ox_fight
tag @a[scores={detect_health=0},tag=elephant_fight] remove elephant_fight


execute as @a[tag=rabbit_fight,tag=shikigami] at @s run function shikigami/shikigami/rabbit_boss
effect @e[type=ds:rabbitescape] speed 1 1 true
effect @e[type=ds:rabbitescapeboss] speed 1 1 true


tag @e[type=ds:white_wolf,tag=!divinedog] add divinedog
tag @e[type=ds:black_wolf,tag=!divinedog] add divinedog
tag @e[type=ds:white_wolfboss,tag=!divinedog] add divinedog
tag @e[type=ds:black_wolfboss,tag=!divinedog] add divinedog
execute as @e[type=!item,type=!xp_orb,tag=divinedog,family=shikigami] at @s run function shikigami/shikigami/divinedog
execute as @e[type=!item,type=!xp_orb,tag=divinedog,family=!shikigami] at @s run function shikigami/shikigami/divinedogboss
execute as @e[type=!item,type=!xp_orb,type=ds:totality,family=shikigami] at @s run function shikigami/shikigami/totality
effect @e[tag=divinedog] speed 2 1 true
execute as @a[tag=dog_fight,tag=shikigami] at @s run function shikigami/shikigami/dog_boss

execute as @a[tag=toad_fight,tag=shikigami] at @s run function shikigami/shikigami/toad_boss

execute as @e[type=!item,type=!xp_orb,type=ds:toad] at @s run function shikigami/shikigami/toad
execute as @e[type=!item,type=!xp_orb,family=shikigami,family=!projectile,type=!ds:agito] at @s unless entity @e[tag=shikigami,r=55] run tp @s @p[tag=shikigami]
execute as @e[type=!item,type=!xp_orb,family=shikigami,family=!projectile,type=ds:agito] at @s unless entity @e[tag=shikigami,r=90] run tp @s @p[tag=shikigami]

execute as @a[tag=nue_fight,tag=shikigami] at @s run function shikigami/shikigami/nue_boss
execute as @e[type=!item,type=!xp_orb,type=ds:nueboss,family=nue] at @s run function shikigami/shikigami/nueboss


execute as @a[tag=serpent_fight,tag=shikigami] at @s run function shikigami/shikigami/serpent_boss
execute as @e[type=!item,type=!xp_orb,type=ds:serpent,family=serpent] at @s run function shikigami/shikigami/serpent
execute as @e[type=!item,type=!xp_orb,type=ds:serpenttrap,family=shikigami] at @s run function shikigami/shikigami/serpenttrap
execute as @e[type=!item,type=!xp_orb,type=ds:serpentboss,family=serpent] at @s run function shikigami/shikigami/serpentboss

execute as @a[tag=ox_fight,tag=shikigami] at @s run function shikigami/shikigami/ox_boss
execute as @e[type=!item,type=!xp_orb,type=ds:piercingox] at @s run function shikigami/shikigami/piercingox

execute as @a[tag=elephant_fight,tag=shikigami] at @s run function shikigami/shikigami/elephant_boss
execute as @e[type=!item,type=!xp_orb,type=ds:maxelephantboss] at @s run function shikigami/shikigami/maxelephantboss
execute as @e[type=!item,type=!xp_orb,type=ds:maxelephant] at @s run function shikigami/shikigami/maxelephant

execute as @a[tag=deer_fight,tag=shikigami] at @s run function shikigami/shikigami/deer_boss
execute as @e[type=!item,type=!xp_orb,type=ds:rounddeerboss] at @s run function shikigami/shikigami/rounddeerboss
execute as @e[type=!item,type=!xp_orb,type=ds:rounddeer] at @s run function shikigami/shikigami/rounddeer

execute as @e[type=!item,type=!xp_orb,scores={Deleter=7..8},family=shikigami,tag=Big,type=!ds:projectile,family=!projectile]  at @s run particle ds:shikigami_appear3 ~~1~
execute as @e[type=!item,type=!xp_orb,scores={Deleter=7},family=shikigami,type=!ds:projectile,family=!projectile]  at @s run particle ds:shikigami_appear ~~1~
execute as @e[type=!item,type=!xp_orb,scores={Deleter=6},family=shikigami,type=!ds:projectile,family=!projectile]  at @s run effect @s invisibility 11 1 true
execute as @e[type=!item,type=!xp_orb,scores={Deleter=6},family=shikigami,type=!ds:projectile,family=!projectile]  at @s run tp @s ~ ~-45 ~


execute as @e[type=!item,type=!xp_orb,type=ds:projectile,name=ChimeraGarden1,tag=shadowgarden] at @s run function shikigami/chimera_garden1
execute as @e[type=!item,type=!xp_orb,type=ds:shadowgarden,name=ChimeraGarden2] at @s run function shikigami/chimera_garden2
execute as @e[type=!item,type=!xp_orb,type=ds:projectile,name=ChimeraBarrier] at @s run function shikigami/chimera_barrier

execute as @e[type=!item,type=!xp_orb,type=ds:nue,name="Nue Sweep",c=1] at @s run function shikigami/nue_sweep
execute as @e[type=!item,type=!xp_orb,type=ds:nue,name="Nue Flap",c=1] at @s run function shikigami/nue_flap
execute as @e[type=!item,type=!xp_orb,type=ds:projectile,name="NueBolt",c=1] at @s run function shikigami/nue_bolt
