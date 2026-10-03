execute as @s[scores={domain=1..}] at @s positioned ~ ~ ~0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 deadlysentencing

execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={selection=0..}] run scoreboard players add @s selection 0
execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={judgetimer=0..}] run scoreboard players add @s judgetimer 0
execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={counting=0..}] run scoreboard players add @s counting 0
execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={evidence=0..}] run scoreboard players add @s evidence 0
execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={trial_mode=0..}] run scoreboard players add @s trial_mode 0
execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={verdict=0..}] run scoreboard players add @s verdict 0
execute as @s[scores={domain=25..50}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s unless entity @s[scores={deathpenaltytimer=0..}] run scoreboard players add @s deathpenaltytimer 0
execute unless entity @s[scores={selection=0..}] run scoreboard players add @s[scores={domain=170..180}] selection 0
execute unless entity @s[scores={judgetimer=0..}] run scoreboard players add @s[scores={domain=170..180}] judgetimer 0
execute unless entity @s[scores={counting=0..}] run scoreboard players add @s[scores={domain=170..180}] counting 0
execute unless entity @s[scores={evidence=0..}] run scoreboard players add @s[scores={domain=170..180}] evidence 0
execute unless entity @s[scores={trial_mode=0..}] run scoreboard players add @s[scores={domain=170..180}] trial_mode 0
execute unless entity @s[scores={verdict=0..}] run scoreboard players add @s[scores={domain=170..180}] verdict 0
execute unless entity @s[scores={deathpenaltytimer=0..}] run scoreboard players add @s[scores={domain=170..180}] deathpenaltytimer 0

tag @s[scores={domain=1..180},tag=form6c] remove form6c

execute as @s[scores={domain=180..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0


execute as @s[scores={domain=170..175}] at @s anchored eyes positioned ^^^2 run function judgeman/trial_set
execute as @s[scores={domain=25..50},type=!player] at @s unless entity @e[tag=on_trial,r=40] run tag @e[type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,tag=!unselect,type=!armor_stand,tag=!the_judge,r=24,c=1] add on_trial
execute as @s[scores={domain=25..50},type=player] at @s unless entity @e[tag=on_trial,r=40] run tag @e[type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,tag=!unselect,type=!armor_stand,tag=!the_judge,r=24,c=1] add on_trial
execute as @s[scores={domain=25..50},type=player] at @s unless entity @e[tag=on_trial,r=40] unless entity @e[type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,tag=!unselect,type=!armor_stand,tag=!the_judge,r=24,c=1] run tag @a[m=c,tag=!the_judge,r=24,c=1] add on_trial

execute as @s[scores={domain=180}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=180}] at @s run kill @e[type=ds:projectile,r=33]
execute as @s[scores={domain=1..180}] at @s run scoreboard players set @e[type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=33,rm=0.2] Stun 36
execute as @s[scores={domain=180}] at @s run scoreboard players set @a[r=33,rm=0.2,scores={move=4..}] move 3
execute as @s[scores={domain=180}] at @s run playanimation @a[r=33,rm=0.2,m=!spectator] animation.stunned
execute as @s[scores={domain=180}] at @s run tp @s @s
playanimation @s[scores={domain=179..182}] animation.judgeman.domain2
execute as @s[scores={domain=180,Energy=1..50}] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=40}] at @s run playsound mob.deadlysentencing2 @a[r=33] ~~~ 180000 1 18000

tag @a[r=100,tag=!abilitying] add abilitying 

scoreboard players set @s[scores={domain=174}] domain 101

scoreboard players add @s[scores={domain=180..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1
scoreboard players set @s[scores={domain=1..}] ProjImmune 50

execute as @s[scores={domain=1..180}] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..},tag=form4] remove form4
tag @s[scores={domain=1..8},tag=domainlayout] remove domainlayout
scoreboard players set @s[scores={domain=1..}] Camera 4

execute as @s[scores={domain=175..180}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1.5 in_out_circ pos ^ ^-0.25 ^3 facing ~~~
execute as @s[scores={domain=50}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2.4 in_out_circ pos ^-3 ^4 ^12 facing ^^2^4

execute as @s[scores={domain=90}] at @s run camera @a[r=33] fade time 0.9 2.15 2 color 0 0 0

execute as @s[scores={domain=70}] at @s run summon ds:projectile deadlysentencingBarrier ~~~
execute as @s[scores={domain=70}] at @s run scoreboard players set @e[name=deadlysentencingBarrier] Deleter 550

execute as @s[scores={domain=69}] at @s run execute as @e[r=47,name=!deadlysentencingBarrier,type=!item,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,tag=!domainunselect] at @s run tp @s ~ 301.1 ~0
execute as @s[scores={domain=60..69}] at @s run execute as @e[r=47,name=!deadlysentencingBarrier,type=!item,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,tag=!domainunselect] at @s run tp @s ~ 301.25 ~

execute as @s[scores={domain=67..68}] at @s positioned ~ ~ ~0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=67..68}] at @s positioned ~ ~ ~0 run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air
execute as @s[scores={domain=50..70}] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=1..65}] at @s run particle ds:deadly_sentencing_collapse1

