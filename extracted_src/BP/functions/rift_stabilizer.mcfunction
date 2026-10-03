tp @s ~~~
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 2401
playanimation @s[scores={Deleter=2400..}] animation.rift_stabilizer.form



execute as @s[scores={Deleter=2340..}] run particle ds:rift1 ~~0.85~
execute as @s[scores={Deleter=2340..2370}] run particle ds:large_impact1 ~~0.85~
execute as @s[scores={Deleter=2400}] run playsound beacon.activate @a ~~~ 999999 0.8 999999


execute as @s[scores={Deleter=2340}] run playsound mob.alarm @a ~~~ 999999 2 999999
execute as @s[scores={Deleter=2340}] run playsound beacon.power @a ~~~ 999999 2.5 999999
execute as @s[scores={Deleter=2340}] run particle ds:reactor_activate2 ~~0.85~
execute as @s[scores={Deleter=1..2340}] run particle ds:white_lightning1 ~~0.85~
execute as @s[scores={Deleter=1..2340}] run particle ds:rift0 ~~0.85~

playanimation @s[tag=broken,scores={Deleter=33..34}] animation.rift_stabilizer.break

execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:demons_descent1
execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:demons_descent2
execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:demons_descent4
execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:demons_descent5
execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:demons_descent6
execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:demons_descent8
execute as @s[tag=broken,scores={Deleter=4}] at @s run particle ds:invert
execute as @s[tag=broken,scores={Deleter=4}] at @s run summon gg:impact_frame
execute as @s[tag=broken,scores={Deleter=1..4}] at @s run playsound respawn_anchor.deplete @a ~~~ 999999 1.5 999999
execute as @s[tag=broken,scores={Deleter=1..4}] at @s run playsound respawn_anchor.deplete @a ~~~ 999999 1 999999
execute as @s[tag=broken,scores={Deleter=1..4}] at @s run playsound mob.distort3 @a ~~~ 999999 1.5 999999
execute as @s[tag=broken,scores={Deleter=1..4}] at @s run playsound mob.impact @a ~~~ 999999 1.5 999999

execute as @s[tag=broken,scores={Deleter=0..1}] at @s run tellraw @a {"rawtext":[{"text":"§l§4> ᴇʀʀᴏʀ. ʀɪfᴛ ꜱᴛᴀʙɪʟɪᴢᴇʀ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ."}]}

execute as @s[scores={Deleter=0..1}] at @s run particle ds:large_impact1
execute as @s[scores={Deleter=0..1}] at @s run  event entity @s ds:disappear