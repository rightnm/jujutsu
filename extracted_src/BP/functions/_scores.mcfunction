execute as @a[tag=itemUse:ds:dash] at @s run function dashclick


execute unless entity @e[scores={start=0..},c=1] run scoreboard objectives add start dummy
execute as @a unless entity @s[scores={start=0..}] run scoreboard players add @s start 0
execute as @a[scores={start=0},c=1] run function add_scores

execute as @e[scores={flashstep=1..},c=1] at @s run function flashstep

execute as @a[scores={respawn=1..4},c=1] run function stat_give

execute as @e[family=projectile,tag=DomainExpansion] unless entity @s[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] at @s run scoreboard players add @e[scores={domainCD=0..},r=50] domainCD 1
execute as @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] at @s run scoreboard players add @e[scores={domainCD=0..},r=200] domainCD 1
execute as @e[family=projectile,tag=DomainExpansion] unless entity @s[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] at @s run scoreboard players add @e[scores={sukuna_ab12=0..},r=50] sukuna_ab12 1
execute as @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion] at @s run scoreboard players add @e[scores={sukuna_ab12=0..},r=200] sukuna_ab12 1

scoreboard players remove count10 endurance 1
execute as @p[c=1] if score count10 endurance < one endurance run scoreboard players set count10 endurance 10
execute as @p[c=1] if score count10 endurance = one endurance run effect @a[tag=curse,scores={Stun=0}] regeneration 5 0 true
execute as @p[c=1] if score count10 endurance = one endurance run effect @a[tag=heavenlyrestriction,scores={Stun=0}] regeneration 5 0 true

execute as @p[c=1] if score count10 endurance = one endurance run scoreboard players add @a[scores={Energy=200..},tag=!heavenlyrestriction] Energy 1
execute as @p[c=1] if score count10 endurance = one endurance run scoreboard players add @a[scores={Energy=400..},tag=!heavenlyrestriction] Energy 1
execute as @p[c=1] if score count10 endurance = one endurance run scoreboard players add @a[scores={Energy=600..},tag=!heavenlyrestriction] Energy 1
execute as @p[c=1] if score count10 endurance = one endurance run scoreboard players add @a[scores={Energy=800..},tag=!heavenlyrestriction] Energy 1
execute as @p[c=1] if score count10 endurance = one endurance run scoreboard players add @a[scores={Energy=1000..},tag=!heavenlyrestriction] Energy 1
execute as @p[c=1] if score count10 endurance = one endurance run scoreboard players remove @a[scores={combat=0..350,fuga=2..}] fuga 2

execute as @p[c=1] if score menuoff Mode = one Mode as @a[tag=menu] at @s run function menu_end

execute as @p[c=1] if score secretquest Mode = one Mode run clear @a[hasitem={item=ds:conflict_essence}] ds:conflict_essence
execute as @p[c=1] if entity @e[type=ds:void_reactor] if score secretquest Mode = one Mode run event entity @e[type=ds:void_reactor] ds:disappear
execute as @p[c=1] if entity @e[type=ds:void_reactor] if score secretquest Mode = one Mode run tickingarea remove voidtower
execute as @p[c=1] if entity @e[type=ds:void_reactor] if score secretquest Mode = one Mode run tickingarea remove void_obelisk

execute as @p[c=1] if score impactframes Mode = one Mode run tag @a[tag=!impactframesoff] add impactframesoff

execute as @p[c=1,tag=!griefable] if score griefing Mode = three Mode run gamerule mobgriefing true
execute as @p[c=1,tag=!griefable] if score griefing Mode = two Mode run gamerule mobgriefing true
execute as @p[c=1,tag=griefable] if score griefing Mode = one Mode run gamerule mobgriefing false
execute as @p[c=1] if score griefing Mode = one Mode run tag @a[tag=griefable] remove griefable
execute as @p[c=1] if score griefing Mode = two Mode run tag @a[tag=!griefable] add griefable
execute as @p[c=1,tag=!griefable] if score griefing Mode = three Mode run tag @a[tag=!griefable] add griefable


execute as @p[c=1] unless entity @e[type=ds:judgeman] if score nocds Mode = one Mode run function nocds

execute as @a[scores={detect_sprint=1..,detect_jump=1..,agility=50..},tag=!heavenlyrestriction,tag=!sukuna] at @s if block ~~0.15~ water unless block ~~1~ water run function waterrun2

