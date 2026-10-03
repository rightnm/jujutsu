playanimation @s[scores={move=95..96}] animation.forced_roles


execute as @s[scores={move=89..90}] at @s run playsound mob.wither.hurt @a[r=10] ~~~ 9999 1.5 9999
execute as @s[scores={move=89..90}] at @s run playsound beacon.activate @a[r=10] ~~~ 9999 2 9999
execute as @s[scores={move=89..90}] at @s run playsound mob.wither.shoot @a[r=10] ~~~ 9999 0.75 9999
execute as @s[scores={move=89..90}] at @s run playsound mob.wither.hurt @a[r=10] ~~~ 9999 0.5 9999
execute as @s[scores={move=89..90}] at @s run camerashake add @a[r=50] 2 0.15

execute as @s[scores={move=65..96}] at @s run scriptevent ds:downfall
scoreboard players set @s[scores={move=15..,Move=0..6}] Move 20

effect @e[r=10,rm=0.15] slowness 1 20 true

execute as @s[scores={move=65}] at @s run particle ds:ground_slam1
execute as @s[scores={move=65}] at @s run particle ds:ground_slam2
execute as @s[scores={move=65}] at @s run particle ds:ground_slam3
execute as @s[scores={move=65}] at @s run particle ds:crater
execute as @s[scores={move=65}] at @s run particle ds:rubble3
execute as @s[scores={move=65}] at @s run playsound mob.wither.shoot @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=65}] at @s run playsound mob.wither.break_block @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=65}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 9999 1.25 9999


execute as @s[scores={move=64}] at @s run scriptevent ds:knockback 4
execute as @s[scores={move=45..64}] at @s run scriptevent ds:knockback 1.5


titleraw @s[scores={move=40..65}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §eClick Again §l§f>\n\n"}]}
titleraw @s[scores={move=37..39}] title {"rawtext":[{"text":"§r."}]}


execute as @s[scores={move=41..64},tag=itemUse:ds:four_fists] at @s run scoreboard players set @s move 39

playanimation @s[scores={move=39..40}] animation.forced_roles_barraging


execute as @s[scores={move=39}] at @s run particle ds:ground_slam2 ^^^1
execute as @s[scores={move=39}] at @s run playsound mob.witch.throw @a[r=100] ~~~ 9999 0.8 9999
execute as @s[scores={move=39}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,c=1,r=2.49] add forced_roles

execute as @s[scores={move=30..39}] at @s if entity @e[tag=forced_roles,c=1,r=10] run scoreboard players set @s move 1001
execute as @s[scores={move=30..35}] at @s unless entity @e[tag=forced_roles,c=1,r=10] run function cancel_attack

execute as @s[scores={move=100..}] at @s run execute as @e[type=!player,r=50,rm=1] at @s run tp @s ~~~ facing @e[scores={sukunacutscene=1..},c=1]
execute as @s[scores={move=100..}] at @s run effect @a[r=8] weakness 1 10 true


execute as @s[scores={move=100..}] at @s run scoreboard players set @e[r=52,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!arrow] Move 42
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[r=52,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!arrow] infinity 42
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[r=52,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!arrow] Stun 42
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[r=52,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!arrow] Disabled 42
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[r=52,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!arrow] Frames 42
execute as @s[scores={move=100..}] at @s run scoreboard players set @e[r=52,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,type=!arrow] Camera 42
execute as @s[scores={move=100..}] at @s run kill @e[type=ds:red_reverse,r=30]
execute as @s[scores={move=100..}] at @s run kill @e[type=ds:knockback,r=30]
execute as @s[scores={move=100..}] at @s run kill @e[type=ds:mahoraga_knockback1,r=40]
execute as @s[scores={move=100..},type=!player] at @s run effect @s slowness 1 99 true
execute as @s[scores={move=100..},type=!player] at @s run execute as @s at @s run tp @s ~~~

execute as @s[scores={move=999..1001}] at @s run tp @s @s
execute as @s[scores={move=999..1001}] at @s run tp @e[tag=forced_roles,c=1] ^^^1.75 facing @s
execute as @s[scores={move=900}] at @s run tp @e[tag=forced_roles,c=1] ^^^2.15 facing @s
execute as @s[scores={move=999..1001}] at @s run playanimation @e[tag=forced_roles,c=1] animation.forced_roles_blocking
 playanimation @s[scores={move=999..1001}] animation.forced_roles_barraging


execute as @s[scores={move=999..1001}] at @s run camera @a[r=55] set minecraft:free pos ^-1^1.5^0.75 facing ^^1^1.5
execute as @s[scores={move=999..1001}] at @s run camera @a[r=55] set minecraft:free ease 1.5 in_out_circ pos ^-2.5^2.25^ facing ^^1^2

execute as @s[scores={move=970}] at @s run camera @a[r=55] set minecraft:free ease 0.15 in_out_circ pos ^2.5^1^1 facing ^^1^1

execute as @s[scores={move=955}] at @s run camera @a[r=55] set minecraft:free pos ^^0.75^1 facing ^^1^

execute as @s[scores={move=915}] at @s run camera @a[r=55] fade time 0.15 0 0.25 color 0 0 0
execute as @s[scores={move=910}] at @s run camera @a[r=55] set minecraft:free pos ^3^1.5^ facing ^^1^1.5
execute as @s[scores={move=900}] at @s run camera @a[r=55] set minecraft:free ease 3 in_sine pos ^2^3^-1 facing ^^1^1.5

execute as @s[scores={move=860}] at @s run camera @a[r=55] set minecraft:free pos ^-2^1.5^ facing ^^1.5^
execute as @s[scores={move=859..860}] at @s run camera @a[r=55] set minecraft:free ease 3 in_sine pos ^-2^1.5^2 facing ^^1.5^2

execute as @s[scores={move=800}] at @s run camera @a[r=55] set minecraft:free pos ^1.5^2^2.5 facing ^^1.5^0.75
execute as @s[scores={move=799..800}] at @s run camera @a[r=55] set minecraft:free ease 3 in_sine pos ^-3^3^4 facing ^^1.5^0.75

execute as @s[scores={move=998}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=998}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=998}] at @s run playsound mob.punch1 @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=998}] at @s run particle ds:forced_roles1 ^^1^1.5
execute as @s[scores={move=998}] at @s run particle ds:forced_roles2 ^^1^1.5
execute as @s[scores={move=998}] at @s run particle ds:forced_roles3 ^^1^1.5
execute as @s[scores={move=998}] at @s run particle ds:ground_slam2 ^^1^1.35
execute as @s[scores={move=971..990}] at @s run particle ds:turbo_intensity3 ^^^0.5



