execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute at @s unless block ~~-0.2~ air run tp @s ~~~ facing @e[tag=!Frames,r=30,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,c=1]

execute as @s[scores={move=0}] at @s if entity @e[tag=!Frames,r=19,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,c=1] run scoreboard players set @s move 175
playanimation @s[scores={move=154}] animation.toad.tounge1

execute as @s[scores={move=125}] positioned ^^^20 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^20 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s


execute as @s[scores={move=125}] positioned ^^^18 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^18 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^16 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^16 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^14 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^14 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^12 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^10 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^10 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^8 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^8 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^6 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^4 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^2 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s

execute as @s[scores={move=125}] positioned ^^^1 run scoreboard players set @e[tag=!Frames,r=2,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame] Stun 25
execute as @s[scores={move=110..147}] positioned ^^^1 run tp @e[tag=!Frames,r=2.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!toad_tame,scores={Stun=1..}] ^^^ facing @s