execute as @a[tag=sukuna,scores={detect_sprint=1..,detect_jump=1..},tag=!heavenlyrestriction] at @s if block ~~0.15~ water unless block ~~1~ water run function waterrun2
execute as @a[tag=heavenlyrestriction,scores={detect_sprint=1..,detect_jump=1..}] at @s if block ~~0.15~ water unless block ~~1~ water run function waterrun2

execute as @p[c=1] if score nomissioncds Mode = one Mode run scoreboard players set @a[tag=!calling,scores={activemission=0,missionsCD=1..}] missionsCD 0
#execute as @p[c=1] if score nomissioncds Mode = one Mode run function nomissioncds

execute as @p[c=1,tag=!domainactive] if score mobeventstoggle Mode = two endurance run scoreboard players add mobevent Mode 1
execute as @p[c=1,tag=!domainactive] if score mobeventstoggle Mode = two endurance if score mobevent Mode >= mobeventmax Mode run scoreboard players add @a rctuses 3
execute as @p[c=1,tag=!domainactive] if score mobeventstoggle Mode = two endurance if score mobevent Mode >= mobeventmax Mode as @r at @s run function mobevents/_mobevent_random
execute as @p[c=1] if score mobeventstoggle Mode = one endurance run kill @e[type=ds:negative_field]
execute as @p[c=1] if score mobeventstoggle Mode = three endurance run kill @e[type=ds:negative_field]

scoreboard players set @a[scores={move=1..,BasicM1s=!0}] BasicM1s 0
scoreboard players set @a[scores={move=1..,BasicM1=!0}] BasicM1 0

tag @a[tag=!menu,tag=selectedtrait1] remove selectedtrait1
tag @a[tag=!menu,tag=selectedtrait2] remove selectedtrait2
tag @a[tag=!menu,tag=startscreen] remove startscreen
tag @a[tag=!menu,tag=rolledtrait] remove rolledtrait


execute as @a[scores={BasicM1=1..}] at @s run function m1move

scoreboard players set @e[scores={damagehalf=1..},tag=unselect] damagehalf 0
scoreboard players set @e[scores={damage=1..},tag=unselect] damage 0
execute as @e[scores={damagehalf=1..},type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function damageadd
execute as @e[scores={damage=1..},type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run function damageadd


tag @e[scores={Hyper=1..,Flourish=1..},tag=flourish] remove flourish
tag @e[scores={Hyper=1..,Flourish=1..},tag=fallingflourish] remove fallingflourish
tag @e[scores={Hyper=1..,knockdown=1..},tag=knockdown] remove knockdown
tag @e[scores={Hyper=1..,knockdown=1..},tag=hardknockback] remove hardknockback
tag @e[scores={Hyper=1..,knockdown=1..},tag=downknockback] remove downknockback
tag @e[scores={Hyper=1..,knock=1..},tag=knock] remove knock
tag @e[scores={Flourish=1..},tag=unselect,tag=flourish] remove flourish
tag @e[scores={Flourish=1..},tag=unselect,tag=fallingflourish] remove fallingflourish
tag @e[scores={knockdown=1..},tag=unselect,tag=knockdown] remove knockdown
tag @e[scores={knockdown=1..},tag=unselect,tag=hardknockback] remove hardknockback
tag @e[scores={knockdown=1..},tag=unselect,tag=downknockback] remove downknockback
tag @e[scores={knock=1..},tag=unselect,tag=knock] remove knock
scoreboard players set @e[scores={Hyper=1..,Flourish=1..}] Flourish 0
scoreboard players set @e[scores={Hyper=1..,knockdown=1..}] knockdown 0
scoreboard players set @e[scores={Hyper=1..,knock=1..}] knock 0
scoreboard players set @e[scores={Flourish=1..},tag=unselect] Flourish 0
scoreboard players set @e[scores={knockdown=1..},tag=unselect] knockdown 0
scoreboard players set @e[scores={knock=1..},tag=unselect] knock 0

execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={knock=1..},c=1] run function knock
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Flourish=1..},c=1] run function flourish
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={knockdown=1..},c=1] run function knockdown


execute as @e[type=ds:mahoraga_ritual2,name="Mahoraga",name=!"MahoragaSlash",scores={Deleter=1..}] at @s run function shikigami/shikigami/mahoraga_death_anim
execute as @e[type=ds:mahoragaboss,family=mahoraga] at @s run function shikigami/shikigami/mahoragaboss
execute as @e[type=ds:mahoragatamed,family=mahoraga] at @s run function shikigami/shikigami/mahoragatamed
execute as @e[type=ds:mahoraga_ritual2,name=!"Mahoraga",name=!"MahoragaSlash",scores={Deleter=1..}] at @s run function shikigami/shikigami/mahoragaritual2