execute as @s[scores={domain=66..67}] at @s run tp @s @s
execute as @s[scores={domain=65..66}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=60..64}] at @s run tp @s ~ ~ ~ facing ^^^20

execute as @s[scores={domain=60..70}] at @s run execute as @e[r=33] at @s if block ~~~ barrier run tp @s ~~1.1~

execute as @s[scores={domain=67}] at @s run summon ds:deadly_sentencing deadlysentencing ~ ~-0.2 ~
execute as @s[scores={domain=32..67}] at @s run playanimation @e[type=ds:deadly_sentencing,c=1,r=40] animation.deadly_sentencing
execute as @s[scores={domain=65..67}] at @s run execute as @e[type=ds:deadly_sentencing,c=1,r=50] at @s run tp @s @s
execute as @s[scores={domain=65..67}] at @s run execute as @e[type=ds:deadly_sentencing,c=1,r=50] at @s run tp @e[scores={domain=65..67},c=1,r=30] ^^^4.75 facing ~~~

execute as @s[scores={domain=25}] at @s run summon ds:judgeman ^^1^-1 facing ^^^10 
execute as @s[scores={domain=23..25}] at @s run playanimation @e[type=ds:judgeman,c=1,r=50] animation.judgeman.rise2

execute as @s[scores={domain=5..67}] at @s run scoreboard players add @e[name=deadlysentencing,c=1,r=50] Deleter 1200
execute as @s[scores={domain=5..67}] at @s run scoreboard players operation @s domainactive = @e[name=deadlysentencing,c=1,r=50] Deleter

execute as @s[scores={domain=1..57}] at @s run scoreboard players add @e[name=deadlysentencingBarrier,c=1] Deleter 1200

tag @s[scores={domain=1..},tag=!the_judge] add the_judge
execute as @s[scores={domain=1..11}] at @s unless entity @e[tag=on_trial,r=50] run  playanimation @s animation.deadlysentencing_hold
execute as @s[scores={domain=1..11}] at @s unless entity @e[tag=on_trial,r=50] run tellraw @s {"rawtext":[{"text":"§l§cYour domain failed because it could not select a target. Your cooldown has been reduced."}]}
execute as @s[scores={domain=1..11}] at @s unless entity @e[tag=on_trial,r=50] run scoreboard players set @s domainCD 6000
execute as @s[scores={domain=1..11}] at @s unless entity @e[tag=on_trial,r=50] run function judgeman/deadlysentencing_end
scoreboard players set @s[scores={domain=1..8}] domain 10001

scoreboard players random @s[scores={domain=10000}] chance 1 100
scoreboard players set @s[scores={domain=10000},tag=attorney] chance 69
execute as @s[scores={domain=10000,chance=69}] at @s run execute as @a[r=50] at @s run playsound music.attorney @s ~~~ 9999 1 9999
scoreboard players set @s[scores={domain=10000}] chance 0

scoreboard players remove @s[scores={judgetimer=1..}] judgetimer 1

