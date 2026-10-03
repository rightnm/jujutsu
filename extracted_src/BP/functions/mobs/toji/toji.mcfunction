tag @s[tag=!hasTRG] add hasTRG

#bucket of flyhead
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10,ability1=1..9},hasitem={item=bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run scoreboard players set @s ability1 0
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10,ability1=10..},hasitem={item=bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run scoreboard players remove @s ability1 10
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},hasitem={item=bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] at @s run playsound armor.equip.iron @a ~~~ 1 1.25
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},hasitem={item=bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run effect @e[family=flyhead,r=2,c=1] invisibility 1 10 true
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},hasitem={item=bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run scoreboard players set @e[family=flyhead,r=2,c=1] Deleter 3

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},hasitem={item=bucket,location=slot.weapon.mainhand,quantity=0}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run scoreboard players set @s Disabled 20
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=20},hasitem={item=bucket,location=slot.weapon.mainhand,quantity=0}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run replaceitem entity @s slot.weapon.mainhand 1 bucket

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},hasitem={item=bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] at @s run replaceitem entity @s slot.weapon.mainhand 1 ds:flyhead_bucket
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},hasitem={item=ds:flyhead_bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] at @s run scoreboard players set @s Disabled 20
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=20},hasitem={item=ds:flyhead_bucket,location=slot.weapon.mainhand}] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=80,c=1] positioned ^^^2 if entity @e[family=flyhead,r=2,c=1] run tp @e[family=flyhead,r=2,c=1] ~~-200~





#invisible when there are two or more flyheads around
execute as @s[scores={atk=0,Hit=0,Stun=0..20,cutscene=0,knockdown=0,Flourish=0},tag=!invisible] at @s if entity @e[family=flyhead,r=7.5,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,r=7.5,c=1] unless entity @s[hasitem={item=bucket,location=slot.weapon.mainhand}] unless entity @s[hasitem={item=ds:flyhead_bucket,location=slot.weapon.mainhand}] at @e[family=flyhead,r=7.5,c=1] at @e[family=flyhead,rm=0.15,r=7.5,c=1] if entity @s[r=7.5] run tag @s add invisible



execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0}] at @s if block ~~~ water at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=41,c=1] run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0}] at @s if block ~~~ water unless entity @e[tag=!Frames,tag=target,tag=!unselect,family=!small,tag=!dying,rm=41,r=80,c=1] at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=80,c=1] run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0}] at @s if block ~~~ lava at @e[tag=target,tag=!unselect,tag=!dying,r=41,c=1] run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0}] at @s if block ~~~ lava unless entity @e[tag=target,tag=!unselect,tag=!dying,r=41,c=1] unless entity @e[tag=!Frames,tag=target,tag=!unselect,family=!small,tag=!dying,r=80,c=1] at @e[tag=target,tag=!unselect,tag=!dying,r=80,c=1] run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0}] at @s if block ~~~ lava unless entity @e[tag=target,tag=!unselect,tag=!dying,r=80,c=1] at @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,type=!bat,family=!flyhead,tag=!dying,rm=0.15,r=80,c=1] run function mobs/toji/flashstep2



#this is to make toji use different flashsteps for target in different conditions to achieve confusion effect and pressure (although only to detect whether Disabled=1.. lol)
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1,scores={Disabled=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Stun=21..}] unless entity @a[tag=target,tag=!unselect,tag=!dying,r=0.15,c=1,scores={Stun=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={knockdown=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Flourish=1..}] at @s run function mobs/toji/flashstep
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1,scores={Disabled=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Stun=21..}] unless entity @a[tag=target,tag=!unselect,tag=!dying,r=0.15,c=1,scores={Stun=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={knockdown=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Flourish=1..}] at @s run function mobs/toji/flashstep

execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Disabled=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Disabled=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Disabled=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Stun=21..}] unless entity @a[tag=target,tag=!unselect,tag=!dying,r=0.15,c=1,scores={Stun=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={knockdown=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Flourish=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] if blocks ~~-1~~~-3~ ~ 313 ~ all at @s run function mobs/toji/flashstep
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Disabled=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Stun=21..}] unless entity @a[tag=target,tag=!unselect,tag=!dying,r=0.15,c=1,scores={Stun=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={knockdown=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Flourish=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] if blocks ~~-1~~~-3~ ~ 313 ~ all at @s run function mobs/toji/flashstep

execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Disabled=1..}] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,Disabled=6..},tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Disabled=1..}] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2





