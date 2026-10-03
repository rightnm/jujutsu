playanimation @s[scores={move=30}] animation.calamity.ab4

tag @s[scores={move=1..2},tag=wep4] remove wep4

tag @s[scores={move=15..31,Stun=1..},tag=wep4] remove wep4
playanimation @s[scores={move=15..31,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=15..31,Stun=1..}] move 0

scoreboard players set @s[scores={move=32..}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @a[tag=cruel_combo,r=60,c=1] Camera 4
scoreboard players set @e[tag=cruel_combo,scores={Flourish=1..},r=60,c=1] Flourish 0
scoreboard players set @e[tag=cruel_combo,r=60,c=1] Move 4
execute as @e[tag=cruel_combo,r=60,c=1] unless entity @s[scores={Stun=55..}] run scoreboard players set @s Stun 55
execute as @e[tag=cruel_combo,r=60,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim

execute as @s[scores={move=16..31}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=16..31}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=16..31}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=16..31}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~

execute as @s[scores={move=28}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 1.4
execute as @s[scores={move=28}] at @s run particle ds:ground_dust2
execute as @s[scores={move=20..28}] at @s positioned ^^^2 unless entity @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scriptevent ds:knockback 2

execute as @s[scores={move=15}] at @s positioned ^^^2 run playsound mob.witch.throw @a[r=10] ~~~ 99999 0.65 99999

execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] at @s run particle ds:punch4 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run tag @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add cruel_combo
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players set @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] Stun 15
execute as @s[scores={move=15}] at @s positioned ^^^2 run tag @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add noStunnedAnim
execute as @s[scores={move=15}] at @s positioned ^^^2 unless entity @e[tag=cruel_combo,r=1.95,c=1] run scoreboard players set @s Stun 20

execute as @s[scores={move=10..15}] at @s positioned ^^^2 if entity @e[tag=cruel_combo,r=1.95,c=1] run scoreboard players set @s move 1001



playanimation @s[scores={move=1000..1001}] animation.calamity.ab4b
execute as @s[scores={move=1000..1001}] at @s run playanimation @e[tag=cruel_combo,r=5,c=1] animation.calamity.ab4_hit
execute as @s[scores={move=1001}] at @s run tp @s @s
execute as @s[scores={move=1001}] at @s run tp @e[tag=cruel_combo,r=5,c=1] ^^^1 facing ~~1~


execute as @s[scores={move=965..1000}] at @s run execute as @e[tag=cruel_combo,r=60,c=1] at @s run tp @s @s
execute as @s[scores={move=975..1000}] at @s run execute as @e[tag=cruel_combo,r=60,c=1] at @s run tp @s ^^^-1.5 facing @s


camera @s[scores={move=975},type=player] set minecraft:free pos ^-1^-1^2.5 facing ^^3^-1

camera @s[scores={move=960..970},type=player] set minecraft:free pos ^-12^1^1 facing ^^1^1 


execute as @s[scores={move=980}] at @s run tp @s ^^6^7.5 facing ^^^10
execute as @s[scores={move=981}] at @s run particle ds:rubble3
execute as @s[scores={move=981}] at @s run particle ds:dirt0
execute as @s[scores={move=981}] at @s run particle ds:leap
execute as @s[scores={move=981}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=981}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999

execute as @s[scores={move=986..997}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=958..962}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=958..962}] at @s run execute as @e[tag=cruel_combo,r=60,c=1] at @s run tp @s ^^1.5^-2 facing @s


execute as @s[scores={move=965..966}] at @s run execute as @e[tag=cruel_combo,r=60,c=1] at @s run tp @e[scores={move=965..966},r=60,c=1] ^^^1
execute as @s[scores={move=975..986}] at @s run tp @s @s
execute as @s[scores={move=965}] at @s run particle ds:large_impact1
execute as @s[scores={move=965}] at @s run particle ds:large_impact2
execute as @s[scores={move=965}] at @s run particle ds:large_slam1
execute as @s[scores={move=965}] at @s run particle ds:large_slam2
execute as @s[scores={move=965}] at @s run particle ds:large_slam3
execute as @s[scores={move=965}] at @s run particle ds:slam_dust1 ~~~
execute as @s[scores={move=965}] at @s run particle ds:slam_dust2 ~~~
execute as @s[scores={move=965}] at @s run particle ds:dirt02 ~~~
execute as @s[scores={move=965}] at @s run camerashake add @a[r=10] 3 0.15
execute as @s[scores={move=965}] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 1.75 9999
execute as @s[scores={move=965}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=965}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.75 9999

camera @s[scores={move=943..953},type=player] set minecraft:free pos ^-12^-2^1 facing ^^1.5^1 
camera @s[scores={move=932..942},type=player] set minecraft:free pos ^-6^-3^5 facing ^^1.5^1 

execute as @s[scores={move=950..953}] at @s run execute as @e[tag=cruel_combo,r=60,c=1] at @s run tp @e[scores={move=950..953},r=60,c=1] ^^^1.35
execute as @s[scores={move=950..958}] at @s run execute as @e[tag=cruel_combo,r=60,c=1] at @s run tp @s @s

