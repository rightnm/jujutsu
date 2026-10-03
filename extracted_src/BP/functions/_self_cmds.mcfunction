execute as @a[tag=GrabDrag] at @s unless entity @e[family=mahoraga,r=10] run tag @s remove GrabDrag
execute as @e[type=ds:judgeman,name=Judgeman] at @s run function judgeman/judgeman
execute as @e[tag=!the_judge,scores={nocts=1..},c=1] run function nocts

scoreboard players add count20ticks Mode 1
execute if score count20ticks Mode >= twenty endurance run function cheats/remove_tickingareas


execute as @e[y=297,dy=320,scores={move=0,cutscene=0,domain=0},tag=!abilitying] at @s unless entity @e[family=projectile,tag=DomainExpansion,r=60] unless entity @e[tag=abilitying,r=60] at @s run function tpdown


tag @e[scores={nocts=0},tag=nocts] remove nocts

execute as @a[tag=lightning,tag=abilitying,tag=!Frames] at @s if block ~~~ water run function kashimo/water_conduct
execute as @a[tag=lightning,scores={Sneaking=5..}] at @s if block ~~~ water run function kashimo/water_conduct

tag @a[scores={Energy=-999999..0},tag=domainlayout] remove domainlayout


execute as @e[tag=sukuna_warning,c=1] at @s run function idle_transfig/sukuna_warning_cutscene
execute as @e[tag=yuji_rage_cutscene_mahito,c=1] at @s run function idle_transfig/yuji_rage_cutscene


damage @a[scores={Energy=-9999999..-1}] 3 override
scoreboard players add @a[scores={Energy=-9999999..-1}] Energy 2

scoreboard players set @a[scores={detect_health=0,move=!0}] move 0
scoreboard players set @a[scores={detect_health=0}] Stun 25
scoreboard players set @a[scores={detect_health=0,domain=!0}] domain 0
scoreboard players set @a[scores={detect_health=0,domainactive=!0}] domainactive 0

execute as @a[scores={tpdown=1..}] at @s run fill ~10 ~ ~10 ~-10 ~-15 ~-10 air [] replace barrier

execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={thezone=1..},c=1] at @s run function thezone
execute as @a[tag=shadow_wheel,tag=!arenaboss] at @s run function shikigami/shadow_wheel_scroll


execute as @a[tag=itemUse:ds:stats_book,c=1,tag=!arenaboss] at @s run function _stats_click