execute unless entity @s[scores={combat=1..}] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=20,c=1] run scoreboard players set @s combat 800

execute as @s[scores={weapontype=!1,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},tag=!switching] at @s if entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] run tag @s add switching
execute as @s[scores={weapontype=!1,EnergyCap=1..,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10}] at @s if entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] run scoreboard players set @s EnergyCap 0
execute as @s[scores={weapontype=!2,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},tag=!switching] at @s unless entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] if entity @e[scores={hakarimode=1..},tag=target,tag=!unselect,r=40,c=1] run tag @s add switching
execute as @s[scores={weapontype=!2,EnergyCap=1..,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10}] at @s unless entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] if entity @e[scores={hakarimode=1..},tag=target,tag=!unselect,r=40,c=1] run scoreboard players set @s EnergyCap 0
execute as @s[scores={weapontype=!1,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},tag=!switching] at @s unless entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] unless entity @e[scores={hakarimode=1..},tag=target,tag=!unselect,r=40,c=1] if entity @e[scores={ltncloak=1..},tag=target,tag=!unselect,r=40,c=1] run tag @s add switching
execute as @s[scores={weapontype=!1,EnergyCap=1..,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10}] at @s unless entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] unless entity @e[scores={hakarimode=1..},tag=target,tag=!unselect,r=40,c=1] if entity @e[scores={ltncloak=1..},tag=target,tag=!unselect,r=40,c=1] run scoreboard players set @s EnergyCap 0

#this is to make toji avoid target when switching weapons, in order to reduce incongruity of being unable to be attacked during cutscene
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,EnergyCap=0,Disabled=0..10},tag=!worldrange] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1] run function mobs/toji/flashstep2
execute as @s[scores={combat=1..,Hit=0,flashstep=0..1,Stun=0,Move=0,move=0,cutscene=0,EnergyCap=0,Disabled=0..10},tag=worldrange] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1] run function mobs/toji/flashstep2

execute as @s[scores={EnergyCap=0,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},tag=!switching] at @s unless entity @e[tag=limitless,scores={infinity=1..},tag=Frames,tag=target,tag=!unselect,r=40,c=1] unless entity @e[scores={hakarimode=1..},tag=target,tag=!unselect,r=40,c=1] unless entity @e[scores={ltncloak=1..},tag=target,tag=!unselect,r=40,c=1] run tag @s add switching
scoreboard players set @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0..10},tag=switching] cutscene 41



execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..}] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1] run scoreboard players random @s chance 3 12
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..}] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1] if entity @e[tag=Frames,tag=limitless,scores={infinity=1..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,tag=!hidden_inventory_cutscene,r=7.5,c=1] run scoreboard players random @s chance 3 12

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..}] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] run scoreboard players random @s chance 15 19
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..}] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] if entity @e[tag=Frames,tag=limitless,scores={infinity=1..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,tag=!hidden_inventory_cutscene,r=41,c=1] run scoreboard players random @s chance 15 19

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,combat=1..}] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=41,r=80,c=1] run scoreboard players random @s chance 18 20
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,combat=1..}] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=41,r=80,c=1] if entity @e[tag=Frames,tag=limitless,scores={infinity=1..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,tag=!hidden_inventory_cutscene,rm=41,r=80,c=1] run scoreboard players random @s chance 18 20


#when toji has free time to use glock, add gunshot_mob tag to detect target who cannot perform parry (for the following a little further down cmds)
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=15..20,combat=1..},tag=!gunshot_mob] at @s if entity @a[scores={Stun=5..},tag=target,tag=!unselect,tag=!dying,rm=7.5,r=60,c=1] run tag @s add gunshot_mob
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=15..20,combat=1..},tag=!gunshot_mob] at @s if entity @e[scores={Stun=21..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run tag @s add gunshot_mob
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=15..20,combat=1..},tag=!gunshot_mob] at @s if entity @e[scores={Stun=1..},tag=punch0,tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run tag @s add gunshot_mob
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=15..20,combat=1..},tag=!gunshot_mob] at @s if entity @e[scores={knockdown=1..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run tag @s add gunshot_mob
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=15..20,combat=1..},tag=!gunshot_mob] at @s if entity @e[scores={Flourish=1..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run tag @s add gunshot_mob
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=15..20,combat=1..},tag=!gunshot_mob] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] unless entity @e[scores={strength=35..,punch=1..},tag=!punch0,tag=target,tag=!unselect,family=!flyhead,tag=!dying,type=!player,r=0.15,c=1] run tag @s add gunshot_mob