execute as @e[family=damage,scores={itemdrop=1}] at @s run function item_drop

tag @e[family=projectile,tag=!Frames] add Frames


execute as @e[scores={Stun=1..},c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run function stun
effect @e[scores={Deleter=1..},type=armor_stand] invisibility 1 10 true
effect @e[scores={Frames=3..},type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex] fire_resistance 1 10 true
effect @e[scores={Frames=1},type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex] fire_resistance 0 20 true
effect @e[scores={Frames=3..},type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex] resistance 1 10 true
effect @e[scores={Frames=1},type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex] resistance 0 20 true

execute as @e[scores={tpdown=1..2},type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!DomainExpansion] at @s run spreadplayers ~ ~ 1 2 @s

execute as @e[family=boss,c=1] run function bosscmd


execute as @a[tag=creative] unless entity @s[m=c] run tag @s remove creative
tag @a[m=c,tag=!creative] add creative
execute as @a[tag=spectator] unless entity @s[m=spectator] run tag @s remove spectator
tag @a[m=spectator,tag=!spectator] add spectator
execute as @a[tag=unselect] unless entity @s[m=c] unless entity @s[m=spectator] run tag @s remove unselect
tag @a[m=c,tag=!unselect] add unselect
tag @a[m=spectator,tag=!unselect] add unselect
scoreboard players set @a[m=spectator,scores={Frames=0..3}] Frames 10
scoreboard players set @a[m=c,scores={Frames=0..3}] Frames 10





execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={move=0},family=!mahoraga] at @s unless entity @s[scores={ab=0}] run scoreboard players set @s ab 0
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={move=1..},family=!mahoraga] at @s unless entity @s[scores={ab=1}] run scoreboard players set @s ab 1
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={domain=1..},family=!mahoraga] at @s unless entity @s[scores={ab=1}] run scoreboard players set @s ab 1





tag @e[type=!item,scores={Sneaking=3..},tag=doublesneak] remove doublesneak
tag @e[type=!item,scores={Sneaking=0},tag=doublesneak] remove doublesneak


tag @a[scores={domain=0,domainstart=0,Disabled=0,move=0},hasitem={item=ds:cursedenergy,location=slot.weapon.mainhand,quantity=0},tag=abilitying] remove abilitying
tag @a[scores={cutscene=1..},tag=!abilitying] add abilitying
tag @a[scores={sukunacutscene=1..},tag=!abilitying] add abilitying
tag @a[scores={domain=1..},tag=!abilitying] add abilitying
tag @a[scores={domainstart=1..},tag=!abilitying] add abilitying
tag @a[scores={move=1..},tag=!abilitying] add abilitying
tag @a[scores={Disabled=1..},tag=!abilitying] add abilitying

tag @e[tag=domainactive] remove domainactive
tag @e[type=!item,scores={domainactive=1..},tag=!domainactive] add domainactive

tag @e[tag=sneaking] remove sneaking
tag @a[scores={Sneaking=1..},tag=!sneaking] add sneaking

tag @a[tag=uplook] remove uplook
tag @a[rx=75,tag=!uplook] add uplook

tag @a[tag=lookingup] remove lookingup
tag @a[rx=-80,tag=!lookingup] add lookingup

scoreboard players set @a[scores={Evade=101..}] Evade 100
scoreboard players set @a[scores={Evade=-9999..-1}] Evade 0


 scoreboard players remove @a[scores={BasicM1=1..}] BasicM1 1
scoreboard players set @e[type=!item,scores={M1Reset=1..2}] BasicM1s 0
scoreboard players set @e[type=!item,scores={BasicM1=1..}] M1ing 2


scoreboard players set @a[scores={detect_sneak=0,Sneaking=1..}] Sneaking 0
scoreboard players add @a[scores={detect_sneak=1..}] Sneaking 1

scoreboard players add @a[scores={detect_sprint=1..}] sprinting 1
scoreboard players set @a[scores={detect_sprint=0,sprinting=!0}] sprinting 0

inputpermission set @a[scores={Move=3..},haspermission={movement=enabled}] movement disabled
inputpermission set @a[scores={Move=1..2},haspermission={movement=disabled}] movement enabled

