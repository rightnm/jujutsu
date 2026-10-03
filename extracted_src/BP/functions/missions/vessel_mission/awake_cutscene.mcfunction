execute unless entity @s[scores={Deleter=0..}] at @s run scoreboard players set @s Deleter 621

execute as @s[scores={Deleter=20..621}] at @s run scoreboard players set @e[r=60,scores={infinity=4..}] infinity 3
execute as @s[scores={Deleter=20..621}] at @s run scoreboard players set @e[r=60,scores={Evade=1..}] Evade 0
execute as @s[scores={Deleter=20..621}] at @s run scoreboard players set @e[r=60,scores={Stun=0..21}] Stun 30
execute as @s[scores={Deleter=20..621}] at @s run scoreboard players set @e[r=60,scores={cutscene=0..6}] cutscene 20
execute as @s[scores={Deleter=20..621}] at @s run scoreboard players set @e[r=60,scores={Move=0..6}] Move 20
execute as @s[scores={Deleter=20..621}] at @s run scoreboard players set @e[r=60,scores={Camera=0..6}] Camera 20
execute as @s[scores={Deleter=20..621}] at @s run effect @e[type=!player,r=60] slowness 1 15 true

playanimation @s[scores={Deleter=600..}] animation.riko_amanai.get_up
execute as @s[scores={Deleter=600..}] at @s run playanimation @p[tag=special_mission_vessel,c=1] animation.riko_amanai.stage2_cutscene
execute as @s[scores={Deleter=602..}] at @s run camera @a[r=50] fade time 0 0.25 0.15 color 0 0 0

execute as @s run tp @s ~~~~ 0

execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=600..601}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~1~ 99999 2 99999

#dialogue

execute as @s[scores={Deleter=570..590}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fHey... you're finally awake."}]}


execute as @s[scores={Deleter=520..559}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > Eh-?..."}]}
execute as @s[scores={Deleter=506..519}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > EHHHH!-..."}]}


execute as @s[scores={Deleter=505}] at @s run playsound mob.clap @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={Deleter=505}] at @s run playsound mob.punch1 @a[r=100] ~~1~ 99999 0.25 99999

execute as @s[scores={Deleter=480}] at @s run playsound mob.blood1 @a[r=100] ~~1~ 99999 1.5 99999
execute as @s[scores={Deleter=505}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s[scores={Deleter=505}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run particle ds:large_impact1 ^0.3^^0.3

execute as @s[scores={Deleter=470..505}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fOw!"}]}

execute as @s[scores={Deleter=440..469}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > YOU SCUM!..."}]}
execute as @s[scores={Deleter=390..439}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > IF YOU THINK THAT YOU'RE GONNA KILL ME YOU BETTER BE READY TO DIE FIRST!"}]}

execute as @s[scores={Deleter=360..389}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fThat slap was so un-necessary!"}]}
execute as @s[scores={Deleter=320..359}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fWill you please calm down riko, you have it all wrong, we're not members of the group that attacked you earlier."}]}
execute as @s[scores={Deleter=260..319}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fWe're here to escort you to tengen."}]}

execute as @s[scores={Deleter=211..260}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > You're a liar! It's written all-over your face!"}]}
execute as @s[scores={Deleter=171..220}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > If you're here to escort me, then prove it!"}]}

execute as @s[scores={Deleter=121..170}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fIf we wanted to kill you, we would have done it already, stop being an idiot."}]}
execute as @s[scores={Deleter=81..120}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fNow, are you ready? we need to get going!"}]}

execute as @s[scores={Deleter=30..80}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§b< Riko Amanai > Grrr.. whatever."}]}


execute as @s[scores={Deleter=610..}] at @s run execute as @p[tag=special_mission_vessel] at @s run scriptevent ds:knockback 1
execute as @s[scores={Deleter=600..609}] at @s run execute as @p[tag=special_mission_vessel] at @s run tp @s ~~~~ 0
execute as @s[scores={Deleter=1..}] at @s run execute as @p[tag=special_mission_vessel] at @s run tp @e[type=ds:riko_amanai_awake,c=1,name=RikoAmanai,scores={Deleter=1..}] ^^^0.5 facing @s

execute as @s[scores={Deleter=600..}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^^0.2^0.15 facing ^0.5^-0.25^0.6
execute as @s[scores={Deleter=595..598}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 2 in_sine pos ^^0.2^0.15 facing ^0.75^-0.1^0.6
execute as @s[scores={Deleter=570}] at @s run camera @a[r=50] fade time 0.3 0.25 0.3 color 0 0 0

execute as @s[scores={Deleter=559..560}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^-1^1^0.45 facing ^-0.85^-0.3^0.5
execute as @s[scores={Deleter=559..560}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 2.5 in_sine pos ^-1^1^0.45 facing ^0.5^-0.3^0.5

execute as @s[scores={Deleter=500}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^^^1 facing ^^^
execute as @s[scores={Deleter=490}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 1.5 in_out_circ pos ^1^-0.75^5 facing ^-1^1^

execute as @s[scores={Deleter=450}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^^-0.25^0.8 facing ^0.5^-0.25^5
execute as @s[scores={Deleter=448..450}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 3 in_sine pos ^^-0.25^0.5 facing ^0.5^-0.25^5

execute as @s[scores={Deleter=380}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^0.6^-0.25^1.5 facing ^^^
execute as @s[scores={Deleter=380}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 3 in_sine pos ^0.8^-0.25^1.75 facing ^^^


execute as @s[scores={Deleter=258..259}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^-1^-0.25^1 facing ^0.75^-0.25^5
execute as @s[scores={Deleter=257..258}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 2.4 in_sine pos ^-1^-0.25^1.25 facing ^0.75^-0.25^5



execute as @s[scores={Deleter=169..170}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^0.6^-0.25^1.5 facing ^^^
execute as @s[scores={Deleter=168..169}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 3 in_sine pos ^0.8^-0.25^1.75 facing ^^^

execute as @s[scores={Deleter=79}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^-1^-0.25^1 facing ^0.75^-0.25^5
execute as @s[scores={Deleter=77..78}] at @s run execute as @p[c=1,tag=special_mission_vessel] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 2.4 in_sine pos ^-1^-0.25^1.25 facing ^0.75^-0.25^5



execute as @s[scores={Deleter=45}] at @s run camera @a[r=50] fade time 1.5 1 1 color 0 0 0

execute as @s[scores={Deleter=5}] at @s run tellraw @a[r=50] {"rawtext":[{"text":"§e< Phone > §a- Alright, you've got the vessel? Make your way over to the Coordinates with the Vessel: 5000 60 2000\n\n§cDon't lose her and watch out for potential threats!"}]}
execute as @s[scores={Deleter=1..5}] at @s  run function structure_vessel_dropoff
execute as @s[scores={Deleter=1..5}] at @s unless entity @e[type=ds:riko_amanai,r=100] run summon ds:riko_amanai "Riko Amanai"
execute as @s[scores={Deleter=1..4}] at @s run  event entity @s ds:disappear