execute as @s[scores={domain=9990}] at @s run camera @a[r=40] fade time 0.4 0.15 0.25 color 0 0 0
execute as @s[scores={domain=9980}] at @s run camera @a[r=40] set minecraft:free pos ^ ^3 ^1 facing ^^5^-4
execute as @s[scores={domain=9979}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fO"}]}
execute as @s[scores={domain=9978}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fOR"}]}
execute as @s[scores={domain=9977}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORD"}]}
execute as @s[scores={domain=9976}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDE"}]}
execute as @s[scores={domain=9975}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER"}]}
execute as @s[scores={domain=9974}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER I"}]}
execute as @s[scores={domain=9973}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN"}]}
execute as @s[scores={domain=9972}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN T"}]}
execute as @s[scores={domain=9971}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN TH"}]}
execute as @s[scores={domain=9970}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN THE"}]}
execute as @s[scores={domain=9969}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN THE C"}]}
execute as @s[scores={domain=9968}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN THE CO"}]}
execute as @s[scores={domain=9967}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN THE COU"}]}
execute as @s[scores={domain=9966}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN THE COUR"}]}
execute as @s[scores={domain=9965}] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"§l§fORDER IN THE COURT!"}]}
execute as @s[scores={domain=9965}] at @s run camera @a[r=40] fade time 1 0.25 1 color 0 0 0

execute as @s[scores={domain=1..25}] at @s run camerashake add @a[r=40] 0.25 0.15
execute as @s[scores={domain=9979}] at @s run camerashake add @a[r=40] 0.25 0.5

execute as @s[scores={domain=33}] at @s run execute as @a[r=50] at @s run playsound music.deadlysentencing2 @s ~~~ 99799 1 99799

execute as @s[scores={domain=9926..9940}] at @s run camera @a[r=40] set minecraft:free pos ^8 ^3 ^4.5 facing ^^1^4.5
execute as @s[scores={domain=1..190,judgetimer=!0}] at @s run scoreboard players set @s judgetimer 0
scoreboard players set @s[scores={domain=9939..9944}] judgetimer 601
scoreboard players set @s[scores={domain=1..,judgetimer=1..600}] domain 9937

titleraw @s[scores={judgetimer=1..},type=player] title {"rawtext":[{"text": "§eTime Left: \n"}, {"score":{"name": "@s","objective": "judgetimer"}},{"text":"\n\n\n\n\n\n\n\n§g-[ Waiting for Defendant to talk... ]-"}]}
execute as @s[scores={judgetimer=1..}] at @s run execute as @e[tag=on_trial,c=1,r=50] at @s if entity @s[type=player] run titleraw @s title {"rawtext":[{"text": "§eTime Left: \n"}, {"score":{"name": "@s","objective": "judgetimer"}},{"text":"\n\n\n\n\n\n\n\n\n\n\n§g-[ You are on Trial ]-\n\n§fHow will you defend yourself?\n\n§f[ §a§lPlead Innocent §r§f]\n§f(§eJump to Select§f)\n\n§f[ §4§lPlead Guilty §r§f]\n§r§f(§eSneak to Select§f)"}]}

execute as @s[scores={judgetimer=595..}] at @s run scoreboard players set @e[r=45,scores={trial_mode=!0}] trial_mode 0
execute as @s[scores={judgetimer=595..}] at @s run scoreboard players set @e[r=45,scores={selection=!0}] selection 0
execute as @s[scores={judgetimer=595..}] at @s run scoreboard players set @e[r=45,scores={counting=!0}] counting 0
execute as @s[scores={judgetimer=595..}] at @s run scoreboard players set @e[r=45,scores={evidence=!0}] evidence 0



execute as @s[scores={judgetimer=1..575}] at @s if entity @e[tag=on_trial,c=1,scores={counting=0},type=!player,family=!toji,r=50] run scoreboard players random @e[tag=on_trial,c=1,type=!player,family=!toji,r=50] selection 1 15
execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,c=1,scores={detect_jump=1..},r=50] run scoreboard players random @a[scores={detect_jump=1..},tag=on_trial,c=1,r=50] selection 1 15

execute as @s[scores={judgetimer=1..575}] at @s if entity @e[tag=on_trial,c=1,scores={counting=0},type=!player,family=toji,r=50] run scoreboard players  set @e[tag=on_trial,c=1,type=!player,family=toji,r=50] selection 16
execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,c=1,scores={detect_sneak=1..},r=50] run scoreboard players set @a[scores={detect_sneak=1..},tag=on_trial,c=1,r=50] selection 16

execute as @s[scores={judgetimer=1..594},tag=attorney] at @s run scoreboard players set @e[tag=on_trial,c=1,scores={selection=1..},r=50] selection 10
execute as @s[scores={judgetimer=1..594}] at @s run scoreboard players set @e[tag=on_trial,c=1,scores={selection=1..},type=villager,r=50] selection 15

execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=1}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fI plead innocent!"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=2}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fI am not guilty!"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=3}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fI did nothing wrong!"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=4}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fFalse Accusations!"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=5}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fYou're incorrect."}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=6}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fYou fool, you don't have any evidence."}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=7}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fWhere's your evidence!?"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=8}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fWith what evidence?"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=9}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fNah uh."}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=10}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fOBJECTION!"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=10}] run execute as @e[tag=on_trial,c=1,r=50] at @s run particle ds:objection2 ^1^1^1.5
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=10}] run execute as @e[tag=on_trial,c=1,r=50] at @s run playsound mob.objection @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=11}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fWhat the sigma!?"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=12}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fNope."}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=13}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fNo u"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=14}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fB-But.. I'm innocent!"}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=15},type=!villager] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fWomp Womp."}]}
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=15},type=villager] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fYou stupid ni-"}]}


execute as @s[scores={judgetimer=2..3}] at @s run function judgeman/mute

execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,c=1,r=50,scores={selection=16}] run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fI confess..."}]}


execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=1..},type=!player,r=50] run scoreboard players random @e[type=!player,tag=on_trial,c=1,r=50] counting 80 140
scoreboard players remove @e[tag=on_trial,scores={trial_mode=1,counting=1..},type=!player,r=50,c=1] counting 1


execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,scores={detect_jump=1..},r=50] run scoreboard players set @s trial_mode 1
execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,scores={detect_jump=1..},r=50] run scoreboard players set @a[tag=on_trial,scores={detect_jump=1..},c=1,r=50] trial_mode 1
execute if entity @a[tag=on_trial,scores={detect_jump=1..},r=50] run scoreboard players set @s[scores={judgetimer=1..594}] judgetimer 0
execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,scores={detect_jump=1..},r=50] run scoreboard players set @e[r=50,scores={selection=!0}] selection 0

execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,scores={detect_sneak=1..},r=50] run scoreboard players set @s trial_mode 2
execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,scores={detect_sneak=1..},r=50] run scoreboard players set @a[tag=on_trial,scores={detect_sneak=1..},c=1,r=50] trial_mode 2
execute as @s[scores={judgetimer=1..594}] at @s if entity @a[tag=on_trial,scores={detect_sneak=1..},r=50] run scoreboard players set @e[r=50,scores={selection=!0}] selection 0
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={detect_sneak=1..},r=50] run function judgeman/confessed
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={detect_sneak=1..},r=50] run scoreboard players set @s judgetimer 0

execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=1..15},type=!player,r=50] run scoreboard players set @s trial_mode 1
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=1..15},type=!player,r=50] run scoreboard players set @e[tag=on_trial,scores={selection=1..15},type=!player,c=1,r=50] trial_mode 1
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=1..15},type=!player,r=50] run scoreboard players set @s domain 9931
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=1..15},type=!player,r=50] run scoreboard players set @s judgetimer 0

execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=16},type=!player,r=50] run scoreboard players set @s trial_mode 2
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=16},type=!player,r=50] run scoreboard players set @e[tag=on_trial,scores={selection=16},type=!player,c=1,r=50] trial_mode 2
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=16},type=!player,r=50] run function judgeman/confessed
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=16},type=!player,r=50] run scoreboard players set @e[r=50,scores={selection=!0}] selection 0
execute as @s[scores={judgetimer=1..594}] at @s if entity @e[tag=on_trial,scores={selection=16},type=!player,r=50] run scoreboard players set @s judgetimer 0

scoreboard players random @e[tag=on_trial,scores={trial_mode=1,counting=0..1},type=!player,r=50,c=1] selection 1 3

scoreboard players set @s[scores={domain=9900..9924}] domain 9925


scoreboard players set @s[scores={domain=9920..9930,judgetimer=!0}] judgetimer 0

