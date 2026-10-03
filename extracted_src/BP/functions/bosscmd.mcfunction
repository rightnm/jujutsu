#execute as @e[family=hero,family=boss,tag=basic_behavior,tag=HeroTRG] at @s if entity @e[family=shikigami,family=!projectile,family=!despawncito,family=!damage,family=!disappear,tag=!unselect,family=!hero,family=!dummy,type=!ds:black_wolf,type=!ds:white_wolf,type=!ds:totality,type=!ds:maxelephant,type=!ds:rabbitescape,type=!ds:serpent,type=!ds:toad,rm=0.15,r=80,c=1] run tag @s remove HeroTRG
#execute as @e[family=hero,family=boss,tag=basic_behavior,tag=HeroTRG] at @s if entity @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!hero,c=1,rm=0.15,r=80,family=!dummy,family=!shikigami] run tag @s remove HeroTRG
#execute as @e[family=hero,family=boss,tag=basic_behavior,tag=!HeroTRG] at @s unless entity @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!hero,c=1,rm=0.15,r=80,family=!dummy,family=!shikigami] unless entity @e[family=shikigami,family=!projectile,family=!despawncito,family=!damage,family=!disappear,tag=!unselect,family=!hero,family=!dummy,type=!ds:black_wolf,type=!ds:white_wolf,type=!ds:totality,type=!ds:maxelephant,type=!ds:rabbitescape,type=!ds:serpent,type=!ds:toad,rm=0.15,r=80,c=1] run tag @s add HeroTRG



tag @e[tag=simpledomain_protecting,family=boss,tag=basic_behavior] remove simpledomain_protecting
execute as @e[tag=!heavenlyrestriction,tag=domainimmune,tag=!hollowwickerbasket,tag=!domainamplification,tag=!simpledomain_protecting,tag=!domainactive,family=boss,tag=basic_behavior] at @s if entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run tag @s add simpledomain_protecting
execute as @e[tag=!heavenlyrestriction,tag=domainimmune,tag=!hollowwickerbasket,tag=!domainamplification,tag=!simpledomain_protecting,tag=!domainactive,family=boss,tag=basic_behavior] at @s if entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run tag @s add simpledomain_protecting
execute as @e[tag=domainimmune,tag=!hollowwickerbasket,tag=!domainamplification,tag=!simpledomain_protecting,tag=!domainactive,family=boss,tag=basic_behavior] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run tag @s add simpledomain_protecting
execute as @e[tag=domainimmune,tag=!hollowwickerbasket,tag=!domainamplification,tag=!simpledomain_protecting,tag=!domainactive,family=boss,tag=basic_behavior] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run tag @s add simpledomain_protecting

execute as @e[tag=simpledomain_protecting,family=boss,tag=basic_behavior] at @s at @e[type=ds:simple_domain,r=20,c=1] run function mobs/basic_behavior/simpledomain_protecting
execute as @e[tag=simpledomain_protecting,family=boss,tag=basic_behavior] at @s unless entity @e[type=ds:simple_domain,r=20,tag=shadow_style] if entity @e[type=ds:simple_domain,r=10,rm=7,tag=!shadow_style] unless entity @e[type=ds:simple_domain,r=7,tag=!shadow_style] run effect @s slowness 1 5 true
execute as @e[tag=simpledomain_protecting,family=boss,tag=basic_behavior] at @s if entity @e[type=ds:simple_domain,r=20,rm=16,tag=shadow_style] unless entity @e[type=ds:simple_domain,r=7,tag=!shadow_style] unless entity @e[type=ds:simple_domain,r=16,tag=shadow_style] run effect @s slowness 1 5 true
effect @e[scores={scroll=3170..},family=boss] invisibility 10 1 true


execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s if entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] if entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] run effect @s slowness 1 4 true
execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s if entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] unless entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] if entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,rm=0.15,r=20,c=1] run effect @s slowness 1 4 true
execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s if entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] unless entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] unless entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,rm=0.15,r=20,c=1] if entity @e[tag=simpledomain,scores={move=1..},hasitem={item=ds:shadow_style_katana},rm=0.15,r=20,c=1] run effect @s slowness 1 4 true

execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s unless entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s if entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] run effect @s slowness 1 4 true
execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s unless entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s unless entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] if entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,rm=0.15,r=20,c=1] run effect @s slowness 1 4 true
execute as @e[tag=!heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s unless entity @e[family=projectile,r=55,tag=DomainExpansion,name=!ChimeraGarden1] at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s unless entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] unless entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,rm=0.15,r=20,c=1] if entity @e[tag=simpledomain,scores={move=1..},hasitem={item=ds:shadow_style_katana},rm=0.15,r=20,c=1] run effect @s slowness 1 4 true
execute as @e[tag=heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s if entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] run effect @s slowness 1 4 true
execute as @e[tag=heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s unless entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] if entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,rm=0.15,r=20,c=1] run effect @s slowness 1 4 true
execute as @e[tag=heavenlyrestriction,tag=!domainimmune,tag=!domainactive,family=boss,tag=basic_behavior] at @s at @e[family=damage,family=projectile,family=boss,r=200,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,c=1] if entity @e[tag=sukuna,scores={domainactive=1..},r=200] at @s unless entity @e[tag=simpledomain,scores={move=1..},rm=0.15,r=10,c=1] unless entity @e[tag=simpledomain,scores={move=1..},type=ds:kusakabe,rm=0.15,r=20,c=1] if entity @e[tag=simpledomain,scores={move=1..},hasitem={item=ds:shadow_style_katana},rm=0.15,r=20,c=1] run effect @s slowness 1 4 true



execute as @e[family=special_grade,family=boss,scores={move=1..8},tag=!toji_function] at @s positioned ^^1^4 run damage @e[family=grade4,r=4] 100 override
execute as @e[family=special_grade,family=boss,scores={move=1..8},tag=!toji_function] at @s positioned ^^1^4 run damage @e[family=grade3,r=4] 100 override
execute as @e[family=special_grade,family=boss,scores={move=1..8},tag=toji_function] at @s positioned ^^1^4 run damage @e[family=grade4,r=4,family=!flyhead] 100 override
execute as @e[family=special_grade,family=boss,scores={move=1..8},tag=toji_function] at @s positioned ^^1^4 run damage @e[family=grade3,r=4,family=!flyhead] 100 override

scoreboard players remove @e[tag=enraged_yuji,scores={Stun=5..}] Stun 2
scoreboard players remove @e[tag=enraged_yuji,scores={Disabled=3..}] Disabled 2

execute as @e[type=!player,family=boss,scores={cutscene=3..},tag=!customfacing] at @s run tp @s ~~~~ 0
tag @e[type=!player,family=boss,scores={cutscene=1..2},tag=customfacing] remove customfacing

tag @e[family=boss,family=big,tag=!Big] add Big
tag @e[family=boss,family=Big,tag=!Big] add Big

scoreboard players set @e[scores={detect_health=0..,antiheal=1..,rct=1..},type=!player] rct 0

#------------



execute as @e[type=wither] at @s run function bosses/wither


execute as @e[family=boss,type=ds:yuji_itadori_awakened,c=1] at @s run function mobs/sorcerers/yuji_awakened/yuji_awakened_cmds
execute as @e[family=boss,type=ds:student_gojo2,c=16] at @s run function mobs/student_gojo
execute as @e[family=boss,type=ds:student_gojo,c=16] at @s run function mobs/student_gojo
execute as @e[family=boss,type=ds:maki_cullinggames,c=16] at @s run function mobs/maki_culling

execute as @e[family=boss,type=ds:higuruma,c=16] at @s run function mobs/higuruma
execute as @e[family=boss,type=ds:hakari,c=16] at @s run function mobs/hakari
execute as @e[family=boss,type=ds:kusakabe,c=16] at @s run function mobs/kusakabe
execute as @e[family=boss,type=ds:yuji_itadori,c=16] at @s run function mobs/sorcerers/yuji/yuji

execute as @e[family=boss,type=ds:megumi,c=16] at @s run function mobs/megumi
execute as @e[family=boss,type=ds:inumaki,c=16] at @s run function mobs/sorcerers/inumaki/inumaki

execute as @e[family=boss,type=ds:todo,c=16] at @s run function mobs/todo


execute as @e[family=boss,type=ds:miwa,c=16] at @s run function mobs/miwa
execute as @e[family=boss,type=ds:cursed_doll,c=5] at @s if entity @e[type=!ds:cursed_doll,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=15,c=1] run function mobs/cursed_doll/cursed_doll



execute as @e[family=boss,type=ds:kashimo,c=16] at @s run function mobs/kashimo
execute as @e[family=boss,type=ds:toji_boss,c=1] at @s run function mobs/toji/toji_cmds
execute as @e[family=boss,type=ds:toji,c=1] at @s unless entity @e[family=boss,type=ds:toji_boss,c=1] run function mobs/toji/toji_cmds
execute as @e[family=boss,type=ds:toji_reawakened,c=16] at @s run function bosses/toji_v2
execute as @e[family=boss,type=ds:toji_awakening,c=16] at @s run function bosses/toji_cutscene

execute as @e[family=boss,type=ds:haruta,c=16] at @s run function mobs/haruta



#curses
execute as @e[family=boss,type=ds:jogo,c=16] at @s run function mobs/jogo
execute as @e[family=boss,type=ds:finger_bearer,c=16] at @s run function bosses/finger_bearer

execute as @e[family=boss,type=ds:mahito,c=16] at @s run function mobs/mahito

