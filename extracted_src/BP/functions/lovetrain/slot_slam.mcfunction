scoreboard players random @s[scores={Deleter=89..}] chance -10 100
playanimation @s[scores={chance=-10..14,Deleter=88..}] animation.slot_slam5
playanimation @s[scores={chance=15..40,Deleter=88..}] animation.slot_slam1
playanimation @s[scores={chance=41..70,Deleter=88..}] animation.slot_slam2
playanimation @s[scores={chance=71..90,Deleter=88..}] animation.slot_slam3
playanimation @s[scores={chance=91..,Deleter=88..}] animation.slot_slam4
execute as @s[scores={Deleter=88}] at @s run tp @s ~~10~
execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~

tag @s[tag=!Frames] add Frames
execute as @s[scores={Deleter=88}] at @s run particle ds:fall_fast

execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..86}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={Deleter=79}] at @s run particle ds:doorcrash_rainbow1 ~~~
execute as @s[scores={Deleter=79}] at @s run particle ds:doorcrash_rainbow2 ~~~
execute as @s[scores={Deleter=79}] at @s run particle ds:doorcrash_rainbow3 ~~~
execute as @s[scores={Deleter=79}] at @s run particle ds:dirt0 ~~0.15~
execute as @s[scores={Deleter=79}] at @s run particle ds:dirt2
execute as @s[scores={Deleter=79}] at @s run particle ds:crater2
execute as @s[scores={Deleter=79}] at @s run particle ds:crater3
execute as @s[scores={Deleter=79}] at @s run particle ds:large_slam1
execute as @s[scores={Deleter=79}] at @s run particle ds:large_slam2
execute as @s[scores={Deleter=79}] at @s run particle ds:large_slam3
execute as @s[scores={Deleter=79}] at @s run particle ds:leap2
execute as @s[scores={Deleter=79}] at @s run particle ds:ground_slam1
execute as @s[scores={Deleter=79}] at @s run particle ds:ground_slam2
execute as @s[scores={Deleter=79}] at @s run particle ds:ground_slam3
execute as @s[scores={Deleter=79}] at @s run particle ds:ground_slam4
execute as @s[scores={Deleter=79}] at @s run particle mcdp_v:knockback_roar_particle_2
execute as @s[scores={Deleter=79}] at @s run camerashake add @a[r=60] 3 0.2
execute as @s[scores={Deleter=79,chance=1..98}] at @s run playsound mob.metal1 @a[r=160] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=79,chance=99..}] at @s run playsound mob.metal2 @a[r=160]  ~~~ 99999 1 99999
execute as @s[scores={Deleter=79}] at @s run playsound random.explode @a[r=160]  ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=79}] at @s run playsound random.explode @a[r=160]  ~~~ 99999 0.75 99999
execute as @s[scores={Deleter=79}] at @s run playsound mob.wither.break_block @a[r=160]  ~~~ 99999 0.45 99999
execute as @s[scores={Deleter=79}] at @s run  damage @e[tag=!Frames,r=7.5,tag=!slots,type=!item] 25
execute as @s[scores={Deleter=79}] at @s run  scoreboard players add @e[tag=!Frames,r=7.5,tag=!slots,type=!item] knockdown 35
execute as @s[scores={Deleter=79}] at @s run  scoreboard players add @e[tag=!Frames,r=7.5,tag=!slots,type=!item] knock 40
execute as @s[scores={Deleter=79}] at @s run  scoreboard players add @e[tag=!Frames,r=7.5,tag=!slots,type=!item] Evade 25
execute as @s[scores={Deleter=79}] at @s run  scoreboard players add @e[tag=!Frames,r=7.5,tag=!slots,type=!item] Stun 35
execute as @s[scores={Deleter=79}] at @s run  scoreboard players add @e[tag=!Frames,r=7.5,tag=!slots,type=!item] Hit 4

execute as @s[scores={Deleter=77}] at @s run playsound mob.slots1 @a[r=160]  ~~~ 99999 1 99999

execute as @s[scores={Deleter=25,chance=-10..14}] at @s run playsound mob.magic1 @a[r=160]  ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=25,chance=-10..14}] at @s run particle ds:doorcrash_red1 ~~1.5~
execute as @s[scores={Deleter=25,chance=-10..14}] at @s run particle ds:doorcrash_red3 ~~1.5~
execute as @s[scores={Deleter=25,chance=-10..14}] at @s run scoreboard players remove @e[tag=slots,c=1] Energy 100
execute as @s[scores={Deleter=25,chance=-10..14}] at @s run scoreboard players remove @e[tag=slots,c=1] fever 5
execute as @s[scores={Deleter=25,chance=-10..14}] at @s run tellraw @p[tag=slots,c=1] {"rawtext":[{"text":"§r§cL bozo\n -100 Cursed Energy\n-5 Fever"}]}

execute as @s[scores={Deleter=25,chance=15..40}] at @s run playsound mob.magic1 @a[r=160]  ~~~ 99999 1 99999
execute as @s[scores={Deleter=25,chance=15..40}] at @s run particle ds:doorcrash_green3 ~~1.5~
execute as @s[scores={Deleter=25,chance=15..40}] at @s run scoreboard players add @e[tag=slots,c=1] Energy 100
execute as @s[scores={Deleter=25,chance=15..40}] at @s run tellraw @p[tag=slots,c=1] {"rawtext":[{"text":"§r§b+100 Cursed Energy"}]}
execute as @s[scores={Deleter=25,chance=15..40}] at @s run scoreboard players add @e[tag=slots,c=1] fever 3