#when toji has gunshot_mob tag and is in some specific situations, and other abilities fail to achieve effect of approaching or attack to the target, then use glock to directly attack or feint attack (such as when the target is too far from the ground)
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=15,weapontype=2},tag=gunshot_mob] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] if blocks ~~-1~~~-3~ ~ 313 ~ all run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=16},tag=gunshot_mob] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] if blocks ~~-1~~~-3~ ~ 313 ~ all run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=17},tag=!worldrange,tag=gunshot_mob] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] if blocks ~~-1~~~-3~ ~ 313 ~ all run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=17},tag=worldrange,tag=gunshot_mob] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] if blocks ~~-1~~~-3~ ~ 313 ~ all run scoreboard players set @s chance 21

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=15,weapontype=2},tag=gunshot_mob,rx=-31,rxm=-90] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=15,weapontype=2},tag=gunshot_mob,rxm=31,rx=90] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=16},tag=gunshot_mob,rx=-31,rxm=-90] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=16},tag=gunshot_mob,rxm=31,rx=90] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=17},tag=!worldrange,tag=gunshot_mob,rx=-31,rxm=-90] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=17},tag=worldrange,tag=gunshot_mob,rx=-31,rxm=-90] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=17},tag=!worldrange,tag=gunshot_mob,rxm=31,rx=90] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,chance=17},tag=worldrange,tag=gunshot_mob,rxm=31,rx=90] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=60,c=1] run scoreboard players set @s chance 21

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..1,move=0,Disabled=0,combat=1..,endurance=720..770},tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=10,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Stun=21..}] unless entity @a[tag=target,tag=!unselect,tag=!dying,r=0.15,c=1,scores={Stun=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={knockdown=1..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,scores={Flourish=1..}] run function mobs/toji/flashstep2
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=!16,combat=1..,endurance=720..770},rxm=-30,rx=30,tag=!inDomain] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=41,c=1] run scoreboard players set @s chance 16

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,combat=1..,weapontype=1},tag=phase2,tag=invisible2] at @s unless entity @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=4.45,c=1] at @e[tag=target,tag=!unselect,family=!small,tag=!dying,rm=4.45,r=41,c=1] at @e[r=7.5,family=flyhead,c=1] at @e[rm=0.15,r=7.5,family=flyhead,c=1] at @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=10,c=1] rotated ~ 0 run function mobs/toji/flashstep3
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=!7,combat=1..,weapontype=1},tag=phase2,tag=invisible2] at @s positioned ^^^2.25 if entity @e[scores={Stun=1..,Camera=1..},tag=target,tag=!unselect,family=!small,tag=!dying,r=2.2,c=1] run scoreboard players set @s chance 7

execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,chance=!7,combat=1..,weapontype=1}] at @s positioned ^^^2.25 if entity @e[tag=!Frames,family=gojo,scores={detect_health=0..60},r=2.2,tag=target,tag=!unselect,family=!small,tag=!dying] run scoreboard players set @s chance 7