tag @e[scores={divergent=0},tag=fistenergy] remove fistenergy
execute as @a[hasitem={item=ds:cursedenergy,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function ce_item
execute as @a[tag=rctself,scores={move=1..},tag=!arenaboss] at @s run function ce/rctself
execute as @a[tag=divergentfist,scores={move=1..},tag=!arenaboss] at @s run function ce/divergentfist
execute as @a[tag=simpledomain,scores={move=1..},tag=!arenaboss] at @s run function ce/simpledomain
execute as @a[tag=domainamp,scores={move=1..},tag=!arenaboss] at @s run function ce/domainamp
execute as @a[tag=hollow_basket_activate,scores={move=1..},tag=!arenaboss] at @s run function ce/basket_enable


tag @a[scores={detect_health=1..10,endurance=50..,EnergyCap=300..,cutscene=0},tag=!reversecursedobtain,tag=!reversecursed] add reversecursedobtain
scoreboard players set @a[scores={detect_health=1..10,cutscene=0},tag=reversecursedobtain] cutscene 201

execute as @a[scores={cutscene=1..},tag=reversecursedobtain] run function ce/rct_obtain

scoreboard players add @a[scores={detect_jump=1..}] jump 1

tag @a[scores={move=0},tag=wep1] remove wep1
tag @a[scores={move=0},tag=wep2] remove wep2
tag @a[scores={move=0},tag=wep3] remove wep3
tag @a[scores={move=0},tag=wep4] remove wep4
tag @a[scores={move=0},tag=wep5] remove wep5
tag @a[scores={move=0},tag=wep6] remove wep6


execute as @a[scores={doublejumpCD=0,jump=1}] at @s if block ~~-1.0~ air run scoreboard players set @s doublejump 4
execute as @a[scores={doublejumpCD=0,jump=1}] at @s if block ~~-1.0~ air run scoreboard players set @s doublejumpCD 200
execute as @a[scores={doublejump=4,jump=1},tag=!abilitying] at @s if block ~~-1.0~ air run playanimation @s animation.double_jump
execute as @a[scores={doublejump=4,jump=1}] at @s if block ~~-1.0~ air run playsound mob.blaze.shoot @a ~~~ 1 2
execute as @a[scores={doublejump=4,jump=1}] at @s if block ~~-1.0~ air run camerashake add @a[r=5] 0.1 0.1 rotational
execute as @a[scores={doublejump=4,jump=1}] at @s if block ~~-1.0~ air run particle ds:double_jump1 ~~~
execute as @a[scores={doublejump=4,jump=1}] at @s if block ~~-1.0~ air run particle ds:double_jump2 ~~~
execute as @a[scores={doublejump=4,jump=1}] at @s if block ~~-1.0~ air run particle ds:double_jump3 ~~~
execute as @a[scores={doublejump=4,jump=1}] at @s if block ~~-1.0~ air run particle ds:double_jump4 ~~~

execute as @a[scores={doublejump=3..4,jump=1}] at @s if block ~~-1.0~ air run scriptevent ds:boostup 1.5
execute as @a[scores={doublejumpCD=1..}] at @s unless block ~~-0.1~ air run scoreboard players set @s doublejumpCD 0


execute as @a[scores={jump=1,ab=0,move=0,cutscene=0,Stun=0,detect_sprint=0,agility=15..},tag=!unselect] at @s run playanimation @s animation.jump

scoreboard players set @a[scores={detect_jump=0,jump=!0}] jump 0


tag @a[scores={rctuses=1..},tag=rctburnout] remove rctburnout
execute as @e[type=!player,scores={rct=1..},c=1] at @s unless entity @s[scores={antiheal=1..}] unless entity @s[scores={reversedcursedCD=1..}] run function rct_passive_mobs


execute as @a[scores={detect_health=0..,rct=1..},c=1,tag=!arenaboss] at @s run function rct_passive
execute as @e[scores={detect_health=0..,divergent=1..},tag=!arenaboss] at @s run function ce/divergent_passive
execute as @e[scores={detect_health=0..,domainamp=1..},tag=!arenaboss] at @s run function ce/domainamp_passive
execute as @e[scores={detect_health=0..,hollowwickerbasket=1..},tag=!arenaboss] at @s run function ce/basket_passive

tag @a[tag=cantdomain] remove cantdomain
execute as @a[tag=!cantdomain] at @s if entity @e[family=projectile,tag=DomainExpansion,r=66] run tag @s add cantdomain
execute as @a[tag=!cantdomain] at @s if entity @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,r=200] run tag @s add cantdomain

execute as @a[tag=menu] at @s run function _menu

execute unless entity @e[tag=menu] run hud @a[tag=!delusional_cutscene,tag=!plusultra,tag=!plusultra_victim,tag=!plusultra_brother] reset
hud @a[scores={cutscene=1..3}] reset
hud @a hide health
hud @a[scores={cutscene=1..}] hide hotbar
hud @a hide armor
hud @a hide status_effects

event entity @a[tag=!sixeyes,has_property={property:sixeyesb=1..}] sixeyestextureoffb
event entity @a[tag=!sixeyes,has_property={property:sixeyes=1..}] sixeyestextureoff

tag @a[scores={domainactive=0,domain=0,ab=0,domainstart=0},tag=shikigami,tag=form12] remove form12
tag @a[scores={domainactive=0,domain=0,ab=0,domainstart=0},tag=shikigami,tag=form12b] remove form12b


tag @a[tag=stats] remove stats
tag @a[hasitem={item=ds:stats_book,location=slot.weapon.mainhand},tag=!menu,tag=!stats] add stats
execute as @a[hasitem={item=ds:stats_book,location=slot.weapon.mainhand},c=1,tag=!menu] at @s run function statsbook

scoreboard players set @a[tag=heavenlyrestriction,scores={EnergyCap=!0}] EnergyCap 0
execute as @a[scores={Sneaking=5..,move=0,domainstart=0,domain=0,domainactive=0},tag=!heavenlyrestriction,tag=!nocts] run function energyrefill

execute as @e[type=!item,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={infinity=1..},c=1] at @s run function limitless/infinity

execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Evasive=1..}] run function evade
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Dash=1..}] run function dash





#combat and fighting
tellraw @p[tag=itemUse:ds:yuji_technique,hasitem={item=ds:yuji_fists,quantity=0}] {"rawtext":[{"text":"§4This technique requires the Prince of Black Sparks Trait/Combat Style."}]} 
execute as @p[tag=itemUse:ds:yuji_technique,hasitem={item=ds:yuji_fists}] at @s run function yuji/yuji_technique
execute as @p[tag=yuji_awakened,tag=!arenaboss] run function yuji/base_cmds