execute as @s[scores={move=970}] at @s run playsound random.explode @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=970}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=970}] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=970}] at @s run particle ds:forced_roles1 ^^1^2
execute as @s[scores={move=970}] at @s run particle ds:forced_roles2 ^^1^2
execute as @s[scores={move=970}] at @s run particle ds:forced_roles3 ^^1^2
execute as @s[scores={move=970}] at @s run particle ds:ground_slam2 ^^1^1.35


execute as @s[scores={move=917}] at @s run playsound mob.punch2 @a[r=100] ~~~ 9999 1.25 9999

execute as @s[scores={move=910}] at @s run playsound mob.punch1 @a[r=100] ~~~ 9999 1 9999

execute as @s[scores={move=907}] at @s run playsound mob.punch1 @a[r=100] ~~~ 9999 1.25 9999

execute as @s[scores={move=905}] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 1.2 9999

execute as @s[scores={move=905}] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=905}] at @s run particle ds:heavy_impact1 ^^1^1.75
execute as @s[scores={move=905}] at @s run particle ds:heavy_impact2 ^^1^1.75
execute as @s[scores={move=905}] at @s run particle ds:heavy_impact3 ^^1^1.75
execute as @s[scores={move=905}] at @s run particle ds:ground_slam1 ^^1^1.75
 
execute as @s[scores={move=954}] at @s run playsound mob.forcedroles @a[r=100] ~~~ 9999 0.98 99999
execute as @s[scores={move=954}] at @s run particle ds:forcedroles1 ^-2.3^1.5^-2.5
execute as @s[scores={move=946}] at @s run particle ds:forcedroles2 ^2.3^1.5^-2.5


execute as @s[scores={move=890}] at @s run playsound mob.youjujutsusorcerers @a[r=100] ~~~ 9999 0.98 99999

execute as @s[scores={move=903..905}] at @s run scoreboard objectives add clash_score dummy




execute as @s[scores={move=100..900}] at @s run playsound mob.punch @a[r=100] ^^-15^1 9999 1.5 9999
execute as @s[scores={move=100..900}] at @s run playsound mob.punch @a[r=100] ^^-15^1 9999 2 9999
execute as @s[scores={move=100..900}] at @s run particle ds:turbo_intensity3 ^^^0.5


