scoreboard players operation @s[scores={move=50..},tag=cursed_speech] speech_limit = @s EnergyCap
scoreboard players operation @s[scores={move=50..},tag=cursed_speech] speech_limit += @s endurance
scoreboard players operation @s[scores={move=50..},tag=cursed_speech] speech_limit /= ten endurance
playanimation @s[scores={move=50..51},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] animation.cursed_speech.blast_away
playanimation @s[scores={move=50..51},hasitem={item=ds:megaphone,location=slot.hotbar}] animation.cursed_speech.blast_away_mg
event entity @s[scores={move=3..},has_property={property:heart=!5},hasitem={item=ds:megaphone,location=slot.hotbar}] megaphone_on


scoreboard players add @s[scores={move=37}] speech 10
execute as @s[scores={move=36}] run function speech/speech_limit



execute as @s[scores={move=25..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=25..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=25..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=25..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~



playanimation @s[scores={move=25..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=25..,Stun=1..}] move 2

scoreboard players set @s[scores={move=12..}] Move 5

execute as @s[scores={move=35}] at @s anchored eyes run particle ds:blast ^1.5^^
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:away2 ^-1.5^^

execute as @s[scores={move=30}] at @s positioned ^^1^1 if entity @e[family=mahoraga,r=15,c=1] run function damages/speech_damage
execute as @s[scores={move=30}] at @s positioned ^^1^1 unless entity @e[family=mahoraga,r=15,c=1] if entity @e[scores={wheelactive=1..},r=15,c=1] run function damages/speech_damage

scoreboard players set @s[scores={move=12..35}] Camera 6
execute as @s[scores={move=35}] at @s positioned ^^1^1 run camerashake add @a[r=25] 0.25 0.45
execute as @s[scores={move=35}] at @s positioned ^^1^1 run playsound mob.speech_blastaway @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=25}] at @s positioned ^^1^1 run playsound mob.cursed_tune @a[r=100] ~~~ 99999 1 99999

execute as @s[scores={move=25}] at @s positioned ^^1^1 run camerashake add @a[r=25] 1 0.26 rotational

tag @s[scores={move=25},tag=!cursed_speaking] add cursed_speaking
scoreboard players operation @s[scores={move=25}] speech_strength = @s Energy
scoreboard players operation @s[scores={move=25}] speech_strength /= five endurance
execute as @s[scores={move=25},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^7.05 run function speech/blast_away
execute as @s[scores={move=25},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^14.05 run function speech/blast_away
execute as @s[scores={move=25},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^21.05 run function speech/blast_away
execute as @s[scores={move=3..25},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^7.05 run execute as @e[scores={Stun=3..},tag=!Frames,tag=!speech_adapted,r=6.99,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:not_moving
execute as @s[scores={move=3..25},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^14.05 run execute as @e[scores={Stun=3..},tag=!Frames,tag=!speech_adapted,r=6.99,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:not_moving
execute as @s[scores={move=3..25},hasitem={item=ds:megaphone,location=slot.hotbar,quantity=0}] at @s positioned ^^1^21.05 run execute as @e[scores={Stun=3..},tag=!Frames,tag=!speech_adapted,r=6.99,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:not_moving

execute as @s[scores={move=25},hasitem={item=ds:megaphone,location=slot.hotbar}] at @s positioned ^^1^25 run function speech/blast_away_mg
execute as @s[scores={move=3..25},hasitem={item=ds:megaphone,location=slot.hotbar}] at @s positioned ^^1^25 run execute as @e[scores={Stun=3..},tag=!Frames,tag=!speech_adapted,r=24.9,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:not_moving
tag @s[scores={move=25},tag=cursed_speaking] remove cursed_speaking


event entity @s[scores={move=1..2},has_property={property:heart=1..}] heart_off
playanimation @s[scores={move=0..1},tag=!noStunnedAnim] animation.cancel
tag @s[scores={move=0..1},tag=form7] remove form7