camera @a[scores={Camera=1..3}] clear
inputpermission set @a[scores={Camera=4..},haspermission={camera=enabled}] camera disabled
inputpermission set @a[scores={Camera=1..3},haspermission={camera=disabled}] camera enabled


scoreboard players remove @e[scores={Frames=1..}] Frames 1
tag @e[type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,scores={Frames=3..},tag=!Frames] add Frames
tag @e[type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,scores={Frames=1..2},tag=Frames] remove Frames

scoreboard players set @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Stun=2..,Disabled=0..3}] Disabled 2
scoreboard players set @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Stun=2..,Disabled2=0..3}] Disabled2 2
scoreboard players add @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={move=1..}] Disabled 1
scoreboard players set @a[scores={move=1..}] Disabled 1
scoreboard players set @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={domainstart=1..}] Disabled 1
scoreboard players set @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={domain=1..}] Disabled 1
scoreboard players set @a[scores={Disabled2=3..,Stun=0,Disabled=0..3}] Disabled 2
scoreboard players set @a[scores={M1ing=1..}] Disabled2 2



replaceitem entity @a[scores={DashCD=0,Dash=0,Stun=0},hasitem={item=ds:dash,location=slot.hotbar,quantity=0,slot=1}] slot.hotbar 1 ds:dash 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @a[scores={Stun=1..,Evade=100..},hasitem={item=ds:evade,location=slot.hotbar,quantity=0,slot=1}] slot.hotbar 1 ds:evade 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}




kill @e[type=!player,scores={Deleter=0..1},family=!familiar]
damage @e[type=!player,scores={Deleter=0..1},family=familiar] 999999 override

execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={Move=1..,move=0,cutscene=0},tag=!unlimited_hit] at @s run tp @s ~~~
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!player,scores={Move=1..,move=0,cutscene=0},tag=unlimited_hit] at @s unless block ~~-0.1~ air run tp @s ~~~


scoreboard players random @a[tag=tacticaliq,scores={blackflashchance=235..}] blackflashchance 1 234
scoreboard players random @a[tag=530kiq,scores={blackflashchance=231..}] blackflashchance 1 230

scoreboard players set @a[scores={Stun=1..},hasitem={item=ds:evade,location=slot.weapon.mainhand}] Evasive 21