execute as @a[hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/basic/basic_m1s
execute as @a[hasitem={item=ds:basic_combat,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/basic/basic_attacks

execute as @a[hasitem={item=ds:yuji_fists,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/yuji/yuji_m1s
execute as @a[hasitem={item=ds:yuji_fists,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/yuji/yuji_attacks
function mobstun
execute as @e[tag=skyfall,scores={cutscene=1..},tag=!arenaboss] at @s run function fighting/yuji/skyfall

execute as @a[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/executionsword/execution_m1s
execute as @a[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/executionsword/execution_attacks

execute as @a[hasitem={item=ds:boogie_fists,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/boogie_m1s

execute as @a[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/limitless_m1s

execute as @a[hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/lovetrain_m1s

execute as @a[hasitem={item=ds:lightning1,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/kashimo_m1s

execute as @a[hasitem={item=ds:hr_combat,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/hr_m1s

execute as @a[hasitem={item=ds:flames_fists,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/fire_m1s

execute as @a[hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/exterminationsword/extermination_m1s
execute as @a[hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/exterminationsword/extermination_attacks

execute as @a[hasitem={item=ds:katana,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/katana/katana_m1s
execute as @a[hasitem={item=ds:katana,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/katana/katana_attacks

execute as @a[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/hand_sword/hand_sword_m1s
execute as @a[hasitem={item=ds:hand_sword,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/hand_sword/hand_sword_attacks

execute as @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/shadow_style_katana/katana_m1s
execute as @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/shadow_style_katana/katana_attacks

event entity @a[has_property={property:katana2=1..},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand,quantity=0},tag=!arenaboss] katana2_off
tag @a[tag=shadowkatana,hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand,quantity=0},tag=!arenaboss] remove shadowkatana

execute as @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/slaughter_demon/slaughter_demon_m1s
execute as @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/slaughter_demon/slaughter_demon_attacks

execute as @a[hasitem={item=ds:black_blade,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/black_blade/black_blade_m1s
execute as @a[hasitem={item=ds:black_blade,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/black_blade/black_blade_attacks

execute as @a[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/nyoistaff/nyoistaff_m1s
execute as @a[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/nyoistaff/nyoistaff_attacks

execute as @a[hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/invertedspear/inverted_m1s
execute as @a[hasitem={item=ds:inverted_spear,location=slot.weapon.mainhand},tag=abilitying,tag=!nocts,tag=!arenaboss] at @s run function fighting/invertedspear/inverted_attacks

execute as @a[hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/soul_sword/soul_m1s
execute as @a[hasitem={item=ds:soul_sword,location=slot.weapon.mainhand},tag=abilitying,tag=!nocts,tag=!arenaboss] at @s run function fighting/soul_sword/soul_attacks

execute as @a[hasitem={item=ds:playful_cloud,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/playfulcloud/playfulcloud_m1s
execute as @a[tag=playfulcloud,tag=abilitying,tag=!arenaboss] at @s run function fighting/playfulcloud/playfulcloud_attacks

execute as @a[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/sharpenedcloud/sharpenedcloud_m1s
execute as @a[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/sharpenedcloud/sharpenedcloud_attacks

execute as @a[hasitem={item=ds:calamity_claws,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/calamity_claws/claw_m1s
execute as @a[hasitem={item=ds:calamity_claws,location=slot.weapon.mainhand},tag=abilitying,tag=!arenaboss] at @s run function fighting/calamity_claws/claw_attacks

execute as @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/mandibles/mandibles_m1s
execute as @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},tag=abilitying,tag=!nocts,tag=!arenaboss] at @s run function fighting/mandibles/mandibles_attacks


execute as @a[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/mahito_m1s
execute as @a[hasitem={item=ds:idle_transfig_combat2,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/mahito_blade_m1s
execute as @a[hasitem={item=ds:idle_transfig_combat3,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss] at @s run function fighting/mahito_heavy_m1s
execute as @a[hasitem={item=ds:instant_body_combat,location=slot.weapon.mainhand},tag=!nocts,tag=!arenaboss,tag=instant_body] at @s run function fighting/instant_body_m1s

execute as @a[hasitem={item=ds:mountain_buster,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/mountain_buster


execute as @a[hasitem={item=ds:glock,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function glock


execute as @p[tag=itemUse:ds:conflict_essence,scores={Stun=0}] at @s run function conflict_essence


tag @a[tag=sukunacursedtool] remove sukunacursedtool
tag @a[hasitem={item=ds:kamutoke},tag=!sukunacursedtool] add sukunacursedtool
tag @a[hasitem={item=ds:hiten},tag=!sukunacursedtool] add sukunacursedtool
execute as @a[hasitem={item=ds:kamutoke,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/kamutoke/kamutoke_m1s
execute as @a[tag=kamutoke,tag=abilitying,tag=!arenaboss] at @s run function fighting/kamutoke/kamutoke_attacks

execute as @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/hiten/hiten_m1s
execute as @a[tag=hiten,tag=abilitying,tag=!arenaboss] at @s run function fighting/hiten/hiten_attacks


event entity @a[hasitem={item=ds:kamutoke,quantity=0},has_property={property:kamutoke=1..},tag=!arenaboss] kamutoke_off
event entity @a[hasitem={item=ds:hiten,quantity=0},has_property={property:hiten=1..},tag=!arenaboss] hiten_off

scoreboard players add @a[hasitem={item=ds:calamity_claws,location=slot.hotbar},has_property={property:weapon_hands=0}] damageinsurance 2
scoreboard players add @a[hasitem={item=ds:calamity_claws,location=slot.hotbar},has_property={property:weapon_hands=0}] damageadd 2
event entity @a[hasitem={item=ds:calamity_claws,location=slot.hotbar},has_property={property:weapon_hands=0}] calamity_claws_on
scoreboard players remove @a[hasitem={item=ds:calamity_claws,location=slot.hotbar,quantity=0},has_property={property:weapon_hands=1}] damageinsurance 2
scoreboard players remove @a[hasitem={item=ds:calamity_claws,location=slot.hotbar,quantity=0},has_property={property:weapon_hands=1}] damageadd 2
event entity @a[hasitem={item=ds:calamity_claws,location=slot.hotbar,quantity=0},has_property={property:weapon_hands=1}] calamity_claws_off




#clear items
event entity @a[scores={wheelactive=0},has_property={property:mahoraga_wheel=1..}] mahoraga_wheeltextureoff
event entity @a[scores={wheelactive=0},has_property={property:mahoraga_wheel2=1..}] mahoraga_wheel2textureoff
scoreboard players remove @a[scores={wheelactive=1..}] wheelactive 1
execute as @a[hasitem={item=ds:mahoragawheel,location=slot.armor.head}] at @s run function shikigami/shikigami/mahoraga_wheel


execute as @a[hasitem={item=ds:boogie_woogie_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function boogie_woogie/boogie_woogie_clear

execute as @a[hasitem={item=ds:judgeman_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function judgeman/judgeman_clear

execute as @a[hasitem={item=ds:limitless_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function limitless/limitless_clear

execute as @a[hasitem={item=ds:lovetrain_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function lovetrain/lovetrain_clear

execute as @a[hasitem={item=ds:10shadows_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function clear_skills

execute as @a[hasitem={item=ds:lightning_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function kashimo/lightning_clear

execute as @a[hasitem={item=ds:speech_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function speech/speech_clear

execute as @a[hasitem={item=ds:absorption_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function absorption/absorption_clear

execute as @a[hasitem={item=ds:explosive_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function explosive/explosive_clear

execute as @a[hasitem={item=ds:heavenly_restriction,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1] at @s run function hr/hr_clear

execute as @a[hasitem={item=ds:flames_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1,tag=!doublesneak] at @s run function flames/flames_clear

execute as @a[hasitem={item=ds:idle_transfiguration_technique,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..},c=1,tag=!doublesneak] at @s run function idle_transfig/flames_clear

execute as @a[tag=flames,c=1] at @s run function flames/flames

execute as @a[tag=sixeyes,c=1] at @s run function attributes/sixeyes

scoreboard players remove @a[scores={extsword=1..}] extsword 1
execute as @a[scores={extsword=0},hasitem={item=ds:extermination_sword}] unless entity @s[has_property={property:extermination_sword=0}] run event entity @s extermination_swordtextureoff
execute as @a[scores={extsword=0},hasitem={item=ds:extermination_sword,quantity=0}] unless entity @s[has_property={property:extermination_sword=0,property:extermination_swordretracted=0}] run event entity @s extermination_swordtextureoff
event entity @a[scores={extsword=0},hasitem={item=ds:extermination_sword},has_property={property:extermination_swordretracted=0}] extermination_swordretracted

execute if score abilities abilities = one endurance run scoreboard players set @a[scores={abilities=!92174}] abilities 92174
event entity @a[tag=!playfulcloud,has_property={property:playful_cloud=1..}] playful_cloudtextureoff

execute as @a[tag=itemUse:ds:shadow_wheel,tag=shikigami,tag=!arenaboss] run function shikigami/shadow_wheel
execute as @a[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},tag=!arenaboss] run function shikigami/shadowwheel_cmds


execute as @a[tag=!heavenlyrestriction] at @s if entity @e[family=projectile,tag=DomainExpansion,r=50] run scoreboard players add @s domainCD 1
execute as @a[tag=sukuna,tag=!heavenlyrestriction] at @s if entity @e[family=projectile,tag=DomainExpansion,r=50] run scoreboard players add @s sukuna_ab12 1
execute as @a[tag=!heavenlyrestriction] at @s if entity @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,r=200] unless entity @e[family=projectile,tag=DomainExpansion,r=50] run scoreboard players add @s domainCD 1
execute as @a[tag=sukuna,tag=!heavenlyrestriction] at @s if entity @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,r=200] unless entity @e[family=projectile,tag=DomainExpansion,r=50] run scoreboard players add @s sukuna_ab12 1

execute as @a[tag=limitless,tag=!arenaboss] at @s run function limitless/limitless_clicks
execute as @a[tag=shikigami,tag=!arenaboss] at @s run function shikigami/shikigami_clicks
execute as @a[tag=lovetrain,tag=!arenaboss] at @s run function lovetrain/lovetrain_clicks
execute as @a[tag=lightning,tag=!arenaboss] at @s run function kashimo/lightning_clicks
execute as @a[tag=explosive,tag=!arenaboss] at @s run function explosive/explosive_clicks
execute as @a[tag=heavenlyrestriction,tag=!arenaboss] at @s run function hr/hr_clicks
execute as @a[tag=judgeman,tag=!arenaboss] at @s run function judgeman/judgeman_clicks
execute as @a[tag=cursed_speech,tag=!arenaboss] at @s run function speech/speech_clicks
execute as @a[tag=absorption,tag=!arenaboss] at @s run function absorption/absorption_clicks
execute as @a[tag=flames,tag=!arenaboss] at @s run function flames/flames_clicks
execute as @a[tag=sukuna,tag=!arenaboss] at @s run function sukuna/sukuna_clicks
execute as @a[tag=boogie_woogie,tag=!arenaboss] at @s run function boogie_woogie/boogie_woogie_clicks
execute as @a[tag=idle_transfig,tag=!arenaboss] at @s run function idle_transfig/idle_clicks

execute as @a[tag=abilitying,tag=limitless,tag=!arenaboss] at @s run function limitless/limitless_moves

execute as @a[tag=abilitying,tag=shikigami,tag=!arenaboss] at @s run function shikigami/shikigami_moves

execute as @a[tag=abilitying,tag=lovetrain,tag=!arenaboss] at @s run function lovetrain/lovetrain_moves

execute as @a[tag=abilitying,tag=lightning,tag=!arenaboss] at @s run function kashimo/lightning_moves

execute as @a[tag=abilitying,tag=explosive,tag=!arenaboss] at @s run function explosive/explosive_moves

execute as @a[tag=abilitying,tag=heavenlyrestriction,tag=!arenaboss] at @s run function hr/hr_moves
execute as @e[scores={cutscene=1..},tag=deadlystrikeclash,tag=!arenaboss] at @s run function hr/deadly_clash

execute as @e[type=ds:deadly_sentencing,tag=!arenaboss] at @s run function judgeman/deadly_sentencing
execute as @a[tag=judgeman,tag=!arenaboss] at @s run function judgeman/judgeman_hammers
execute as @a[tag=abilitying,tag=judgeman,tag=!arenaboss] at @s run function judgeman/judgeman_moves

execute as @a[tag=abilitying,tag=boogie_woogie,tag=!arenaboss] at @s run function boogie_woogie/boogie_woogie_moves

execute as @a[tag=abilitying,tag=flames,tag=!arenaboss] at @s run function flames/flames_moves

execute as @a[tag=abilitying,tag=cursed_speech,tag=!arenaboss] at @s run function speech/speech_moves
execute as @p[tag=cursed_speech] at @s run function speech/cursed_speech

execute as @a[tag=abilitying,tag=absorption,tag=!arenaboss] at @s run function absorption/absorption_moves
execute as @e[tag=absorption,c=1] run function absorption/absorption


execute as @a[tag=abilitying,tag=idle_transfig,tag=!arenaboss] at @s run function idle_transfig/idle_moves
execute as @e[tag=idle_transfig,c=1] run function idle_transfig/idle_transfiguration


tag @a[scores={wheelactive=0},tag=fire_adapted] remove fire_adapted
tag @a[scores={wheelactive=0},tag=blunt_adapted] remove blunt_adapted
tag @a[scores={wheelactive=0},tag=fire_adaped] remove fire_adaped
tag @a[scores={wheelactive=0},tag=deletion_adapted] remove deletion_adapted
tag @a[scores={wheelactive=0},tag=explosion_adapted] remove explosion_adapted
tag @a[scores={wheelactive=0},tag=poison_adapted] remove poison_adapted
tag @a[scores={wheelactive=0},tag=pull_adapted] remove pull_adapted
tag @a[scores={wheelactive=0},tag=slash_adapted] remove slash_adapted
tag @a[scores={wheelactive=0},tag=water_adapted] remove water_adapted
tag @a[scores={wheelactive=0},tag=electric_adapted] remove electric_adapted
tag @a[scores={wheelactive=0},tag=infinity_adapted] remove infinity_adapted
tag @a[scores={wheelactive=0},tag=unlimitedvoid_adapted] remove unlimitedvoid_adapted
tag @a[scores={wheelactive=0},tag=shadowgarden_adapted] remove shadowgarden_adapted
tag @a[scores={wheelactive=0},tag=stormdomain_adapted] remove stormdomain_adapted
tag @a[scores={wheelactive=0},tag=jogodomain_adapted] remove jogodomain_adapted
tag @a[scores={wheelactive=0},tag=sukunadomain_adapted] remove sukunadomain_adapted
tag @a[scores={wheelactive=0},tag=cleave_adapted] remove cleave_adapted
tag @a[scores={wheelactive=0},tag=soul_adapted] remove soul_adapted
tag @a[scores={wheelactive=0},tag=yujidomain_adapted] remove yujidomain_adapted
tag @a[scores={wheelactive=0},tag=speech_adapted] remove speech_adapted
tag @a[scores={wheelactive=0},tag=speechdomain_adapted] remove speechdomain_adapted
tag @a[scores={wheelactive=0},tag=sight_adapted] remove sight_adapted

scoreboard players set @a[tag=lovetrain,scores={fever=101..},tag=!arenaboss] fever 100
execute as @a[scores={hakarimode=1..},tag=!arenaboss] at @s run function lovetrain/hakarimode
scoreboard players remove @a[scores={hakarimode=1..}] hakarimode 1

execute as @a[scores={amberbeast=1..},tag=!arenaboss] at @s run function kashimo/amberbeast
scoreboard players remove @a[scores={amberbeast=1..}] amberbeast 1

execute as @a[scores={ltncloak=1..},tag=!arenaboss] at @s run function kashimo/lightning_cloak
scoreboard players remove @e[scores={ltncloak=1..}] ltncloak 1

scoreboard players set @e[scores={onfire=1..},tag=unselect] onfire 0
execute as @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={onfire=1..},c=1] at @s run function onfire


execute as @p[tag=itemUse:ds:miracles_technique,tag=!arenaboss] at @s run function small_cts/miracles_technique
execute as @p[tag=miracles] run function small_cts/miracles_ct

execute as @p[tag=itemUse:ds:windup_technique,tag=!arenaboss] at @s run function small_cts/windup_technique
execute as @a[tag=itemUse:ds:windup1,scores={ability1=0,Energy=50..,Stun=0,Disabled=0,move=0},tag=windup,tag=!arenaboss] at @s run function small_cts/windup_technique2
execute as @a[c=2,tag=windup,scores={windup=1..,atk=1},tag=windup,tag=!arenaboss] at @s anchored eyes positioned ^^-0.5^2.5 run function small_cts/windup_hit

execute as @p[tag=itemUse:ds:sight_technique,tag=!arenaboss] at @s run function small_cts/sight_technique
execute as @a[tag=sight,scores={Sneaking=1..,move=0,detect_jump=0,Stun=0},tag=!arenaboss] at @s anchored eyes positioned ^^^6.05 run function small_cts/sight

execute as @p[tag=itemUse:ds:painkiller_technique,tag=!arenaboss] at @s run function small_cts/painkiller_technique
execute as @p[tag=painkiller,tag=!arenaboss] at @s anchored eyes positioned ^^^6 run function small_cts/painkiller

execute as @a[c=2,tag=itemUse:ds:sukuna_technique,tag=!arenaboss] at @s run function sukuna/sukuna_use
execute as @e[c=1,tag=has_sukuna,tag=!arenaboss] run function sukuna/sukuna_cmds
execute as @e[tag=wcs_death_cutscene,scores={sukunacutscene=1..}] at @s run function sukuna/wcs_death_cutscene

execute as @a[tag=itemUse:ds:10shadows_technique,c=1,tag=!arenaboss] at @s run function shikigami/shikigami_technique
execute as @a[tag=itemUse:ds:lovetrain_technique,c=1,tag=!arenaboss] at @s run function lovetrain/lovetrain_technique
execute as @a[tag=itemUse:ds:lightning_technique,c=1,tag=!arenaboss] at @s run function kashimo/lightning_technique
execute as @a[tag=itemUse:ds:explosive_technique,c=1,tag=!arenaboss] at @s run function explosive/explosive_technique
execute as @a[tag=itemUse:ds:heavenly_restriction,c=1,tag=!arenaboss] at @s run function hr/heavenly_restriction
execute as @a[tag=itemUse:ds:limitless_technique,c=1,tag=!arenaboss] at @s run function limitless/limitless_technique
execute as @a[tag=itemUse:ds:judgeman_technique,c=1,tag=!arenaboss] at @s run function judgeman/judgeman_technique
execute as @a[tag=itemUse:ds:boogie_woogie_technique,c=1,tag=!arenaboss] at @s run function boogie_woogie/boogie_woogie_technique
execute as @a[tag=itemUse:ds:flames_technique,c=1,tag=!arenaboss] at @s run function flames/flames_technique
execute as @a[tag=itemUse:ds:speech_technique,c=1,tag=!arenaboss] at @s run function speech/speech_technique
execute as @a[tag=itemUse:ds:absorption_technique,c=1,tag=!arenaboss] at @s run function absorption/absorption_technique
execute as @a[tag=itemUse:ds:idle_transfiguration_technique,c=1,tag=!arenaboss] at @s run function idle_transfig/idle_technique

clear @a[scores={deathpenaltytimer=1..2},hasitem={item=ds:executioners_sword}] ds:gavel1
clear @a[scores={deathpenaltytimer=1..2},hasitem={item=ds:executioners_sword}] ds:gavel2
clear @a[scores={deathpenaltytimer=1..2},hasitem={item=ds:executioners_sword}] ds:gavel3
give @a[scores={deathpenaltytimer=1..2},hasitem={item=ds:executioners_sword}] ds:gavel1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
clear @a[scores={deathpenaltytimer=1..2},hasitem={item=ds:executioners_sword}] ds:executioners_sword

clear @a[scores={amberbeast=0},hasitem={item=ds:amberbeast2}] ds:amberbeast2
clear @a[scores={amberbeast=0},hasitem={item=ds:amberbeast2a}] ds:amberbeast2a
clear @a[scores={amberbeast=0},hasitem={item=ds:amberbeastfull}] ds:amberbeastfull
clear @a[scores={amberbeast=0},hasitem={item=ds:amberbeastfulla}] ds:amberbeastfulla
clear @a[tag=!lightning,hasitem={item=ds:amberbeast2}] ds:amberbeast2
clear @a[tag=!lightning,hasitem={item=ds:amberbeast2a}] ds:amberbeast2a
clear @a[tag=!lightning,hasitem={item=ds:amberbeastfull}] ds:amberbeastfull
clear @a[tag=!lightning,hasitem={item=ds:amberbeastfulla}] ds:amberbeastfulla


playanimation @a[scores={respawn=1..}] animation.stunned 
scoreboard players set @a[scores={respawn=1..,hakarimode=4..}] hakrimode 3

execute as @p[tag=itemUse:ds:promotion] at @s run function promotion

execute as @a[c=2,scores={scene=1..}] at @s run function cutscene

effect @e[tag=flames,scores={move=0..5}] fire_resistance infinite 1 true



execute as @a[hasitem={item=ds:phone,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function missions/phone

execute as @p[c=1,tag=itemUse:ds:cough_syrup,tag=!arenaboss] at @s run function cough_syrup
execute as @p[c=1,tag=itemUse:ds:strange_vile,tag=!arenaboss] at @s run function strange_vial

execute as @p[c=1,tag=itemUse:minecraft:bucket] at @s positioned ^^^2 if entity @e[family=flyhead,r=1.99] run function flyhead_bucket
execute as @p[c=1,tag=itemUse:ds:flyhead_bucket] at @s positioned ^^^1 run function flyhead_bucket2

execute as @p[c=1,tag=itemUse:ds:blitz_crystal,tag=!arenaboss] at @s run function relics/blitz_crystal
execute as @p[c=1,tag=itemUse:ds:undying_crystal,tag=!arenaboss] at @s run function relics/undying_crystal
execute as @p[c=1,tag=itemUse:ds:rough_crystal,tag=!arenaboss] at @s run function relics/rough_crystal
execute as @p[c=1,tag=itemUse:ds:cursed_crystal,tag=!arenaboss] at @s run function relics/cursed_crystal
execute as @p[c=1,tag=itemUse:ds:cursed_eye,tag=!arenaboss] at @s run function relics/cursed_eye
execute as @p[c=1,tag=itemUse:ds:dread_bell,tag=!arenaboss] at @s run function relics/dread_bell
execute as @p[c=1,tag=itemUse:ds:sukuna_finger,scores={cutscene=0,move=0,Stun=0,Move=0,Camera=0},tag=!arenaboss] at @s run function relics/sukuna_finger

execute as @a[hasitem={item=ds:sukuna_finger},tag=!arenaboss] at @s run damage @e[family=purecurse,rm=60,r=61] 0 none entity @s

execute as @p[c=1,tag=itemUse:ds:cursed_object_v1,tag=!arenaboss] at @s run function relics/cursed_object
execute as @p[c=1,tag=itemUse:ds:cursed_object_v2,tag=!arenaboss] at @s run function relics/cursed_object
execute as @p[c=1,tag=itemUse:ds:cursed_object_v3,tag=!arenaboss] at @s run function relics/cursed_object
execute as @p[c=1,tag=itemUse:ds:cursed_object_v4,tag=!arenaboss] at @s run function relics/cursed_object

execute as @a[tag=delusional_trait,c=1] at @s run function delusional/delusional_cmds
clear @p[hasitem={item=ds:delusional2},tag=!delusional] ds:delusional2
execute as @e[tag=delusional_cutscene,scores={move=1..},c=2] at @s run function delusional/delusional_cutscene

execute as @e[scores={sukunacutscene=1..},tag=!arenaboss] at @s run function sukuna/cutscenes

execute as @a[tag=!uplook,hasitem={item=ds:dash,location=slot.weapon.mainhand},scores={Sneaking=4..},tag=!abilitying,m=!spectator] at @s if block ~~-0.1~ air run function fall_down
execute as @a[scores={falling=1..}] at @s unless block ~~-0.1~ air run scoreboard players set @s falling 0


execute as @a[tag=itemUse:ds:core_of_creation,scores={amt=0..}] at @s run function bosses/file/core_of_creation
execute as @p[tag=itemUse:ds:reset_ticket] at @s run function cheats/wipe_character
execute as @a[hasitem={item=ds:butter_blade,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/butter_blade
execute as @a[hasitem={item=ds:frog_cero,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/frog_cero
execute as @a[hasitem={item=ds:legacy_scythe,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/legacy_scythe
tag @a[tag=lscythe] remove lscythe
execute as @a[hasitem={item=ds:crescendo,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/crescendo
tag @a[tag=crescendo] remove crescendo

execute as @a[hasitem={item=ds:birch_tree,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/birch_tree
tag @a[hasitem={item=ds:birch_tree,location=slot.weapon.mainhand,quantity=0},tag=birch_tree] remove birch_tree

execute as @a[hasitem={item=ds:deathhorn,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/deathhorn

execute as @p[tag=itemUse:ds:rodofdiscord,scores={wep1=0},tag=!arenaboss] at @s run function bosses/file/weps/rodofdiscord

execute as @a[hasitem={item=ds:the_shard,location=slot.weapon.mainhand}] at @s run function bosses/file/weps/the_shard

execute as @a[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/katana/katana_m1s
execute as @s[tag=voidkatana,tag=abilitying,tag=!arenaboss] at @s run function fighting/katana/voidkatana_attacks

execute as @a[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function fighting/yuji/yuji_m1s


execute as @a[hasitem={item=ds:explode_staff,location=slot.hotbar},tag=!arenaboss] at @s run function bosses/file/weps/explode_staff

execute as @a[hasitem={item=ds:devastator,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/devastator

execute as @a[hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/atomic_m1s
execute as @a[tag=atomicsword,tag=abilitying,tag=!arenaboss] at @s run function bosses/file/weps/atomic_attacks

execute as @a[hasitem={item=ds:equinox_scythe,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/equinox_scythe
execute as @a[hasitem={item=ds:equinox_blade,location=slot.weapon.mainhand},tag=!arenaboss] at @s run function bosses/file/weps/equinox_blade

execute as @p[c=1,tag=itemUse:ds:dackmug,tag=!arenaboss,scores={move=0,cutscene=0,Stun=0}] at @s run function dackmug







# special missions
scoreboard players remove @a[scores={guitimer=1..}] guitimer 1
execute as @p[scores={guitimer=1}] at @s run scriptevent ds:special_missions