execute as @s[scores={move=100..900}] at @s run scoreboard players add @s[scores={detect_left=1}] clash_score 5
execute as @s[scores={move=100..900}] at @s run scoreboard players add @s[scores={punch=1}] clash_score 4
execute as @s[scores={move=100..900}] at @s run scoreboard players add @a[tag=forced_roles,scores={detect_left=1},c=1] clash_score 5
execute as @s[scores={move=100..900}] at @s run scoreboard players add @a[tag=forced_roles,scores={punch=1},c=1] clash_score 4
scoreboard players set @a[scores={punch=1..},r=10] punch 0
scoreboard players set @a[scores={detect_left=1..},r=10] detect_left 0

execute as @s[scores={move=100..800}] at @s run scoreboard players random @e[type=!player,tag=forced_roles,c=1] clash_score -300 101
execute as @s[scores={move=100..810}] at @s run scoreboard players random @e[type=!player,tag=forced_roles,c=1,scores={strength=0..15}] clash_score -200 101
execute as @s[scores={move=100..820}] at @s run scoreboard players random @e[type=!player,tag=forced_roles,c=1,scores={strength=16..25}] clash_score -150 101
execute as @s[scores={move=100..830}] at @s run scoreboard players random @e[type=!player,tag=forced_roles,c=1,scores={strength=26..40}] clash_score -100 101
execute as @s[scores={move=100..840}] at @s run scoreboard players random @e[type=!player,tag=forced_roles,c=1,scores={strength=41..}] clash_score -50 101


execute as @s[scores={move=100..650}] at @s run scoreboard players set @e[tag=forced_roles,c=1] clash_score 101

execute as @s[scores={move=895}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 2.1 9999
execute as @s[scores={move=895}] at @s run particle ds:large_impact1 ^^1^2

execute as @s[scores={move=855}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 2.25 9999
execute as @s[scores={move=855}] at @s run particle ds:large_impact1 ^^1^2

execute as @s[scores={move=815}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 2.3 9999
execute as @s[scores={move=815}] at @s run particle ds:large_impact1 ^^1^2

execute as @s[scores={move=805}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 3 9999
execute as @s[scores={move=805}] at @s run particle ds:large_impact1 ^^1^2

execute as @s[scores={move=765}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 2.5 9999
execute as @s[scores={move=765}] at @s run particle ds:large_impact1 ^^1^2

execute as @s[scores={move=700}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 2.2 9999
execute as @s[scores={move=700}] at @s run particle ds:large_impact1 ^^1^2

execute as @s[scores={move=695}] at @s run playsound mob.shock1 @a[r=100] ^^1^2 9999 2.25 9999
execute as @s[scores={move=695}] at @s run particle ds:large_impact1 ^^1^2


execute as @s[scores={move=100..900}] unless entity @e[tag=forced_roles,c=1,scores={detect_health=1..6}] run damage @e[tag=forced_roles,c=1] 3

execute as @s[scores={move=100..900,clash_score=0..5}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=5..10}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=11..16}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=17..23}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=24..30}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=31..35}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=36..40}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=41..50}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=51..65}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=66..80}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=81..99}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=100..}] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}

execute as @s[scores={move=100..900,clash_score=0..5}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=5..10}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=11..16}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=17..23}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=24..30}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=31..35}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=36..40}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=41..50}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=51..65}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=66..80}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=81..99}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
execute as @s[scores={move=100..900,clash_score=100..}] run titleraw @p[tag=forced_roles,c=1,r=10] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §aPUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}


execute as @s[scores={move=100..900}] at @s run  execute as @e[tag=forced_roles,scores={clash_score=100..}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 9999
execute as @s[scores={move=100..900}] at @s run  execute as @e[tag=forced_roles,scores={clash_score=100..}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=100..900}] at @s run  execute as @e[tag=forced_roles,scores={clash_score=100..}] at @s run scoreboard players set @e[tag=sukuna,c=1,tag=!forced_roles,r=10,scores={move=100..900}] Flourish 4
execute as @s[scores={move=100..900}] at @s run  execute as @e[tag=forced_roles,scores={clash_score=100..}] at @s run scriptevent ds:knockback -15
execute as @s[scores={move=100..900}] at @s run  execute as @e[tag=forced_roles,scores={clash_score=100..}] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=100..900}] at @s run  execute as @e[tag=forced_roles,scores={clash_score=100..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=100..900}] at @s if entity @e[tag=forced_roles,scores={clash_score=100..}] run tellraw @s {"rawtext":[{"text":"§r§cYou lost the clash!"}]}
execute as @s[scores={move=100..900}] at @s run playanimation @e[tag=forced_roles,scores={clash_score=100..}] animation.stunned i 0.2
execute as @s[scores={move=100..900}] at @s if entity @e[tag=forced_roles,scores={clash_score=100..}] run function cancel_attack