execute as @e[type=!player,type=!item,scores={blackflashchance=7,cutscene=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] unless entity @s[scores={blackflashing=0..}] run scoreboard players add @s blackflashing 0
scoreboard players set @e[tag=heavenlyrestriction,scores={blackflashchance=1..}] blackflashchance 0
scoreboard players set @e[family=heavenlyrestriction,scores={blackflashchance=1..}] blackflashchance 0
scoreboard players random @a[scores={blackflashchance=7,cutscene=0,grade=2..,blackflashing=0},tag=!heavenlyrestriction] blackflashTag 1 4
scoreboard players random @a[scores={blackflashchance=7,cutscene=1..,grade=2..,blackflashing=0},tag=!heavenlyrestriction,tag=cutsceneblackflash] blackflashTag 1 4
scoreboard players random @e[type=!player,type=!item,scores={blackflashchance=7,cutscene=0,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] blackflashTag 1 4
scoreboard players random @e[type=!player,type=!item,scores={blackflashchance=7,cutscene=1..,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction,tag=cutsceneblackflash] blackflashTag 1 4

execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={dying=1..}] at @s run function dying

tag @e[type=!item,scores={blackflashchance=7,blackflashTag=1,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] add blackflash1
tag @e[type=!item,scores={blackflashchance=7,blackflashTag=2,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] add blackflash2
tag @e[type=!item,scores={blackflashchance=7,blackflashTag=3,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] add blackflash3
tag @e[type=!item,scores={blackflashchance=7,blackflashTag=4,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] add blackflash4
scoreboard players set @e[type=!item,scores={blackflashchance=7,blackflashTag=1,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] blackflashing 10
scoreboard players set @e[type=!item,scores={blackflashchance=7,blackflashTag=2,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] blackflashing 12
scoreboard players set @e[type=!item,scores={blackflashchance=7,blackflashTag=3,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] blackflashing 12
scoreboard players set @e[type=!item,scores={blackflashchance=7,blackflashTag=4,blackflashing=0},tag=!heavenlyrestriction,family=!heavenlyrestriction] blackflashing 12

execute as @e[type=!item,type=!xp_orb,scores={detect_health=0..},tag=blackflash1,tag=!heavenlyrestriction] at @s run function blackflash1
execute as @e[type=!item,type=!xp_orb,scores={detect_health=0..},tag=blackflash2,tag=!heavenlyrestriction] at @s run function blackflash2
execute as @e[type=!item,type=!xp_orb,scores={detect_health=0..},tag=blackflash3,tag=!heavenlyrestriction] at @s run function blackflash3
execute as @e[type=!item,type=!xp_orb,scores={detect_health=0..},tag=blackflash4,tag=!heavenlyrestriction] at @s run function blackflash4




scoreboard players set @e[type=!item,scores={blackflashTag=1..4}] blackflashTag 0
tag @e[type=!item,scores={blackflashchance=7},tag=cutsceneblackflash] remove cutsceneblackflash
scoreboard players set @e[type=!item,scores={blackflashchance=7}] blackflashchance 0



scoreboard players set @e[type=!item,scores={cutscene=2..}] Frames 5

execute as @p[tag=limitless,c=1] run function limitless/limitless
execute as @p[tag=shikigami,c=1] run function shikigami/shikigami
execute as @p[tag=lovetrain,c=1] run function lovetrain/lovetrain
execute as @p[tag=lightning,c=1] run function kashimo/lightning
execute as @p[tag=explosive,c=1] run function explosive/explosive
execute as @p[tag=boogie_woogie,c=1] run function boogie_woogie/boogie_woogie



tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=yujifists] remove yujifists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=nyoistaff] remove nyoistaff
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=invertedspear] remove invertedspear
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=exterminationsword] remove exterminationsword
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!wepswitch,tag=playfulcloud] remove playfulcloud
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=sharpenedcloud] remove sharpenedcloud
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=soulkatana] remove soulkatana
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=basicfists] remove basicfists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=executionsword] remove executionsword
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=katana] remove katana
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=shadowstylekatana] remove shadowstylekatana
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=slaughterdemon] remove slaughterdemon
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=blackblade] remove blackblade
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=calamityclaws] remove calamityclaws
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=kamutoke] remove kamutoke
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=hiten] remove hiten
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=gavel1] remove gavel1
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=gavel2] remove gavel2
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=gavel3] remove gavel3
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=atomicsword] remove atomicsword
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=voidkatana] remove voidkatana
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=waterfists] remove waterfists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=hrfists] remove hrfists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=limitlessfists] remove limitlessfists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=lovetrainfists] remove lovetrainfists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=lightningfists] remove lightningfists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=flamefists] remove flamefists
tag @a[tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=idle_fists] remove idle_fists

