tag @s[tag=!hasTRG] add hasTRG

#This is to make yuji to use backflip to approach target
scoreboard players set @s[scores={DashCD=!0}] DashCD 0

execute as @s[scores={Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0,DashCD=!-201},rxm=-25,rx=25,tag=!domainactive] at @s unless entity @e[family=projectile,tag=DomainExpansion,r=55] unless entity @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] unless entity @s[scores={Disabled=6..,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] unless entity @s[scores={detect_health=0..80,rct=1..}] unless entity @e[tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,r=90,c=1] rotated ~ 0 unless block ~~-0.2~ air if block ~~~ air if block ~~1~ air if block ^^^1 air if block ^^1^1 air if block ^^^2 air if block ^^1^2 air if block ^^^3 air if block ^^1^3 air if block ^^^4 air if block ^^1^4 air if block ^^^5 air if block ^^1^5 air if block ^^^6 air if block ^^1^6 air run scoreboard players set @s DashCD -201
execute as @s[scores={Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0,DashCD=!-201},rxm=-25,rx=25,tag=domainactive] at @s unless entity @s[scores={Disabled=6..,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] unless entity @s[scores={detect_health=0..80,rct=1..}] unless entity @e[tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,r=90,c=1] rotated ~ 0 unless block ~~-0.2~ air if block ~~~ air if block ~~1~ air if block ^^^1 air if block ^^1^1 air if block ^^^2 air if block ^^1^2 air if block ^^^3 air if block ^^1^3 air if block ^^^4 air if block ^^1^4 air if block ^^^5 air if block ^^1^5 air if block ^^^6 air if block ^^1^6 air run scoreboard players set @s DashCD -201
execute as @s[scores={Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0,DashCD=!-201},rxm=-25,rx=25,tag=domainimmune,tag=!domainactive] at @s unless entity @s[tag=!hollowwickerbasket,tag=!domainamplification] unless entity @e[family=projectile,tag=DomainExpansion,r=55,name=ChimeraGarden1] if entity @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] unless entity @s[scores={Disabled=6..,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] unless entity @s[scores={detect_health=0..80,rct=1..}] unless entity @e[tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,r=90,c=1] rotated ~ 0 unless block ~~-0.2~ air if block ~~~ air if block ~~1~ air if block ^^^1 air if block ^^1^1 air if block ^^^2 air if block ^^1^2 air if block ^^^3 air if block ^^1^3 air if block ^^^4 air if block ^^1^4 air if block ^^^5 air if block ^^1^5 air if block ^^^6 air if block ^^1^6 air run scoreboard players set @s DashCD -201
execute as @s[scores={Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0,DashCD=!-201},rxm=-25,rx=25,tag=domainimmune,tag=!domainactive] at @s unless entity @s[tag=!hollowwickerbasket,tag=!domainamplification] unless entity @e[family=projectile,tag=DomainExpansion,r=55,name=ChimeraGarden1] unless entity @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] if entity @e[family=projectile,tag=DomainExpansion,r=55] unless entity @s[scores={Disabled=6..,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] unless entity @s[scores={detect_health=0..80,rct=1..}] unless entity @e[tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,r=90,c=1] rotated ~ 0 unless block ~~-0.2~ air if block ~~~ air if block ~~1~ air if block ^^^1 air if block ^^1^1 air if block ^^^2 air if block ^^1^2 air if block ^^^3 air if block ^^1^3 air if block ^^^4 air if block ^^1^4 air if block ^^^5 air if block ^^1^5 air if block ^^^6 air if block ^^1^6 air run scoreboard players set @s DashCD -201
execute as @s[scores={Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0,DashCD=!-201},rxm=-25,rx=25,tag=simpledomain_protecting] at @s unless entity @e[family=projectile,tag=DomainExpansion,r=55,name=ChimeraGarden1] unless entity @s[scores={Disabled=6..,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] unless entity @s[scores={detect_health=0..80,rct=1..}] unless entity @e[tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,r=90,c=1] rotated ~ 0 unless block ~~-0.2~ air if block ~~~ air if block ~~1~ air if block ^^^1 air if block ^^1^1 air if block ^^^2 air if block ^^1^2 air if block ^^^3 air if block ^^1^3 air if block ^^^4 air if block ^^1^4 air if block ^^^5 air if block ^^1^5 air if block ^^^6 air if block ^^1^6 air positioned ^^^6 if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s DashCD -201
execute as @s[scores={Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0,DashCD=!-201},rxm=-25,rx=25,tag=simpledomain_protecting] at @s unless entity @e[family=projectile,tag=DomainExpansion,r=55,name=ChimeraGarden1] unless entity @s[scores={Disabled=6..,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] unless entity @s[scores={detect_health=0..80,rct=1..}] unless entity @e[tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,r=90,c=1] rotated ~ 0 unless block ~~-0.2~ air if block ~~~ air if block ~~1~ air if block ^^^1 air if block ^^1^1 air if block ^^^2 air if block ^^1^2 air if block ^^^3 air if block ^^1^3 air if block ^^^4 air if block ^^1^4 air if block ^^^5 air if block ^^1^5 air if block ^^^6 air if block ^^1^6 air positioned ^^^6 unless entity @e[type=ds:simple_domain,r=20,tag=shadow_style] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s DashCD -201

tag @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0},rxm=-25,rx=25,tag=!customDashCD] add customDashCD
execute as @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0},tag=customDashCD] at @s rotated ~ 0 positioned ^^^-45 facing entity @e[tag=target,tag=!unselect,r=45,c=1] eyes rotated ~ 0 positioned as @s run tp @s ~~~ facing ^^^-1
execute as @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0},tag=customDashCD] at @s rotated ~ 0 positioned ^^^45 if entity @e[tag=target,tag=!unselect,r=45,c=1] at @s run tp @s ~~~~180 0
scoreboard players add @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,Disabled=0..5,ability3=0},tag=customDashCD] Disabled 10
scoreboard players random @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0,ability3=0},tag=customDashCD] ability3 20 35
effect @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0},tag=customDashCD] slowness 1 1 true
execute as @s[scores={DashCD=-201,Hit=0,flashstep=0,Stun=0,Move=0,move=0,cutscene=0,domainstart=0,domain=0},tag=customDashCD] at @s run function _hitdodge