#phase2
execute as @s[type=ds:toji_boss,scores={detect_health=0..250,Hit=0,cutscene=0,Stun=0,flashstep=0..1,move=0},tag=!phase2,tag=!inDomain,tag=!simpledomain_protecting,c=16] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=12,c=1] run function mobs/toji/flashstep2
execute as @s[type=ds:toji_boss,scores={detect_health=0..250,chance=!14,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,ability1=0,Disabled=1..},tag=!phase2,tag=!inDomain,tag=!simpledomain_protecting,c=16] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=12,r=41,c=1] run scoreboard players set @s chance 14
execute as @s[type=ds:toji_boss,scores={detect_health=0..250,chance=14,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,ability1=0,Disabled=1..},tag=!phase2,tag=!inDomain,tag=!simpledomain_protecting,c=16] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=12,r=41,c=1] run tag @s add phase2


#this is to make toji not use swift kick for target with Frames tag, instead use flashstep
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,combat=1..,chance=20}] at @s unless entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=80,c=1] at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] run function mobs/toji/flashstep2


#summon flyheads
execute as @s[tag=!flyheadsCD,scores={Hit=0,cutscene=0,Stun=0,flashstep=0..,move=0,ability1=0..400,Disabled=6..,chance=!14,combat=1..},tag=phase2,tag=!inDomain,tag=!simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] run scoreboard players add @s ability1 11
execute as @s[tag=!flyheadsCD,scores={Hit=0,cutscene=0,Stun=0,flashstep=0..,move=0,ability1=1..400,Disabled=6..,chance=!14,combat=1..},tag=phase2,tag=!inDomain,tag=!simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=41,c=1] run scoreboard players set @s chance 14


execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,hitCD=0,Disabled=6..,chance=0,combat=1..}] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=2.25,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,hitCD=0,Disabled=6..,chance=1..2,combat=1..},tag=!hit] at @s if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=2.25,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
execute as @s[tag=hit,scores={chance=1..2}] at @s run function m1


#---------------
scoreboard players set @s[scores={chance=3,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1},tag=!simpledomain_protecting] move 16
execute as @s[scores={chance=3,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=11,c=1] positioned ^^^6.5 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 16
execute as @s[scores={chance=3,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=11,c=1] positioned ^^^6.5 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 16

execute as @s[scores={chance=4,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1}] at @s positioned ^^^2.25 if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=2.2,c=1] run scoreboard players set @s move 26

execute as @s[scores={chance=5,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1},tag=!simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=6,c=1] run scoreboard players set @s move 41
execute as @s[scores={chance=5,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=6,c=1] positioned ^^^3.5 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 41
execute as @s[scores={chance=5,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting] at @s if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=6,c=1] positioned ^^^3.5 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 41

scoreboard players set @s[scores={chance=6,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=!simpledomain_protecting,rxm=-30,rx=30] move 36
execute as @s[scores={chance=6,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting,rxm=-30,rx=30] at @s positioned ^^^21 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=6,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting,rxm=-30,rx=30] at @s positioned ^^^21 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=6,Stun=0,move=25..26,weapontype=1}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=48,c=1]

execute as @s[scores={chance=7,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=phase2,tag=invisible2] at @s positioned ^^^2.25 at @e[tag=target,tag=!unselect,family=!small,r=2.2,c=1] at @e[family=flyhead,r=7.5,c=1] at @e[family=flyhead,rm=0.15,r=7.5,c=1] at @e[tag=target,tag=!unselect,family=!small,tag=!dying,r=10,c=1] run scoreboard players set @s move 21
execute as @s[scores={chance=7,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1,endurance=680..}] at @s positioned ^^^2.25 if entity @e[r=2.2,tag=!Frames,tag=target,tag=!unselect,family=!small] run scoreboard players set @s move 21


execute as @s[scores={chance=3,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=2}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=3.45,tag=target,tag=!unselect,family=!flyhead,tag=!dying] run scoreboard players set @s move 26

execute as @s[scores={chance=4,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=2}] at @s positioned ^^^3.5 if entity @e[tag=!Frames,r=3.45,tag=target,tag=!unselect,family=!flyhead,tag=!dying] run scoreboard players set @s move 26

execute as @s[scores={chance=5,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2},tag=!simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[r=7.5,scores={Stun=21..},tag=target,tag=!unselect,family=!flyhead,tag=!dying] unless entity @e[r=7.5,scores={Stun=1..,Hit=0},tag=target,tag=!unselect,family=!flyhead,tag=!dying] unless entity @a[r=7.5,scores={Stun=1..},tag=target,tag=!unselect,tag=!dying] run scoreboard players set @s move 36
execute as @s[scores={chance=5,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2},tag=simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[r=7.5,scores={Stun=21..},tag=target,tag=!unselect,family=!flyhead,tag=!dying] unless entity @e[r=7.5,scores={Stun=1..,Hit=0},tag=target,tag=!unselect,family=!flyhead,tag=!dying] unless entity @a[r=7.5,scores={Stun=1..},tag=target,tag=!unselect,tag=!dying] positioned ^^^21 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=5,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2},tag=simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[r=7.5,scores={Stun=21..},tag=target,tag=!unselect,family=!flyhead,tag=!dying] unless entity @e[r=7.5,scores={Stun=1..,Hit=0},tag=target,tag=!unselect,family=!flyhead,tag=!dying] unless entity @a[r=7.5,scores={Stun=1..},tag=target,tag=!unselect,tag=!dying] positioned ^^^21 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=5,Stun=0,move=25..26,weapontype=2}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=48,c=1]

execute as @s[scores={chance=6,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2,endurance=360..1937},tag=!simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,strength=20..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,damageadd=4..}] run scoreboard players set @s move 63
execute as @s[scores={chance=6,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2,endurance=360..1937},tag=simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,strength=20..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,damageadd=4..}] positioned ^^^24 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 63
execute as @s[scores={chance=6,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2,endurance=360..1937},tag=simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,strength=20..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,damageadd=4..}] positioned ^^^24 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 63
execute as @s[scores={chance=6,Stun=0,move=42..43,weapontype=2}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=48,c=1]

