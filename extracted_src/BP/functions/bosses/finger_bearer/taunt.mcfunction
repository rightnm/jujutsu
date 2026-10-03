playanimation @s[scores={move=64..}] animation.finger_bearer.taunt

execute as @s[scores={move=6..}] at @s run tp @s ~~~ facing @e[type=!ds:finger_bearer,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1]


playanimation @s[scores={move=3..,Stun=1..},tag=!noStunnedAnim] animation.stunned i 0.25
scoreboard players set @s[scores={move=3..,Stun=1..}] move 2