execute as @s[scores={domainactive=1..,domainCD=!7350},tag=domainactive] at @s at @e[type=ds:yuji_domain,scores={Deleter=51..},r=50,c=1] if entity @e[tag=target,tag=!unselect,r=55,c=1] run scoreboard players set @s domainCD 7350





execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0..300,domainstart=0,domain=0,forms=3..,flashstep=0},tag=!cantdomain,tag=!domainactive] at @s at @e[family=hero,scores={domainstart=1..},r=45,c=1] unless entity @e[type=!ds:yuji_itadori_awakened,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!grade4,family=!grade3,family=!hero,r=45,c=1] run scoreboard players set @s domainstart 101
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0..300,domainstart=0,domain=0,forms=3..,flashstep=0},tag=!cantdomain,tag=!domainactive] at @s if entity @e[family=!hero,scores={domainstart=1..},r=45,c=1] run scoreboard players set @s domainstart 101
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0..300,domainstart=0,domain=0,forms=3..,flashstep=0},tag=!cantdomain,tag=!domainactive] at @s if entity @e[tag=target,scores={domainstart=1..},r=45,c=1] run scoreboard players set @s domainstart 101


#this is to make that yuji select the correct target and doesn't use domain when it is invalid in certain (for example, when the domain has already been adapted)
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,chance=22..,forms=3..,flashstep=0,detect_health=0..100,rctuses=666..},tag=!cantdomain,tag=!domainactive] at @s if entity @e[tag=target,tag=!unselect,family=!heavenlyrestriction,tag=!heavenlyrestriction,family=!grade4,family=!grade3,r=45,c=1] unless entity @e[tag=yujidomain_adapted,tag=!unselect,r=50] run scoreboard players set @s domainstart 101
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,chance=22..,forms=3..,flashstep=0},tag=!cantdomain,tag=!domainactive] at @s if entity @e[scores={strength=20..,combat=1..},tag=target,tag=!unselect,family=!heavenlyrestriction,tag=!heavenlyrestriction,r=45,c=1] unless entity @e[scores={strength=48..,combat=1..,domainCD=0..1200},type=!player,tag=target,tag=!unselect,family=!mahoraga,family=!heavenlyrestriction,tag=!heavenlyrestriction,tag=!cantdomain,r=45,c=1] unless entity @a[scores={strength=48..,combat=1..,domainCD=0},tag=!unselect,tag=!heavenlyrestriction,tag=!cantdomain,r=45,c=1] unless entity @e[tag=yujidomain_adapted,tag=!unselect,r=50] run scoreboard players set @s domainstart 101
execute as @s[scores={cutscene=0,Stun=0,Hit=0,move=0,domainCD=0,domainstart=0,domain=0,forms=3..,flashstep=0},tag=!cantdomain,tag=!domainactive] at @s if entity @e[scores={infinity=1..,combat=1..},tag=limitless,tag=target,tag=!unselect,r=45,c=1] unless entity @e[tag=yujidomain_adapted,tag=!unselect,r=50] run scoreboard players set @s domainstart 101





execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,combat=1..,Stun=0,move=0}] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,r=7.5,c=1] run scoreboard players random @s chance 3 25

execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,combat=1..,Stun=0,move=0},tag=!simpledomain_protecting] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,r=10,c=1] if entity @e[tag=!Frames,tag=target,tag=!unselect,rm=10,r=90,c=1] run scoreboard players random @s chance 95 99
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,combat=1..,Stun=0,move=0},tag=simpledomain_protecting] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,r=7.5,c=1] if entity @e[tag=!Frames,tag=target,tag=!unselect,rm=7.5,r=90,c=1] run scoreboard players random @s chance 95 99



#additional use rct to fill the gap period when distance to the target is relatively far during ability disabled period
execute as @s[scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=6..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] at @s unless entity @e[tag=target,tag=!unselect,r=10,c=1] run effect @s slowness 1 3 true
execute as @s[scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=6..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..300,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] at @s unless entity @e[tag=target,tag=!unselect,r=10,c=1] run scoreboard players add @s reversecursedCD 6
execute as @s[scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=6..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,rct=0..200,reversecursedCD=0..306,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] at @s unless entity @e[tag=target,tag=!unselect,r=10,c=1] run scoreboard players add @s rct 5
execute as @s[scores={dying=0,Stun=0,combat=1..,Hit=0,domainstart=0,domain=0,Disabled=5..,move=0,cutscene=0,flashstep=0,chance=0,detect_health=81..380,reversecursedCD=301..,rctuses=0..799,antiheal=0,Energy=2..},tag=!rctCD] at @s unless entity @e[tag=target,tag=!unselect,r=10,c=1] run tag @s add rctCD



execute as @s[scores={Hit=0,domainstart=0,domain=0,hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..,flashstep=0}] at @s if entity @e[tag=target,tag=!unselect,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={Hit=0,domainstart=0,domain=0,hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..,flashstep=0},tag=!hit] at @s if entity @e[tag=target,tag=!unselect,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[scores={chance=1..2},tag=hit] hitCD 1 2
execute as @s[scores={chance=1..2},tag=hit] at @s run function m1





#simple domain
execute as @s[scores={domainstart=0,domain=0,Disabled=0,cutscene=0,Stun=0,Hit=0,simpledomainCD=0,move=0,flashstep=0},tag=!domainimmune,tag=!simpledomain,tag=!domainactive] at @s if entity @e[family=projectile,tag=DomainExpansion,r=55,name=!ChimeraGarden1] unless entity @e[tag=simpledomain,scores={move=1..},r=10,type=!ds:kusakabe,hasitem={item=ds:shadow_style_katana,quantity=0}] unless entity @e[tag=simpledomain,scores={move=1..},r=20,type=ds:kusakabe] unless entity @e[tag=simpledomain,scores={move=1..},r=20,hasitem={item=ds:shadow_style_katana}] run tag @s add simpledomain
execute as @s[scores={domainstart=0,domain=0,Disabled=0,cutscene=0,Stun=0,Hit=0,simpledomainCD=0,move=0,flashstep=0},tag=!domainimmune,tag=!simpledomain,tag=!domainactive] at @s unless entity @e[family=projectile,tag=DomainExpansion,r=55,name=!ChimeraGarden1] at @e[family=damage,family=projectile,family=boss,tag=DomainExpansion,scores={EnergyCap=0..,Energy=0..,energystat=0..},r=200,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s unless entity @e[tag=simpledomain,scores={move=1..},type=!ds:kusakabe,hasitem={item=ds:shadow_style_katana,quantity=0},r=10,c=1] unless entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,r=20,c=1] unless entity @e[tag=simpledomain,scores={move=1..},hasitem={item=ds:shadow_style_katana},r=20,c=1] run tag @s add simpledomain
scoreboard players set @s[scores={domainstart=0,domain=0,Disabled=0,cutscene=0,Stun=0,Hit=0,simpledomainCD=0,move=0,flashstep=0},tag=!domainimmune,tag=simpledomain,tag=!domainactive] move 61



#make yuji can use brutal quake on distant target to try to get close
execute as @s[scores={Stun=0,Hit=0,domainstart=0,domain=0,Disabled=0,move=0,cutscene=0,flashstep=0,chance=95..96}] at @s positioned ^^^18.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=6,c=1] run scoreboard players set @s chance 19