execute as @s[scores={chance=7,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,weapontype=2,endurance=680..1940}] at @s if entity @e[tag=!Frames,r=8,tag=target,tag=!unselect,family=!flyhead,tag=!dying] run scoreboard players set @s move 60



execute as @s[scores={chance=8,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=!simpledomain_protecting] at @s positioned ^^^7 if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=3.5,c=1] run scoreboard players set @s move 23
execute as @s[scores={chance=8,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=simpledomain_protecting] at @s positioned ^^^7 if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=3.5,c=1] if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 23
execute as @s[scores={chance=8,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=simpledomain_protecting] at @s positioned ^^^7 if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=3.5,c=1] unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 23

execute as @s[scores={chance=9,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0}] at @s unless block ~~-0.2~ air if entity @e[tag=!Frames,tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=4,c=1] run scoreboard players set @s move 17

scoreboard players set @s[scores={chance=10,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0,endurance=360..1898},tag=!simpledomain_protecting] move 31

execute as @s[scores={chance=11,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0}] at @s unless entity @e[scores={Stun=21..},tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=10,c=1] unless entity @e[scores={Stun=1..,Hit=0},tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=10,c=1] unless entity @a[scores={Stun=1..},tag=target,tag=!unselect,tag=!dying,r=10,c=1] run scoreboard players set @s move 66



execute as @s[scores={chance=14,detect_health=0..250,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,ability1=0,Disabled=1..},tag=phase2,tag=!inDomain,tag=!simpledomain_protecting] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=12,c=1] run scoreboard players set @s move 61



execute as @s[scores={chance=15,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2,endurance=360..1937},tag=!simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,strength=20..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,damageadd=4..}] run scoreboard players set @s move 63
execute as @s[scores={chance=15,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2,endurance=360..1937},tag=simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,strength=20..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,damageadd=4..}] positioned ^^^24 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 63
execute as @s[scores={chance=15,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2,endurance=360..1937},tag=simpledomain_protecting,rxm=-30,rx=30] at @s unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,strength=20..}] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=7.5,c=1,scores={Stun=0,damageadd=4..}] positioned ^^^24 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 63
execute as @s[scores={chance=15,Stun=0,move=42..43,weapontype=2}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=48,c=1]