execute as @e[family=boss,type=ds:azureflames_curse,c=16] at @s if entity @e[type=!ds:azureflames_curse,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=40,c=1] run function mobs/curses/azure_flames/azure_flames
execute as @e[family=boss,type=ds:centipede_grade1,c=16] at @s if entity @e[type=!ds:centipede_grade1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=40,c=1] run function mobs/curses/centipede/centipede

execute as @e[family=boss,family=brute] at @s if entity @e[family=!brute,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=15,c=1] run function mobs/curses/brute
execute as @e[family=boss,type=ds:sharko,c=16] at @s if entity @e[type=!ds:sharko,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=40,c=1] run function mobs/curses/sharko/sharko
execute as @e[family=boss,type=ds:grasshopper_curse] at @s if entity @e[type=!ds:grasshopper_curse,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=15,c=1] run function mobs/curses/grasshopper/grasshopper



execute as @e[family=boss,family=regular_curse_m1s] at @s if entity @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!regular_curse_m1s,r=15,c=1] run function mobs/curses/regular_curse_m1s






#------------


#mobaggro
execute as @e[family=boss] unless entity @s[scores={combat=1..}] at @s if entity @e[scores={punch=1..},r=3,rm=0.15] run scoreboard players set @s combat 800
execute as @e[family=boss,family=neutral,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[scores={combat=1..},r=5,rm=0.15] run scoreboard players set @s combat 800
execute as @e[family=boss,family=hero,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[family=villain,r=33] run scoreboard players set @s combat 800
execute as @e[family=boss,family=hero,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[family=purecurse,r=33] run scoreboard players set @s combat 800
execute as @e[family=boss,family=hero,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[tag=curse,r=33] run scoreboard players set @s combat 800
execute as @e[family=boss,family=villain,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[family=hero,r=33] run scoreboard players set @s combat 800
execute as @e[family=boss,family=purecurse,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[family=sorcerer,r=33] run scoreboard players set @s combat 800
execute as @e[family=boss,family=purecurse,family=!gojo] unless entity @s[scores={combat=1..}] at @s if entity @e[family=human,r=33] run scoreboard players set @s combat 800


#teleport path
execute as @e[type=ds:cursed_closet,family=boss,scores={detect_health=1..,strength=20..}] at @s if block ~~-0.25~ water run scoreboard players set @s Mode 151
execute as @e[type=ds:cursed_closet,family=boss,scores={detect_health=1..,strength=20..}] at @s if block ~~-0.25~ lava run scoreboard players set @s Mode 151

scoreboard players add @e[type=ds:cursed_closet,family=boss,scores={Deleter=1..,combat=1..},family=!shikigami] Deleter 1

execute as @e[type=!ds:cursed_closet,family=boss,scores={combat=1..,detect_health=0..,move=0,cutscene=0}] at @s unless entity @e[family=boss,scores={combat=1..},r=8,rm=0.15,tag=!Frames] run scoreboard players add @s Mode 1
execute as @e[type=!ds:cursed_closet,family=boss,scores={Mode=125..,detect_health=0..,move=0,cutscene=0}] at @s unless entity @s[scores={domainstart=1..}] unless entity @s[scores={domain=1..}] run function mob_path


#despawn
execute as @e[family=boss,family=!bossfight,family=!projectile,family=!despawncito,family=!damage,type=!ds:cursed_doll,type=!ds:cursed_closet,type=!ds:mahoragaboss,type=!ds:mahoragatamed,tag=!domainactive,family=!grade4,family=!grade3,scores={scroll=1..}] at @s if entity @e[scores={combat=1..},r=60,rm=0.15,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scoreboard players set @s scroll 0
execute as @e[family=boss,family=!bossfight,family=!projectile,family=!despawncito,family=!damage,type=!ds:cursed_doll,type=!ds:cursed_closet,type=!ds:mahoragaboss,type=!ds:mahoragatamed,tag=!domainactive,family=!grade4,family=!grade3] at @s unless entity @e[tag=domainactive,r=60] unless entity @e[scores={combat=1..},r=60,rm=0.15,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] unless entity @e[type=ds:cursed_closet,r=50] run scoreboard players add @s scroll 1
kill @e[family=boss,family=!bossfight,family=!projectile,family=!despawncito,family=!damage,type=!ds:cursed_closet,type=!ds:mahoragaboss,type=!ds:mahoragatamed,tag=!domainactive,family=!grade4,family=!grade3,scores={scroll=3200..}]

scoreboard players set @e[type=ds:cursed_closet,scores={Evade=100..},type=!player] Mode 150
scoreboard players set @e[type=ds:cursed_closet,scores={Evade=100..},type=!player] Evade 0



execute as @e[type=!player,scores={combat=1..,move=0,Move=0,cutscene=0,strength=30..},c=16] at @s unless entity @s[scores={domain=1..}] unless entity @s[scores={domainstart=1..}] if entity @e[scores={atk=1..2},r=6,rm=0.15] run function _hitdodge