execute as @s[scores={move=954}] at @s run particle ds:rubble3
execute as @s[scores={move=954}] at @s run particle ds:dirt0
execute as @s[scores={move=954}] at @s run particle ds:leap
execute as @s[scores={move=954}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=954}] at @s run playsound random.explode @a[r=100] ~~~ 9999 1.25 9999


execute as @s[scores={move=920..949}] at @s run tp @s @s
execute as @s[scores={move=935..949}] at @s run particle ds:turbo_intensity3 ~~1~
execute as @s[scores={move=944..949}] at @s run tp @e[tag=cruel_combo,r=60,c=1] ^^^1.5 facing ^^^20
execute as @s[scores={move=931..943}] at @s run tp @e[tag=cruel_combo,r=60,c=1] ^^^1 facing ^^^20
execute as @s[scores={move=920..930}] at @s run tp @e[tag=cruel_combo,r=60,c=1] ^^^2.5 facing ^^^20

execute as @s[scores={move=950}] at @s run playsound mob.heavy_swing @a ~~~ 99999 0.45 99999
execute as @s[scores={move=953}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 0.4 99999
execute as @s[scores={move=953}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.4 99999

execute as @s[scores={move=949}] at @s run particle ds:dirt0
execute as @s[scores={move=949}] at @s run particle ds:ground_slam2

execute as @s[scores={move=927..}] at @s if entity @p[tag=griefable] run kill @e[type=item,r=20]
execute as @s[scores={move=100..}] at @s if entity @p[tag=griefable] unless block ~~3~ bedrock unless block ~~2~ bedrock unless block ~~1~ bedrock unless block ~~~ bedrock unless block ~~3~ barrier unless block ~~2~ barrier unless block ~~1~ barrier unless block ~~~ barrier run fill ~3~3~3~-3~~-3 air [] destroy
execute as @s[scores={move=100..}] at @s if entity @p[tag=griefable] run execute as @e[tag=cruel_combo,r=60,c=1] at @s unless block ~~3~ bedrock unless block ~~2~ bedrock unless block ~~1~ bedrock unless block ~~~ bedrock unless block ~~3~ barrier unless block ~~2~ barrier unless block ~~1~ barrier unless block ~~~ barrier run fill ~3~3~3~-3~~-3 air [] destroy

execute as @s[scores={move=928..933}] at @s run tp @s ^^^1.5
execute as @s[scores={move=928..933}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=928..933}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=928..933}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=928..933}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~
execute as @s[scores={move=928..933}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=928..933}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=928..933}] at @s if block ~~-1~ air run tp @s ~~-1~

camera @s[scores={move=925..928},type=player] set minecraft:free pos ^-4^5^-2.5 facing ^^1.5^1 


execute as @s[scores={move=928}] at @s run particle ds:invert ^-3^4^-1.5
execute as @s[scores={move=927}] at @s run summon gg:impact_frame
execute as @s[scores={move=927}] at @s run camerashake add @a[r=10] 4 0.25

execute as @s[scores={move=934}] at @s run playsound mob.burst @a[r=100] ~~~ 99999 1.35 99999
execute as @s[scores={move=928}] at @s run particle ds:demons_descent1 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:demons_descent2 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:demons_descent3 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:demons_descent4 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:large_impact1 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:large_impact2 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:large_slam1 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:large_slam2 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:large_slam3 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:slam_dust1 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:slam_dust2 ^^^2
execute as @s[scores={move=928}] at @s run particle ds:dirt02 ^^^2
execute as @s[scores={move=927}] at @s run particle ds:crater3 ^^^2
execute as @s[scores={move=927}] at @s run particle ds:crater3 ^^^2
execute as @s[scores={move=929}] at @s run particle ds:ground_pound2 ^^^2
execute as @s[scores={move=929}] at @s run particle ds:ground_pound3 ^^^2
execute as @s[scores={move=929}] at @s run particle ds:ground_pound4 ^^^2
execute as @s[scores={move=929}] at @s run particle ds:dirt1 ^^^2
execute as @s[scores={move=929}] at @s run particle ds:dirt2 ^^^2
execute as @s[scores={move=929}] at @s run particle ds:dirt3 ^^^2
execute as @s[scores={move=928}] at @s run playsound mob.shock1 @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=928}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=928}] at @s run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999

execute as @s[scores={move=1000}] at @s run scoreboard players set @e[tag=cruel_combo,r=60,c=1] Hit 7


execute as @s[scores={move=925}] at @s run damage @e[tag=cruel_combo,r=60,c=1] 30 override
execute as @s[scores={move=925}] at @s run scoreboard players set @e[tag=cruel_combo,r=60,c=1] Stun 40
execute as @s[scores={move=925}] at @s run scoreboard players add @e[tag=cruel_combo,r=60,c=1] Evade 25
execute as @s[scores={move=928}] at @s run scoreboard players set @e[tag=cruel_combo,r=60,c=1] Hit 5

camera @s[scores={move=900..917},type=player] clear
execute as @s[scores={move=900..915}] at @s run scoreboard players set @s move 2
execute as @s[scores={move=1..2}] at @s run tag @e[tag=cruel_combo,r=60,c=1] remove cruel_combo