scoreboard players set @s[scores={chance=16,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=!simpledomain_protecting,rxm=-30,rx=30] move 36
execute as @s[scores={chance=16,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting,rxm=-30,rx=30] at @s positioned ^^^21 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=16,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=1},tag=simpledomain_protecting,rxm=-30,rx=30] at @s positioned ^^^21 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=16,Stun=0,move=25..26,weapontype=1}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=48,c=1]

scoreboard players set @s[scores={chance=16,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2},tag=!simpledomain_protecting,rxm=-30,rx=30] move 36
execute as @s[scores={chance=16,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2},tag=simpledomain_protecting,rxm=-30,rx=30] at @s positioned ^^^21 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=16,Hit=0,cutscene=0,Stun=0,flashstep=0..2,move=0,Disabled=0,weapontype=2},tag=simpledomain_protecting,rxm=-30,rx=30] at @s positioned ^^^21 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 36
execute as @s[scores={chance=16,Stun=0,move=25..26,weapontype=2}] at @s run tp @s ~~~ facing @e[tag=target,tag=!unselect,r=48,c=1]

scoreboard players set @s[scores={chance=17,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=!simpledomain_protecting] move 37

scoreboard players set @s[scores={chance=20,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=!simpledomain_protecting] move 40
execute as @s[scores={chance=20,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=simpledomain_protecting] at @s positioned ^^^40 at @e[tag=!Frames,r=39.95,c=1,tag=target,tag=!unselect,family=!small,family=!flyhead,tag=!dying] positioned ^^^-1 if entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] run scoreboard players set @s move 40
execute as @s[scores={chance=20,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=simpledomain_protecting] at @s positioned ^^^40 at @e[tag=!Frames,r=39.95,c=1,tag=target,tag=!unselect,family=!small,family=!flyhead,tag=!dying] positioned ^^^-1 unless entity @e[type=ds:simple_domain,r=10,tag=!shadow_style] if entity @e[type=ds:simple_domain,r=20,tag=shadow_style] run scoreboard players set @s move 40



#-----moves-----

execute as @e[scores={chance=14,move=0..},family=toji,tag=toji_function,c=16] at @s run function mobs/toji/flyheads



execute as @s[scores={chance=15,weapontype=1,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=!in_loading] at @s if entity @e[r=60,c=1,tag=target,tag=!unselect,family=!flyhead,tag=!dying] run function gunshot_mob



execute as @s[scores={chance=18..19,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=!in_loading] at @s if entity @e[r=60,c=1,tag=target,tag=!unselect,family=!flyhead,tag=!dying] run function gunshot_mob



execute as @s[scores={chance=21,Hit=0,cutscene=0,Stun=0,flashstep=0,move=0,Disabled=0},tag=!in_loading] at @s if entity @e[r=60,c=1,tag=target,tag=!unselect,family=!flyhead,tag=!dying] run function gunshot_mob





#this is to make that toji won't use glock when glock is on cooldown, instead use flashstep
execute as @s[scores={chance=15,weapontype=1,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,y=-64,dy=-61,r=0.15,c=1] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={chance=15,weapontype=1,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2
execute as @s[scores={chance=15,weapontype=1,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={chance=15,weapontype=1,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2

execute as @s[scores={chance=18..19,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={chance=18..19,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2
execute as @s[scores={chance=18..19,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={chance=18..19,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2

execute as @s[scores={chance=21,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={chance=21,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=!worldrange,tag=!inDomain] at @s unless blocks ~~-1~~~-3~ ~ 313 ~ all at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2
execute as @s[scores={chance=21,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] unless entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] unless blocks ~~-1~~~-3~ ~ 313 ~ all run function mobs/toji/flashstep2
execute as @s[scores={chance=21,Hit=0,cutscene=0,Stun=0,Move=0,flashstep=0,move=0,Disabled=0},tag=in_loading,tag=worldrange,tag=!inDomain] at @s at @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,rm=7.5,r=80,c=1] if entity @e[tag=target,tag=!unselect,family=!flyhead,tag=!dying,r=0.15,c=1,y=-64,dy=-61] run function mobs/toji/flashstep2




