execute as @s[name="Fireball"] at @s run tp @s ^^^ facing @e[name=FireballTRG,c=1,r=54]
execute as @s[name="Fireball"] at @s run tp @s ^^^1.33
execute as @s[name="Fireball"] at @s run tp @s ^^^1.33
execute as @s[scores={Deleter=6..}] at @s if entity @e[name=FireballTRG,r=3] run scoreboard players set @s Deleter 5
execute as @s[scores={Deleter=1..3}] at @s run kill @e[name=FireballTRG,r=54,c=1]

execute as @s[scores={Deleter=5..},tag=projectilecharge1] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] run scoreboard players set @s Deleter 4
execute as @s[scores={Deleter=5..},tag=projectilecharge2] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] run scoreboard players set @s Deleter 4
execute as @s[scores={Deleter=5..},tag=projectilecharge3] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,r=7,type=!ds:knockback] run scoreboard players set @s Deleter 4

execute as @s[scores={Deleter=3}] at @s run function damages/fire_damage
execute as @s[scores={Deleter=3}] at @s run function damages/explosion_damage

playanimation @s[scores={Deleter=4..},tag=projectilecharge1] animation.fireball1
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail1 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail2 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail3 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail1 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail2 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail3 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail1 ^^^-12
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail2 ^^^-12
execute as @s[scores={Deleter=5..35},tag=projectilecharge1] at @s run particle ds:fireball_s_trail3 ^^^-12

playanimation @s[scores={Deleter=4..},tag=projectilecharge2] animation.fireball2
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail1 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail2 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail3 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail1 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail2 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail3 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail1 ^^^-12
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail2 ^^^-12
execute as @s[scores={Deleter=5..35},tag=projectilecharge2] at @s run particle ds:fireball_m_trail3 ^^^-12

playanimation @s[scores={Deleter=4..},tag=projectilecharge3] animation.fireball3
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail1 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail2 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail3 ^^^-10
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail1 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail2 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail3 ^^^-11
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail1 ^^^-12
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail2 ^^^-12
execute as @s[scores={Deleter=5..35},tag=projectilecharge3] at @s run particle ds:fireball_l_trail3 ^^^-12

execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam1 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:rubble3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 4
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=4}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={Deleter=4}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999

execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex1
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex2
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex3
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex4
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex5
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex6
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run particle ds:fireball_s_ex7

execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex1
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex2
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex3
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex4
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex5
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex6
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run particle ds:fireball_m_ex7

execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex1
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex2
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex3
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex4
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex5
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex6
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run particle ds:fireball_l_ex7

execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run scoreboard players set @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] Stun 20
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] Evade 5
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] Hit 3
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] onfire 10
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] 5 override 
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=3] run summon ds:knockback

execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run scoreboard players set @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] Stun 20
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] Evade 10
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] Hit 3
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] onfire 20
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] 10 override 
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=5] run summon ds:knockback

execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run scoreboard players set @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=10] Stun 30
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=10] Evade 20
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=10] Hit 3
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run scoreboard players add @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=10] onfire 40
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run damage @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=10] 20 override 
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s if entity @e[tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,r=10] run summon ds:red_reverse

execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run effect @e[r=7,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 20 true
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run summon ds:lapse_explode

execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run effect @e[r=7,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 20 true
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run summon ds:lapse_explode

execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run effect @e[r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] resistance 1 20 true
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run summon ds:energy_explosion

execute as @s[scores={Deleter=3}] at @s run function damages/fire_damage
execute as @s[scores={Deleter=3}] at @s run function damages/explosion_damage

execute as @s[scores={Deleter=1..4}] at @s run kill @e[type=item,r=13]
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam2
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run playsound random.explode @a[r=100] ~~~  99999 0.75 99999
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run playsound mob.burn @a[r=100] ~~~  99999 2 99999
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 3 99999
execute as @s[scores={Deleter=3},tag=projectilecharge1] at @s run camerashake add @a[r=100] 1 0.2

execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run playsound random.explode @a[r=100] ~~~  99999 0.5 99999
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run playsound mob.burn @a[r=100] ~~~  99999 1.25 99999
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={Deleter=3},tag=projectilecharge2] at @s run camerashake add @a[r=100] 2 0.25

execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run playsound random.explode @a[r=100] ~~~  99999 0.35 99999
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run playsound mob.burn @a[r=100] ~~~  99999 1 99999
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=3},tag=projectilecharge3] at @s run camerashake add @a[r=100] 4 0.25
execute as @s[scores={Deleter=1..2}] at @s run tp @s ~~-200~