scoreboard players set @s[scores={move=100..900,clash_score=100..}] move 10001
scoreboard players set @s[scores={move=10000..10001,clash_score=100..}] clash_score 0

playanimation @s[scores={move=10000..10001}] animation.forced_roles_blackflash
execute as @s[scores={move=10000..10001}] at @s run playanimation @e[tag=forced_roles,c=1] animation.forced_roles_hit

 execute as @s[scores={move=10000..10001}] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=10000..10001}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=10000..10001}] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 1.5 9999

execute as @s[scores={move=10000..10001}] at @s run tp @s @s
execute as @s[scores={move=10000..10001}] at @s run execute as @a[r=55] at @s run playsound music.sukunablackflash @s ~~~ 9999 1 9999
execute as @s[scores={move=10000..10001}] at @s run camera @a[r=55] set minecraft:free pos ^-2.5^1^ facing ^^1^1
execute as @s[scores={move=9998..9999}] at @s run camera @a[r=55] set minecraft:free ease 0.35 in_out_circ pos ^-3^1.5^-0.5 facing ^^1^1.5

execute as @s[scores={move=9989..9990}] at @s run camera @a[r=55] set minecraft:free pos ^^1.33^0.25 facing ^^1.33^-1
execute as @s[scores={move=9987..9988}] at @s run camera @a[r=55] set minecraft:free ease 2.25 in_sine pos ^^1.33^1 facing ^^1.33^-1

execute as @s[scores={move=9947..9948}] at @s run camera @a[r=55] set minecraft:free pos ^-0.25^1.33^0.5 facing ^-0.25^1.33^-1
execute as @s[scores={move=9945..9946}] at @s run camera @a[r=55] set minecraft:free ease 0.35 in_sine pos ^-0.25^1.33^ facing ^-0.25^1.33^-2

execute as @s[scores={move=9945}] at @s run camera @a[r=55] fade time 0.2 0.4 0.25 color 255 255 255

execute as @s[scores={move=9940}] at @s run camera @a[r=55] set minecraft:free pos ^-0.75^1.5^-0.5 facing ^^1^0.5
execute as @s[scores={move=9938..9939}] at @s run camera @a[r=55] set minecraft:free ease 2 in_out_circ pos ^-3^4.5^-3 facing ^^1^0.5


execute as @s[scores={move=9913..9915}] at @s run effect @a[r=55] darkness 5 1 true
execute as @s[scores={move=9913..9915}] at @s anchored eyes run camera @a[r=55] set minecraft:free pos ^0.65^-0.7^1 facing ^0.4^-0.3^
execute as @s[scores={move=9900..9901}] at @s anchored eyes run camera @a[r=55] set minecraft:free ease 1 in_sine pos ^1.25^-0.7^2 facing ^0.4^-0.3^


execute as @s[scores={move=9871..9872}] at @s run effect @a[r=55] clear darkness 

execute as @s[scores={move=9870}] at @s run camera @a[r=55] set minecraft:free pos ^^1.5^-2 facing ^^1^0.5
execute as @s[scores={move=9868..9869}] at @s run camera @a[r=55] set minecraft:free ease 0.33 in_sine pos ^^4^-4 facing ^^1^12

execute as @s[scores={move=9988}] at @s run playsound mob.idiot @a[r=100] ~~1~ 99999 1 99999

execute as @s[scores={move=9940..9988}] at @s run particle ds:turbo_intensity3 ~~0.5~
execute as @s[scores={move=9940..9988}] at @s run particle ds:turbo_intensity4 ~~0.5~
execute as @s[scores={move=9978}] at @s run playsound mob.electric3 @a[r=100] ~~~ 9999 0.7 9999

execute as @s[scores={move=9940..9946}] at @s run tp @e[tag=forced_roles,c=1] ^^^0.7 facing ~~1~


execute as @s[scores={move=9946}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9945}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9944}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9943}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9942}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9941}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9940}] at @s run title @a[r=55,tag=!impactframesoff] title 
execute as @s[scores={move=9935..9939}] at @s run title @a[r=55,tag=!impactframesoff] title §l              .       

