execute as @s[tag=sight,r=7,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] at @s anchored eyes run particle ds:sight_eyes ^0.1^-0.8^0.44
execute as @s[tag=sight,r=7,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] at @s anchored eyes run particle ds:sight_eyes ^-0.1^-0.8^0.44

execute as @s[tag=sight,r=50,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] run effect @e[tag=!Frames,r=5.99,tag=!domainamplification,tag=!sight_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 1 20 true
execute as @s[tag=sight,r=50,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] run scoreboard players set @e[tag=!Frames,r=5.99,tag=!domainamplification,tag=!sight_adapted,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 5
particle ds:sight
execute as @s[tag=sight,r=50,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] positioned ^^^6 run function small_cts/sight
execute as @s[tag=sight,r=7,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] at @s anchored eyes positioned ^^^15.05 run function damages/sight_damage
execute as @s[tag=sight,r=7,scores={Sneaking=5..,move=0,detect_jump=0,Stun=0}] at @s anchored eyes positioned ^^^35 run function damages/sight_damage

effect @s[r=7] slowness 1 2 true
effect @s[r=7] weakness 1 10 true
scoreboard players add @s[r=7] sight 2
scoreboard players add @s[r=7,scores={sight=500..}] sight 1
damage @s[r=7,scores={sight=600..799}] 1
damage @s[r=7,scores={sight=800..999}] 3
damage @s[r=7,scores={sight=1000..}] 1 override
execute as @s[r=7,scores={sight=1200..}] at @s run playsound mob.wither.hurt @s ~~~ 1 0.7
effect @s[r=7,scores={sight=1200..}] blindness 10 10 true
scoreboard players set @s[r=7,scores={sight=1200..}] Hit 170
scoreboard players set @s[r=7,scores={sight=1200..}] Stun 200
scoreboard players set @s[r=7,scores={sight=1200..}] Disabled 200


#add timer + damage + backlash
#and add a cooldown aswell as sfx
#add drops for mobs too like armour n stuff for jogo higuruma, ect