#prevent yuji from use manji kick on stunned mob or player
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=3,Stun=0,move=0}] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,scores={Stun=21..},r=10] unless entity @e[tag=!Frames,tag=target,tag=!unselect,scores={Stun=5..,Hit=0},r=10] unless entity @a[tag=!Frames,tag=target,tag=!unselect,scores={Stun=5..},r=10] run scoreboard players set @s move 16


execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=4,Stun=0,move=0}] at @s unless block ~~-0.2~ air if entity @e[tag=!Frames,tag=target,tag=!unselect,r=4,c=1] run scoreboard players set @s move 16

execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=5,Stun=0,move=0}] at @s positioned ^^^4.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] run scoreboard players set @s move 19


#this is to make it so yuji faces the right entity when he use triple kick, and also prevent yuji run out from the simple domain
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=6,Stun=0,move=0},tag=!simpledomain_protecting] move 16
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=6,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=13.5,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 16
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=6,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=13.5,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 16
execute as @s[scores={chance=6,Stun=0,move=15..16}] at @s run tp @s ~~~ facing @e[tag=!Frames,tag=target,tag=!unselect,r=13.5,c=1]


#prevent yuji run out from the simple domain
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=7,Stun=0,move=0,ability2=0},tag=!simpledomain_protecting] at @s positioned ^^^7 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=3.5,c=1] run scoreboard players set @s move 23
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=7,Stun=0,move=0,ability2=0},tag=simpledomain_protecting] at @s positioned ^^^7 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=3.5,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 23
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=7,Stun=0,move=0,ability2=0},tag=simpledomain_protecting] at @s positioned ^^^7 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=3.5,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 23


#this is to make it so yuji faces the right entity when he use fierce barrage, and also prevent yuji run out from the simple domain
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=8,Stun=0,move=0},tag=!simpledomain_protecting] move 51
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=8,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=18.5,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 51
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=8,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=18.5,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 51
execute as @s[scores={chance=8,Stun=0,move=50..51}] at @s run tp @s ~~~ facing @e[tag=!Frames,tag=target,tag=!unselect,r=18.5,c=1]


#this is to make it so yuji faces the right entity when he use divergent strike
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=9,Stun=0,move=0,ability1=0}] move 26
execute as @s[scores={chance=9,Stun=0,move=19..20}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=7,c=1]


execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=10,Stun=0,move=0}] at @s positioned ^^^2.6 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.55,c=1] run scoreboard players set @s move 61

scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=11,Stun=0,move=0}] move 26


#new moves
#prevent yuji run out from the simple domain
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=12,Stun=0,move=0},tag=!simpledomain_protecting] at @s positioned ^^^2 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=1.95,c=1] run scoreboard players set @s move 46
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=12,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^2 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=1.95,c=1] at @s positioned ^^^7.5 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 46
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=12,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^2 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=1.95,c=1] at @s positioned ^^^7.5 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 46


scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=13,Stun=0,move=0},tag=!simpledomain_protecting] move 36

scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=14,Stun=0,move=0}] move 31

scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=15,Stun=0,move=0},tag=!simpledomain_protecting] move 31


#prevent yuji run out from the simple domain
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=16,Stun=0,move=0},tag=!simpledomain_protecting] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] run scoreboard players set @s move 101
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=16,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] at @s positioned ^^^6.5 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 101
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=16,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] at @s positioned ^^^6.5 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 101


#yuji moves
#this is to make it so yuji faces the right entity when he use fierce strikes
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=17,Stun=0,move=0}] move 36
execute as @s[scores={chance=17,Stun=0,move=18..19}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=7,c=1]


execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=18,Stun=0,move=0}] at @s positioned ^^^2 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=1.95,c=1] run scoreboard players set @s move 43


#prevent yuji run out from the simple domain
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=19,Stun=0,move=0},tag=!simpledomain_protecting] at @s positioned ^^^18.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=6,c=1] run scoreboard players set @s move 87
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=19,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^18.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=6,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 87
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=19,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^18.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=6,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 87