execute as @s[scores={move=9940..9941},type=!player] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
tag @s[scores={move=9940,blackflashlearn=0},tag=!nomusic] add nomusic
execute if entity @s[scores={move=9940,blackflashlearn=0}] run function blackflash_first

execute as @s[scores={move=9942}] at @s run playsound mob.blackflash @a[r=250] ~~~ 99999 0.8 99999
execute as @s[scores={move=9938}] at @s run playsound mob.blackflash2 @a[r=250] ~~~ 99999 0.6 99999


execute as @s[scores={move=9938}] at @s run particle ds:black_flash2 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:black_flash3 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:black_flash4 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:black_flash6 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:black_flash8 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:black_flash9 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:black_flash10 ^^1.25^1
execute as @s[scores={move=9938}] at @s run particle ds:red_tint ^^2^-1
execute as @s[scores={move=9937}] at @s run summon gg:impact_frame
execute as @s[scores={move=9937}] at @s run particle ds:invert ^^1^-0.5
execute as @s[scores={move=9936}] at @s run particle ds:red_tint ^^2^-1
execute as @s[scores={move=9936}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=9935}] at @s run effect @a[r=100] clear night_vision
execute as @s[scores={move=9880..9938}] at @s run particle ds:black_flash_small1 ^^1.25^1


scoreboard players set @s[scores={move=9885}] thezone 200

execute as @s[scores={move=9885}] at @s run playsound mob.blackflash2 @a[r=250] ~~~ 99999 1.25 99999


execute as @s[scores={move=9872}] at @s run function damages/blunt_damage
execute as @s[scores={move=9872},tag=yuji_awakened] at @s run function damages/soul_damage

execute as @s[scores={move=9885}] at @s run particle ds:black_flash1 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash2 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash3 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash4 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash5 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash6 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash7 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash8 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash9 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:black_flash10 ^^1.25^1
execute as @s[scores={move=9885}] at @s run particle ds:red_tint ^^2^-1
execute as @s[scores={move=9884}] at @s run summon gg:impact_frame
execute as @s[scores={move=9883}] at @s run particle ds:invert ^^1^-0.5
execute as @s[scores={move=9882}] at @s run particle ds:red_tint ^^2^-1
execute as @s[scores={move=9881}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=9880}] at @s run effect @a[r=100] clear night_vision

execute as @s[scores={move=9865..9880}] at @s run tp @s @s
execute as @s[scores={move=9880..9882}] at @s if entity @e[tag=griefable] run effect @a[r=100] resistance 1 30 true
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^5 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^8 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^10 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^13 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^15 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^18 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s if entity @e[tag=griefable] positioned ^^^20 run summon ds:red_reversal
execute as @s[scores={move=9880}] at @s run particle ds:large_impact1 ^^1^1
execute as @s[scores={move=9880}] at @s run particle ds:large_impact2 ^^1^1
execute as @s[scores={move=9880}] at @s run particle ds:large_impact3 ^^1^1 
execute as @s[scores={move=9880}] at @s run particle ds:ground_slam2 ^^1^1 
execute as @s[scores={move=9880}] at @s run particle ds:ground_slam3 ^^1^1 
execute as @s[scores={move=9880}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 999999
execute as @s[scores={move=9880}] at @s run tp @e[tag=forced_roles,c=1] ^^^20
execute as @s[scores={move=9880}] at @s run scoreboard players set @e[tag=forced_roles,c=1] Stun 25
execute as @s[scores={move=9880}] at @s run scoreboard players set @e[tag=forced_roles,c=1] knockdown 25
execute as @s[scores={move=9880},tag=yuji_awakened] at @s run scoreboard players add @e[tag=forced_roles,c=1] antiheal 100
execute as @s[scores={move=9872}] at @s run damage @e[tag=forced_roles,c=1] 250 override

tag @s[scores={move=1..2},tag=wep5s3] remove wep5s3
execute as @s[scores={move=1..2}] at @s run scoreboard players set @e[r=55,scores={clash_score=1..}] clash_score 0
execute as @s[scores={move=1..2}] at @s run tag @e[r=55,tag=forced_roles] remove forced_roles

execute as @s[scores={move=9850..9869}] at @s run tag @e[r=55,tag=forced_roles] remove forced_roles
scoreboard players set @s[scores={move=9850..9868}] move 3