titleraw @s[scores={domain=9900..9930,trial_mode=1,evidence=0},type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§g-[ Defendant Pleaded Innocent ]-\n\n§fSelect your evidence to prove them wrong.\n\n§f[ §7§lRock §r§f]\n§f(§ePunch to Select§f)\n\n§f[ §7§lPaper  §r§f]\n§r§f(§eJump to Select§f)\n\n§f[ §7§lScissors  §r§f]\n§r§f(§eSneak to Select§f)"}]}
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run execute as @e[tag=on_trial,scores={evidence=0},r=50,c=1] at @s if entity @s[type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§g-[ You pleaded Innocent ]-\n\n§fSelect your defense to prove them wrong.\n\n§f[ §7§lRock §r§f]\n§f(§ePunch to Select§f)\n\n§f[ §7§lPaper  §r§f]\n§r§f(§eJump to Select§f)\n\n§f[ §7§lScissors  §r§f]\n§r§f(§eSneak to Select§f)"}]}

execute as @s[scores={domain=9900..9925,trial_mode=1,evidence=0}] at @s run camera @a[r=40,tag=!on_trial] set minecraft:free pos ^ ^1.25 ^2 facing ~~1.25~
execute as @s[scores={domain=9875..9925,trial_mode=1,evidence=1..}] at @s run camera @a[r=40,tag=!on_trial] set minecraft:free pos ^-2 ^3 ^-2 facing @e[tag=on_trial,c=1,r=40]
execute as @s[scores={domain=9900..9925,trial_mode=1,evidence=0}] at @s run camera @a[r=40,tag=on_trial] set minecraft:free pos ^ ^1.25 ^8 facing ^^1.25^10
execute as @s[scores={domain=9875..9925,trial_mode=1}] at @s run camera @a[r=40,tag=on_trial,scores={evidence=1..}] set minecraft:free pos ^2 ^3 ^11 facing @s

execute as @s[scores={domain=9900..9930,trial_mode=1,punch=1..,evidence=0}] at @s run playsound random.orb @a ~~~
execute as @s[scores={domain=9900..9930,trial_mode=1,detect_jump=1..,evidence=0}] at @s run playsound random.orb @a ~~~
execute as @s[scores={domain=9900..9930,trial_mode=1,detect_sneak=1..,evidence=0}] at @s run playsound random.orb @a ~~~
execute as @s[type=!player,scores={domain=9900..9930,trial_mode=1,evidence=0}] at @s run playsound random.orb @a ~~~

scoreboard players random @s[type=!player,scores={domain=9900..9930,trial_mode=1,evidence=0}] evidence 1 3

scoreboard players set @s[scores={domain=9900..9930,trial_mode=1,punch=1..,evidence=0}] evidence 1
scoreboard players set @s[scores={domain=9900..9930,trial_mode=1,detect_jump=1..,evidence=0}] evidence 2
scoreboard players set @s[scores={domain=9900..9930,trial_mode=1,detect_sneak=1..,evidence=0}] evidence 3
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run scoreboard players set @a[scores={punch=1..,evidence=0},r=50,tag=on_trial] evidence 1
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run scoreboard players set @a[scores={detect_jump=1..,evidence=0},r=50,tag=on_trial] evidence 2
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run scoreboard players set @a[scores={detect_sneak=1..,evidence=0},r=50,tag=on_trial] evidence 3

execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run execute as @e[tag=on_trial,scores={selection=1..3,evidence=0,counting=0},type=!player,r=50] at @s run playsound random.orb @a ~~~

execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run scoreboard players set @e[tag=on_trial,scores={selection=1,counting=0,evidence=0},type=!player,r=50] evidence 1
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run scoreboard players set @e[tag=on_trial,scores={selection=2,counting=0,evidence=0},type=!player,r=50] evidence 2
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run scoreboard players set @e[tag=on_trial,scores={selection=3,counting=0,evidence=0},type=!player,r=50] evidence 3

execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run titleraw @a[scores={evidence=1},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§f[ §a§lRock Selected §r§f ]"}]}
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run titleraw @a[scores={evidence=2},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§f[ §a§lPaper Selected §r§f ]"}]}
execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s run titleraw @a[scores={evidence=3},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§f[ §a§lScissors Selected §r§f ]"}]}

execute as @s[scores={domain=9900..9930,trial_mode=1}] at @s if entity @e[tag=on_trial,scores={evidence=1..},r=50] if entity @s[scores={evidence=1..}] run scoreboard players set @s domain 9890
execute as @s[scores={domain=9890,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting."}]}
execute as @s[scores={domain=9889,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting.."}]}
execute as @s[scores={domain=9888,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting..."}]}
execute as @s[scores={domain=9887,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting."}]}
execute as @s[scores={domain=9886,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting.."}]}
execute as @s[scores={domain=9885,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting..."}]}
execute as @s[scores={domain=9884,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting."}]}
execute as @s[scores={domain=9883,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting.."}]}
execute as @s[scores={domain=9882,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting..."}]}
execute as @s[scores={domain=9881,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting."}]}
execute as @s[scores={domain=9879,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting.."}]}
execute as @s[scores={domain=9878,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting..."}]}
execute as @s[scores={domain=9877,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting."}]}
execute as @s[scores={domain=9876,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting.."}]}
execute as @s[scores={domain=9875,trial_mode=1}] at @s run titleraw @a[scores={evidence=1..},r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§fWaiting..."}]}

scoreboard players set @s[scores={domain=9865..9869,trial_mode=1}] domain 9870

#1-1 = 0
#2-2 = 0
#3-3 = 0
#1-3 = 1
#3-1 = 1
#2-1 = 2
#1-2 = 2
#2-3 = 3
#3-2 = 3


execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=1}] if entity @e[c=1,tag=on_trial,scores={evidence=1},r=50] run function judgeman/judge_draw
execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=2}] if entity @e[c=1,tag=on_trial,scores={evidence=2},r=50] run function judgeman/judge_draw
execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=3}] if entity @e[c=1,tag=on_trial,scores={evidence=3},r=50] run function judgeman/judge_draw

execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=1}] if entity @e[c=1,tag=on_trial,scores={evidence=3},r=50] run function judgeman/judge_win
execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=3}] if entity @e[c=1,tag=on_trial,scores={evidence=1},r=50] run function judgeman/judge_lose

execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=2}] if entity @e[c=1,tag=on_trial,scores={evidence=1},r=50] run function judgeman/judge_win
execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=1}] if entity @e[c=1,tag=on_trial,scores={evidence=2},r=50] run function judgeman/judge_lose

execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=2}] if entity @e[c=1,tag=on_trial,scores={evidence=3},r=50] run function judgeman/judge_lose
execute as @s[scores={domain=9865..9870,trial_mode=1}] at @s if entity @s[scores={evidence=3}] if entity @e[c=1,tag=on_trial,scores={evidence=2},r=50] run function judgeman/judge_win



execute as @s[scores={domain=9790..9791}] at @s run playanimation @s animation.judge_evidence
execute as @s[scores={domain=9800..9801},tag=judge_win] at @s run camera @a[r=50] fade time 0.35 0.15 0.15 color 0 0 0

execute as @s[scores={domain=9792},tag=judge_win] at @s run camera @a[r=50] set minecraft:free pos ^^0.6^3.25 facing ~~2~
execute as @s[scores={domain=9785},tag=judge_win] at @s run scoreboard players random @s selection 1 10
event entity @s[scores={domain=9788},tag=judge_win,has_property={property:evidence=!1}] evidence
execute as @s[scores={domain=9784},tag=judge_win] at @s run playsound mob.enderdragon.flap @a[r=50] ^^^-3 99999 0.78 99999
execute as @s[scores={domain=9784,selection=1},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fMy evidence right here disproves your statement, let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=2},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fIt would seem that you're incorrect, let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=3},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fYou dare play innocent!? Let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=4},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fFalse. Let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=5},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fI have the evidence right here, let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=6},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fYou're lying, let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=7},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fNah, let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=8},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fThen what is this right here!? Let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=9},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fYou've been caught red-handed, let us hear it from the Judge!"}]}
execute as @s[scores={domain=9784,selection=10},tag=judge_win] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fThen explain this? Let us hear it from the Judge!"}]}
execute as @s[scores={domain=9783,selection=!0},tag=judge_win] at @s run scoreboard players set @s selection 0

execute as @s[scores={domain=9670},tag=judge_win] at @s run function judgeman/maximum
event entity @s[scores={domain=9000..9670},has_property={property:evidence=1..}] evidence_textureoff


execute as @s[scores={domain=9790..9791},tag=judge_lose] at @s run playanimation @e[tag=on_trial,c=1,r=50] animation.judge_evidence2
execute as @s[scores={domain=9800..9801},tag=judge_lose] at @s run camera @a[r=50] fade time 0.35 0.15 0.15 color 0 0 0

execute as @s[scores={domain=9792},tag=judge_lose] at @s run camera @a[r=50] set minecraft:free pos ^^0.6^6.5 facing ^^2^10
execute as @s[scores={domain=9785},tag=judge_lose] at @s run scoreboard players random @s selection 1 10

execute as @s[scores={domain=9784},tag=judge_lose] at @s run playsound mob.enderdragon.flap @a[r=50] ^^^-3 99999 0.68 99999
execute as @s[scores={domain=9784,selection=1},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fBlah Blah blah..."}]}
execute as @s[scores={domain=9784,selection=2},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fInvalid Evidence!"}]}
execute as @s[scores={domain=9784,selection=3},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fIncorrect Evidence, here let me prove it!"}]}
execute as @s[scores={domain=9784,selection=4},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fFalse."}]}
execute as @s[scores={domain=9784,selection=5},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fYou cant convict me with little evidence!"}]}
execute as @s[scores={domain=9784,selection=6},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fLet's just let the Judge decide, shall we?"}]}
execute as @s[scores={domain=9784,selection=7},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fThis is foolishness."}]}
execute as @s[scores={domain=9784,selection=8},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fYour evidence is lacking!"}]}
execute as @s[scores={domain=9784,selection=9},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fThat's not correct."}]}
execute as @s[scores={domain=9784,selection=10},tag=judge_lose] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@e[tag=on_trial,c=1,r=50]"},{"text": "> §fI'm too sigma to be convicted!"}]}
execute as @s[scores={domain=9783},tag=judge_lose] at @s run scoreboard players set @e[tag=on_trial,c=1,r=50] selection 0

execute as @s[scores={domain=9670},tag=judge_lose] at @s run function judgeman/minimum

execute as @s[scores={judgetimer=1..2}] at @s run function judgeman/median

scoreboard players set @s[scores={domain=9666..9668}] domain 9669

execute as @s[scores={domain=9500}] at @s run camera @a[r=50] fade time 1 0.5 1 color 0 0 0
execute as @s[scores={domain=9490}] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text": "> §fSo Judge, What's your verdict?"}]}
execute as @s[scores={domain=9477}] at @s run camera @a[r=50] set minecraft:free pos ^ ^3 ^1.5 facing ^^5^-4

execute as @s[scores={domain=9476..9475}] at @s unless score twentyfive endurance matches 25 run scoreboard players set twentyfive endurance 25
execute as @s[scores={domain=9476..9475}] at @s unless score two endurance matches 2 run scoreboard players set two endurance 2
execute as @s[scores={domain=9474..9475}] at @s run scoreboard players operation @e[tag=on_trial,c=1,r=50] verdict = @e[tag=on_trial,c=1,r=50] guilty_score

execute as @s[scores={domain=9470},tag=minimum,tag=!maximum,tag=!confessed,tag=!median] at @s run scoreboard players operation @e[tag=on_trial,c=1,r=50] verdict /= two endurance
execute as @s[scores={domain=9470},tag=maximum,tag=!minimum,tag=!confessed,tag=!median] at @s run scoreboard players add @e[tag=on_trial,c=1,r=50] verdict 25
execute as @s[scores={domain=9470},tag=!maximum,tag=!minimum,tag=confessed,tag=!median] at @s run scoreboard players add @e[tag=on_trial,c=1,r=50] verdict 12
execute as @s[scores={domain=9470},tag=!maximum,tag=!minimum,tag=confessed,tag=median] at @s run scoreboard players add @e[tag=on_trial,c=1,r=50] verdict 3

execute as @s[scores={domain=9468}] at @s run tag @e[r=50,tag=confessed] remove confessed
execute as @s[scores={domain=9468}] at @s run tag @e[r=50,tag=minimum] remove minimum
execute as @s[scores={domain=9468}] at @s run tag @e[r=50,tag=median] remove median
execute as @s[scores={domain=9468}] at @s run tag @e[r=50,tag=maximum] remove maximum

execute as @s[scores={domain=9468},tag=!verdict_notguilty] at @s if entity @e[tag=on_trial,scores={verdict=0..24},r=50] run tag @s add verdict_notguilty
execute as @s[scores={domain=9468},tag=!verdict_confiscation] at @s if entity @e[tag=on_trial,scores={verdict=25..49},r=50] run tag @s add verdict_confiscation
execute as @s[scores={domain=9468},tag=!verdict_execution] at @s if entity @e[tag=on_trial,scores={verdict=50..},r=50] run tag @s add verdict_execution

execute as @s[scores={domain=9459..9460},tag=verdict_notguilty] at @s run playanimation @e[type=ds:judgeman,c=1,r=50] animation.judgeman.notguilty
execute as @s[scores={domain=9459..9460},tag=verdict_confiscation] at @s run playanimation @e[type=ds:judgeman,c=1,r=50] animation.judgeman.confiscation
execute as @s[scores={domain=9459..9460},tag=verdict_execution] at @s run playanimation @e[type=ds:judgeman,c=1,r=50] animation.judgeman.execution


execute as @s[scores={domain=9455},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fN"}]}
execute as @s[scores={domain=9454},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNO"}]}
execute as @s[scores={domain=9453},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT"}]}
execute as @s[scores={domain=9452},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT G"}]}
execute as @s[scores={domain=9451},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GU"}]}
execute as @s[scores={domain=9450},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GUI"}]}
execute as @s[scores={domain=9449},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GUIL"}]}
execute as @s[scores={domain=9448},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GUILT"}]}
execute as @s[scores={domain=9447},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GUILTY."}]}
execute as @s[scores={domain=9446},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GUILTY.."}]}
execute as @s[scores={domain=9445},tag=verdict_notguilty] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fNOT GUILTY..."}]}

execute as @s[scores={domain=9435},tag=verdict_notguilty] at @s run scoreboard players set @s domain 9001

execute as @s[scores={domain=9000}] at @s run camera @a[r=50] fade time 0.4 0.25 0.5 color 0 0 0
execute as @s[scores={domain=8986}] at @s run camera @a[r=50] set minecraft:free pos ^ ^1.25 ^2.35 facing ~~1.5~
playanimation @s[scores={domain=8985},tag=verdict_notguilty] animation.judge_ending1
execute as @s[scores={domain=8975},tag=verdict_notguilty] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text":"> Hm.."}]}
execute as @s[scores={domain=8960},tag=verdict_notguilty] at @s run tellraw @a[r=40] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text":"> I guess you're off the hook this time."}]}



execute as @s[scores={domain=9455},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fG"}]}
execute as @s[scores={domain=9454},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fGU"}]}
execute as @s[scores={domain=9453},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fGUI"}]}
execute as @s[scores={domain=9452},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fGUIL"}]}
execute as @s[scores={domain=9451},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fGUILT"}]}
execute as @s[scores={domain=9450},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fGUILTY,"}]}

execute as @s[scores={domain=9430},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fC"}]}
execute as @s[scores={domain=9428},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCO"}]}
execute as @s[scores={domain=9427},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCON"}]}
execute as @s[scores={domain=9426},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONF"}]}
execute as @s[scores={domain=9425},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFI"}]}
execute as @s[scores={domain=9424},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFIS"}]}
execute as @s[scores={domain=9423},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISC"}]}
execute as @s[scores={domain=9422},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCA"}]}
execute as @s[scores={domain=9421},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCAT"}]}
execute as @s[scores={domain=9420},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCATI"}]}
execute as @s[scores={domain=9419},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCATIO"}]}
execute as @s[scores={domain=9418},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCATION."}]}
execute as @s[scores={domain=9417},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCATION.."}]}
execute as @s[scores={domain=9416},tag=verdict_confiscation] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§fCONFISCATION..."}]}

execute as @s[scores={domain=9405},tag=verdict_confiscation] at @s run scoreboard players set @s domain 9001
execute as @s[scores={domain=9000}] at @s run execute as @a[r=50] at @s run playsound music.gavel @s ~~~ 9999 1.1 9999

execute as @s[scores={domain=9000}] at @s run camera @a[r=50] fade time 0.4 0.25 0.5 color 0 0 0
execute as @s[scores={domain=8986}] at @s run camera @a[r=50] set minecraft:free pos ^ ^1.25 ^2.35 facing ~~1.5~
playanimation @s[scores={domain=8985},tag=verdict_confiscation] animation.judge_ending2
execute as @s[scores={domain=8975},tag=verdict_confiscation] at @s run tellraw @a[r=50] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text":"> You fool."}]}
execute as @s[scores={domain=8975},tag=verdict_confiscation] at @s run tellraw @a[r=50,tag=on_trial] {"rawtext": [{"text": "§cYour cursed technique and cursed energy has been confiscated for 2 minutes!"}]}
execute as @s[scores={domain=8700..8985},tag=verdict_confiscation] at @s run scoreboard players set @e[tag=on_trial,r=50] nocts 2400



execute as @s[scores={domain=9455},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4G"}]}
execute as @s[scores={domain=9454},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4GU"}]}
execute as @s[scores={domain=9453},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4GUI"}]}
execute as @s[scores={domain=9452},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4GUIL"}]}
execute as @s[scores={domain=9451},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4GUILT"}]}
execute as @s[scores={domain=9450},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4GUILTY,"}]}

execute as @s[scores={domain=9430},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4D"}]}
execute as @s[scores={domain=9428},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DE"}]}
execute as @s[scores={domain=9427},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEA"}]}
execute as @s[scores={domain=9426},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEAT"}]}
execute as @s[scores={domain=9425},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH"}]}
execute as @s[scores={domain=9424},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH P"}]}
execute as @s[scores={domain=9423},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PE"}]}
execute as @s[scores={domain=9422},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PEN"}]}
execute as @s[scores={domain=9421},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PENA"}]}
execute as @s[scores={domain=9420},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PENAL"}]}
execute as @s[scores={domain=9419},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PENALT"}]}
execute as @s[scores={domain=9418},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PENALTY."}]}
execute as @s[scores={domain=9417},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PENALTY.."}]}
execute as @s[scores={domain=9407..9416},tag=verdict_execution] at @s run titleraw @a[r=40] title {"rawtext":[{"text":"\n\n\n\n§l§4DEATH PENALTY..."}]}
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run camerashake add @a[r=40] 0.05 0.15
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run  playsound mob.wither.ambient @a[r=50] ^^2^-2 99999 0.75 99999
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run  playsound mob.wither.ambient @a[r=50] ^^2^-2 99999 0.45 99999
execute as @s[scores={domain=8055},tag=verdict_execution] at @s run  playsound mob.enderdragon.growl @a[r=50] ^^2^-2 99999 0.45 99999
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run particle ds:divergent_ac5 ^^4^-2
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run particle ds:divergent_ac4 ^^4^-2
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run particle ds:divergent_ac5 ^^4^-2
execute as @s[scores={domain=8005..9453},tag=verdict_execution] at @s run particle ds:divergent_ac4 ^^4^-2

execute as @s[scores={domain=9405},tag=verdict_execution] at @s run scoreboard players set @s domain 9001
execute as @s[scores={domain=9000}] at @s run execute as @a[r=50] at @s run playsound music.gavel @s ~~~ 9999 1.1 9999

execute as @s[scores={domain=9000}] at @s run camera @a[r=50] fade time 0.4 0.25 0.5 color 0 0 0
execute as @s[scores={domain=8986}] at @s run camera @a[r=50] set minecraft:free pos ^ ^1.35 ^2.35 facing ~~1.5~
playanimation @s[scores={domain=8985},tag=verdict_execution] animation.judge_ending3
scoreboard players set @s[scores={domain=8000..},tag=verdict_execution] deathpenaltytimer 6000
clear @s[scores={domain=9000..},hasitem={item=ds:executioners_sword}] ds:executioners_sword
clear @s[scores={domain=8985},tag=verdict_execution,hasitem={item=ds:gavel1}] ds:gavel1
clear @s[scores={domain=8985},tag=verdict_execution,hasitem={item=ds:gavel2}] ds:gavel2
clear @s[scores={domain=8985},tag=verdict_execution,hasitem={item=ds:gavel3}] ds:gavel3
give @s[scores={domain=8985},tag=verdict_execution,type=player] ds:executioners_sword 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[scores={domain=8985},tag=verdict_execution,type=!player] slot.weapon.mainhand 1 ds:executioners_sword 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={domain=8983},tag=verdict_execution] at @s run playsound beacon.power @a[r=100] ^1^1^-1 99999 0.7 99999
execute as @s[scores={domain=8975},tag=verdict_execution] at @s run tellraw @a[r=50] {"rawtext": [{"text": "§f<"},{"selector": "@s"},{"text":"> Truly Despicable."}]}
execute as @s[scores={domain=8975},tag=verdict_execution] at @s run tellraw @a[r=50,tag=on_trial] {"rawtext": [{"text": "§cYour cursed technique and cursed energy has been confiscated for 5 minutes!"}]}
execute as @s[scores={domain=8975},tag=verdict_execution] at @s run tellraw @a[r=50] {"rawtext": [{"text":"§g"},{"selector": "@s"},{"text": " has been granted the §e§l§oSword of Execution§r§g, landing one hit on an enemy sentenced to death will instantly kill them."}]}
execute as @s[scores={domain=8700..8985},tag=verdict_execution] at @s run tag @e[tag=on_trial,r=50,tag=!deathsentence] add deathsentence
execute as @s[scores={domain=8700..8985},tag=verdict_execution] at @s run scoreboard players set @e[tag=on_trial,r=50] nocts 6000



execute as @s[scores={domain=8860..8940}] at @s run camerashake add @a[r=50] 0.25 0.15
execute as @s[scores={domain=8860..8940}] at @s run playsound random.explode @a[r=50] ~~14~ 99999 0.2 99999
execute as @s[scores={domain=8860..8900}] at @s run playsound random.explode @a[r=50] ~~14~ 99999 0.35 99999
execute as @s[scores={domain=8839..8940}] at @s run playsound mob.shock1 @a[r=50] ~~14~ 99999 0.2 99999
execute as @s[scores={domain=8817}] at @s run playsound mob.wither.break_block @a[r=50] ~~14~ 99999 0.5 99999
execute as @s[scores={domain=8827}] at @s run playsound mob.wither.break_block @a[r=50] ~~14~ 99999 0.5 99999
execute as @s[scores={domain=8807}] at @s run playsound mob.wither.break_block @a[r=50] ~~14~ 99999 0.5 99999
execute as @s[scores={domain=8800}] at @s run playsound mob.wither.break_block @a[r=50] ~~14~ 99999 0.5 99999
execute as @s[scores={domain=8837}] at @s run playsound mob.wither.break_block @a[r=50] ~~14~ 99999 0.5 99999
execute as @s[scores={domain=8809..8910}] at @s run playsound mob.shock1 @a[r=50] ~~14~ 99999 0.2 99999
execute as @s[scores={domain=8860..8940}] at @s run particle ds:deadly_sentencing_collapse1
execute as @s[scores={domain=8860..8925}] at @s run particle ds:deadly_sentencing_collapse2

execute as @s[scores={domain=8881}] at @s run camera @a[r=50] fade time 2 1 1 color 255 255 255
execute as @s[scores={domain=8820..8840}] at @s run function judgeman/deadlysentencing_end