#this is to make it so yuji faces the right entity when he use deadly pursuit
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=20,Stun=0,move=0}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] run scoreboard players set @s move 16
execute as @s[scores={chance=20,Stun=0,move=999..1000}] at @s run tp @s ~~~ facing @e[tag=!Frames,tag=target,tag=!unselect,r=35,c=1]


#this is to make that yuji only uses this ability when he already land a black flash, in order to balance
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=21,Stun=0,move=0,forms=2..,ability4=0}] at @s positioned ^^^2 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=1.95,c=1] run scoreboard players set @s move 16


#soulshrine
#prevent yuji run out from the simple domain
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=22,Stun=0,move=0},tag=!simpledomain_protecting] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] run scoreboard players set @s move 26
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=22,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 26
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=22,Stun=0,move=0},tag=simpledomain_protecting] at @s positioned ^^^2.5 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=2.45,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 26


#prevent yuji run out from the simple domain
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=23,Stun=0,move=0},tag=!simpledomain_protecting] move 16
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=23,Stun=0,move=0},tag=simpledomain_protecting] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,r=11,c=1] positioned ^^^6.5 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 16
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=23,Stun=0,move=0},tag=simpledomain_protecting] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,r=11,c=1] positioned ^^^6.5 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 16


#this is to make it so yuji faces the right entity when he use severing blitz, and also prevent yuji run out from the simple domain
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=24,Stun=0,move=0},tag=!simpledomain_protecting] move 21
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=24,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 21
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=24,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 21
execute as @s[scores={chance=24,Stun=0,move=6..7}] at @s run tp @s ~~~ facing @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1]


execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=25,Stun=0,move=0,ability5=0}] at @s unless block ~~-0.2~ air positioned ^^^3.97 if entity @e[tag=!Frames,tag=target,tag=!unselect,r=3.9,c=1] run scoreboard players set @s move 31





#this is to make yuji to throw some rocks for attack when he's too far from target within the domain
execute as @s[scores={Stun=0,Hit=0,domainstart=0,domain=0,Disabled=0,move=0,cutscene=0,flashstep=0,chance=3..25,forms=2..},tag=simpledomain_protecting] at @s unless block ~~-0.2~ air unless entity @e[type=ds:simple_domain,r=20,tag=shadow_style] at @e[type=ds:simple_domain,r=10,tag=!shadow_style,c=1] unless entity @e[tag=!Frames,tag=target,tag=!unselect,r=10,c=1] at @e[tag=!Frames,tag=target,tag=!unselect,r=70,c=1] if entity @s[r=60] run scoreboard players set @s chance 97
execute as @s[scores={Stun=0,Hit=0,domainstart=0,domain=0,Disabled=0,move=0,cutscene=0,flashstep=0,chance=3..25,forms=2..},tag=simpledomain_protecting] at @s unless block ~~-0.2~ air at @e[type=ds:simple_domain,r=20,tag=shadow_style,c=1] unless entity @e[tag=!Frames,tag=target,tag=!unselect,r=20,c=1] at @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1] if entity @s[r=60] run scoreboard players set @s chance 97





#this is to make it so yuji faces the right entity when he throws a rock
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=97,Stun=0,move=0}] at @s unless block ~~-0.2~ air run scoreboard players set @s move 36
execute as @s[scores={chance=97,Stun=0,move=24..25}] at @s run tp @s ~~~ facing @e[tag=!Frames,tag=target,tag=!unselect,r=60,c=1]


#this is to make it so yuji faces the right entity when he use severing blitz, and also prevent yuji run out from the simple domain
scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=98,Stun=0,move=0},tag=!simpledomain_protecting] move 21
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=98,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 21
execute as @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,forms=2..,chance=98,Stun=0,move=0},tag=simpledomain_protecting] at @s at @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 21
execute as @s[scores={chance=98,Stun=0,move=6..7}] at @s run tp @s ~~~ facing @e[tag=!Frames,tag=target,tag=!unselect,r=80,c=1]


scoreboard players set @s[scores={cutscene=0,Hit=0,domainstart=0,domain=0,flashstep=0,Disabled=0,chance=99,Stun=0,move=0},tag=!simpledomain_protecting] move 36

execute as @s[scores={combat=1..,detect_health=0..70,Hit=1..},tag=enraged_yuji] at @s if entity @e[tag=idle_transfig,r=50] run effect @s instant_health 1 1 true