tag @a[hasitem={item=ds:yuji_fists,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!yujifists] add yujifists
tag @a[hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!playfulcloud] add playfulcloud
tag @a[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!sharpenedcloud] add sharpenedcloud
tag @a[hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!exterminationsword] add exterminationsword
tag @a[hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!invertedspear] add invertedspear
tag @a[hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!soulkatana] add soulkatana
tag @a[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!nyoistaff] add nyoistaff
tag @a[hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!basicfists] add basicfists
tag @a[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!executionsword] add executionsword
tag @a[hasitem={item=ds:katana,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!katana] add katana
tag @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!shadowstylekatana] add shadowstylekatana
tag @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!slaughterdemon] add slaughterdemon
tag @a[hasitem={item=ds:black_blade,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!blackblade] add blackblade
tag @a[hasitem={item=ds:calamity_claws,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!calamityclaws] add calamityclaws
tag @a[hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!kamutoke] add kamutoke
tag @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!hiten] add hiten
tag @a[hasitem={item=ds:gavel1,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!gavel1] add gavel1
tag @a[hasitem={item=ds:gavel2,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!gavel2] add gavel2
tag @a[hasitem={item=ds:gavel3,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!gavel3] add gavel3
tag @a[hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!atomicsword] add atomicsword
tag @a[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!voidkatana] add voidkatana
tag @a[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!waterfists] add waterfists
tag @a[hasitem={item=ds:lightning1,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!lightningfists] add lightningfists
tag @a[hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!hrfists] add hrfists
tag @a[hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!lovetrainfists] add lovetrainfists
tag @a[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!limitlessfists] add limitlessfists
tag @a[hasitem={item=ds:flames_fists,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!flamefists] add flamefists
tag @a[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!idle_fists] add idle_fists
tag @a[hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!idle_fists] add idle_fists
tag @a[hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},tag=!wep1,tag=!wep2,tag=!wep3,tag=!wep4,tag=!wep5,tag=!idle_fists] add idle_fists

tag @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={domain=1..},tag=domainlayout] remove domainlayout

effect @a[scores={agility=10..,detect_sprint=1..},tag=!heian_era,m=!spectator] speed 2 0 true
effect @a[scores={agility=20..,detect_sprint=1..},tag=!heian_era,m=!spectator] speed 2 1 true
effect @a[scores={agility=30..,detect_sprint=1..},tag=!heian_era,m=!spectator] speed 2 2 true
effect @a[scores={agility=40..,detect_sprint=1..},tag=!heian_era,m=!spectator] speed 2 3 true
effect @a[scores={agility=50..,detect_sprint=1..},tag=!heian_era,m=!spectator] speed 2 4 true
effect @a[scores={detect_sprint=1..},tag=heian_era,m=!spectator] speed 1 15 true
effect @a[scores={BasicM1s=1..}] speed 0 55 true
effect @a[scores={AfterAnim=1..}] speed 0 55 true

effect @a[scores={agility=15..},m=!spectator] jump_boost 1 0 true
effect @a[scores={agility=30..},m=!spectator] jump_boost 1 1 true
effect @a[scores={agility=45..},m=!spectator] jump_boost 1 2 true

effect @a[tag=curse,scores={detect_sneak=1..}] saturation 1 1 true

execute as @e[type=ds:agito] at @s run function shikigami/shikigami/agito


scoreboard players remove @e[type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!DomainExpansion,scores={tpdown=1..}] tpdown 1

execute as @e[type=ds:no_knockback_dummy] unless entity @s[scores={detect_health=0..}] run scoreboard players add @s detect_health 0
execute as @e[type=ds:knockback_dummy] unless entity @s[scores={detect_health=0..}] run scoreboard players add @s detect_health 0

execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={antiheal=1..},c=1] at @s run function antiheal

execute as @a if score @s Energy > @s EnergyCap run scoreboard players operation @s Energy < @s EnergyCap

effect @a[tag=curse,scores={move=0..5},tag=!satiated] saturation infinite 1 true
effect @a[tag=satiated,scores={move=0..5}] saturation infinite 3 true
effect @a[tag=exoskeleton,scores={Stun=1..}] resistance 1 0 true

tag @p[tag=divergentfist,scores={divergentfist=0,move=0}] remove divergentfist


execute as @a[scores={health_percent=0..11},tag=undying,c=1] at @s run function undyingwill
execute as @a[scores={health_percent=0..21},tag=insanity,c=1] at @s run function insanitytrait
scoreboard players set @a[scores={insanity=1..,health_percent=22..},tag=insanity] insanity 0


scoreboard players set @e[scores={aircom=1..,knockdown=1..}] aircom 0
scoreboard players set @e[scores={aircom=1..,knock=1..}] aircom 0
scoreboard players set @e[scores={aircom=1..,Flourish=1..}] aircom 0
scoreboard players remove @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={aircom=1..}] aircom 1
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={aircom=1..},c=3] at @s run tp @s @s

execute as @a[scores={expadd=1..}] run function expadd
execute as @a if score @s Exp >= @s ExpMax at @s run function level_up


scoreboard players set @e[scores={Hit=1..},tag=unselect] Hit 0
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Hit=1..}] at @s if entity @a[r=80] run function hit

execute as @e[type=ds:cursed_closet] at @s if entity @a[r=40] run function cursed_closet

execute as @e[family=regular_human_m1s] at @s if entity @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!regular_human_m1s,r=15,c=1] run function mobs/regular_human_m1s

execute as @e[type=ds:watcher,c=2] at @s if entity @a[r=10] run function watcher
playanimation @e[scores={Deleter=194..},type=ds:toji_apple] animation.toji.apple

event entity @e[has_property={property:body_transformation=1..4,property:sukuna_markings=1..}] sukunatextureoff

clear @a[hasitem={item=heavy_core},tag=!unselect] heavy_core

execute as @a[c=2,tag=flames,scores={detect_sprint=1..}] at @s if block ~~~ lava run scriptevent ds:fly

scoreboard players set @p[tag=!lovetrain,scores={hakarimode=3..}] hakarimode 2

execute as @e[family=despawncito] unless entity @s[scores={Deleter=-999..}] run scoreboard players set @s Deleter 6