execute as @s[scores={Deleter=25,chance=41..70}] at @s run playsound mob.magic1 @a[r=160]  ~~~ 99999 1.25 99999
execute as @s[scores={Deleter=25,chance=41..70}] at @s run particle ds:doorcrash_gold3 ~~1.5~
execute as @s[scores={Deleter=25,chance=41..70}] at @s run scoreboard players set @e[tag=slots,c=1,scores={ability3=1..}] ability3 0
execute as @s[scores={Deleter=25,chance=41..70}] at @s run tellraw @p[tag=slots,c=1] {"rawtext":[{"text":"§r§gYour Slot Slam cooldown has been reset!"}]}
execute as @s[scores={Deleter=25,chance=41..70}] at @s run scoreboard players add @e[tag=slots,c=1] fever 5


execute as @s[scores={Deleter=25,chance=71..90}] at @s run playsound mob.magic1 @a[r=160]  ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=20,chance=71..90}] at @s run playsound mob.magic1 @a[r=160]  ~~~ 99999 1.65 99999
execute as @s[scores={Deleter=15,chance=71..90}] at @s run playsound mob.magic1 @a[r=160]  ~~~ 99999 1.75 99999
execute as @s[scores={Deleter=25,chance=71..90}] at @s run particle ds:doorcrash_red3 ~~1.5~
execute as @s[scores={Deleter=20,chance=71..90}] at @s run particle ds:doorcrash_red3 ~~1.5~
execute as @s[scores={Deleter=15,chance=71..90}] at @s run particle ds:doorcrash_red3 ~~1.5~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  playsound random.explode @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  playsound random.explode @a[r=200] ~~~ 99999 0.45 99999
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  playsound mob.shock1 @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=9..12,chance=71..90}] at @s run  damage @e[tag=!Frames,r=7.5,tag=!slots,type=!item] 15 override
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  scoreboard players add @e[tag=!Frames,r=15,tag=!slots,type=!item] knockdown 95
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  scoreboard players add @e[tag=!Frames,r=15,tag=!slots,type=!item] Evade 25
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  scoreboard players add @e[tag=!Frames,r=15,tag=!slots,type=!item] Stun 35
execute as @s[scores={Deleter=12,chance=71..90}] at @s run  scoreboard players add @e[tag=!Frames,r=15,tag=!slots,type=!item] Hit 4
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:crater4
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:dirt0 ~~0.15~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:dirt2
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:crater2
execute as @s[scores={Deleter=79}] at @s run particle ds:crater3
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:large_slam1
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:large_slam2
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:large_slam3
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:leap2
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:ground_slam1
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:ground_slam2
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:ground_slam3
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:ground_slam4
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:slots_explode1 ~~1.5~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:slots_explode2 ~~1.5~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:slots_explode3 ~~1.5~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:slots_explode4 ~~1.5~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:impact2 ~~1.5~
execute as @s[scores={Deleter=12,chance=71..90}] at @s run particle ds:heavy_impact5
execute as @s[scores={Deleter=8..12,chance=71..90}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=8..12,chance=71..90}] at @s run summon ds:red_reversal ~-4~~
execute as @s[scores={Deleter=8..12,chance=71..90}] at @s run summon ds:red_reversal ~4~~
execute as @s[scores={Deleter=8..12,chance=71..90}] at @s run summon ds:red_reversal ~~~-4
execute as @s[scores={Deleter=8..12,chance=71..90}] at @s run summon ds:red_reversal ~~~4
execute as @s[scores={Deleter=8..12,chance=71..90}] at @s run kill @e[type=item,r=25]
execute as @s[scores={Deleter=12,chance=71..90}] at @s run effect @e[type=!item,tag=slots,r=20] resistance 1 10 true
execute as @s[scores={Deleter=12,chance=71..90}] at @s run camerashake add @a[r=100] 3 0.45
execute as @s[scores={Deleter=25,chance=71..90}] at @s run scoreboard players add @e[tag=slots,c=1] fever 5


execute as @s[scores={Deleter=25,chance=91..}] at @s run playsound mob.slots2 @a[r=160]  ~~~ 99999 0.85 99999
execute as @s[scores={Deleter=25,chance=91..}] at @s run  particle ds:doorcrash_gold1 ~~1.5~
execute as @s[scores={Deleter=25,chance=91..}] at @s run  particle ds:doorcrash_gold2 ~~1.5~
execute as @s[scores={Deleter=25,chance=91..}] at @s run  particle ds:doorcrash_gold3 ~~1.5~
execute as @s[scores={Deleter=25,chance=91..}] at @s run scoreboard players add @p[tag=slots] Energy 777
execute as @s[scores={Deleter=25,chance=91..}] at @s run scoreboard players set @p[tag=slots] ability3 0
execute as @s[scores={Deleter=25,chance=91..}] at @s run tellraw @p[tag=slots,c=1] {"rawtext":[{"text":"§r§gYour Slot Slam cooldown has been reset!\n§r§b+777 Cursed Energy"}]}
execute as @s[scores={Deleter=25,chance=91..}] at @s run scoreboard players add @e[tag=slots,c=1] fever 10

execute as @s[scores={Deleter=1..6}] at @s run tag @e[tag=slots] remove slots
execute as @s[scores={Deleter=1..6}] at @s run playsound mob.magic2 @a ~~~ 1 0.5
execute as @s[scores={Deleter=1..6}] at @s run particle ds:doorcrash_rainbow1 ~~1.5~
execute as @s[scores={Deleter=1..6}] at @s run particle ds:doorcrash_rainbow2 ~~1.5~
execute as @s[scores={Deleter=1..6}] at @s run particle ds:doorcrash_rainbow3 ~~1.5~
execute as @s[scores={Deleter=1..6}] at @s run particle ds:pachinkostrike_rainbow1 ~~1.5~
execute as @s[scores={Deleter=1..6}] at @s run particle ds:rainbow_pachinko ~~1.5~
execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-40~