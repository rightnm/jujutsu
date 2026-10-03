scoreboard objectives add strangevile dummy
scoreboard players add @s strangevile 0
camera @s[scores={strangevile=0..1}] fade time 0 1 0.5 color 0 0 0
playsound random.drink @s[scores={strangevile=0..1}] ~~~ 1 0.7
clear @s[scores={strangevile=0..1}] ds:strange_vile 0 1
scoreboard players set @s[scores={strangevile=2..}] chance 0
scoreboard players random @s[scores={strangevile=0..1}] chance 1 100
tellraw @s[scores={strangevile=2..}] {"rawtext":[{"text":"§4Your body won't let you drink anymore of these."}]} 



#50% (50%)
execute as @s[scores={chance=1..50}] at @s run scoreboard players random @s common 1 5
execute as @s[scores={chance=1..50}] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={chance=1..50}] at @s run scoreboard players set @s rare 0
execute as @s[scores={chance=1..50}] at @s run scoreboard players set @s exotic 0
execute as @s[scores={chance=1..50}] at @s run scoreboard players set @s honored 0
#25% (75%)
execute as @s[scores={chance=51..76}] at @s run scoreboard players random @s uncommon 1 5
execute as @s[scores={chance=51..76}] at @s run scoreboard players set @s common 0
execute as @s[scores={chance=51..76}] at @s run scoreboard players set @s rare 0
execute as @s[scores={chance=51..76}] at @s run scoreboard players set @s exotic 0
execute as @s[scores={chance=51..76}] at @s run scoreboard players set @s honored 0
#15% (90%)
execute as @s[scores={chance=77..92}] at @s run scoreboard players random @s rare 1 8
execute as @s[scores={chance=77..92}] at @s run scoreboard players set @s common 0
execute as @s[scores={chance=77..92}] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={chance=77..92}] at @s run scoreboard players set @s exotic 0
execute as @s[scores={chance=77..92}] at @s run scoreboard players set @s honored 0
#6% (99%)
execute as @s[scores={chance=93..99}] at @s run scoreboard players random @s exotic 1 3
execute as @s[scores={chance=93..99}] at @s run scoreboard players set @s common 0
execute as @s[scores={chance=93..99}] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={chance=93..99}] at @s run scoreboard players set @s rare 0
execute as @s[scores={chance=93..99}] at @s run scoreboard players set @s honored 0
#1% (100%)
execute as @s[scores={chance=100},tag=gojo] at @s run scoreboard players set @s honored 1
execute as @s[scores={chance=100},tag=!gojo] at @s run scoreboard players set @s exotic 3
execute as @s[scores={chance=100}] at @s run scoreboard players set @s common 0
execute as @s[scores={chance=100}] at @s run scoreboard players set @s uncommon 0
execute as @s[scores={chance=100}] at @s run scoreboard players set @s rare 0
execute as @s[scores={chance=100}] at @s run scoreboard players set @s exotic 0

#common
tellraw @s[scores={common=1}] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Enhanced Strength trait...\n§r§g- Increases Strength by 5"}]}
tellraw @s[scores={common=2}] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Quick Feet trait...\n§r§g- Increases Agility by 5"}]}
tellraw @s[scores={common=3}] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Faster Energy Charge trait...\n§r§g- You regain Cursed Energy faster while charging"}]}
tellraw @s[scores={common=4}] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] no trait...\n§r§g- lol you're unlucky that sucks, sounds like a skill issue to be honest"}]}
tellraw @s[scores={common=5}] {"rawtext":[{"text":"§r§fYou now have the §l§7[Common] Alley Cat trait...\n§r§g- Upon entering combat, gain a speed boost"}]}

#uncommon
tellraw @s[scores={uncommon=1}] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Self Proclaimed 530,000 IQ trait...\n§r§g- You think fast in battle, granting your evasive faster upon taking damage"}]}
tellraw @s[scores={uncommon=2}] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Tactical Intellect trait...\n§r§g- Your tactical battle skills allow you to land more precise critical hits / black-flashes"}]}
tellraw @s[scores={uncommon=3}] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Exoskeleton...\n§r§g- Your bones are more durable than the average person's, granting you resistance to damage."}]}
tellraw @s[scores={uncommon=4}] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Satiated by Cursed Energy trait...\n§r§g- You no longer need to eat as you feed on the cursed energy around you."}]}
tellraw @s[scores={uncommon=5}] {"rawtext":[{"text":"§r§fYou now have the §l§2[Uncommon] Lone Wolf trait...\n§r§g- You are a lone wolf devoid of any teamwork, you gain more EXP alone but less EXP when players are around."}]}

#rare
tellraw @s[scores={rare=1}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Rough Cursed Energy trait...\n§r§g- Your Cursed Energy seems to have a rough/hard texture, all melee attacks that are imbued with your rough cursed energy, amplify the blow, dealing more damage"}]}
tellraw @s[scores={rare=2}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] 'Blessed Strength' trait...\n§r§g- You were just born much stronger than most but you don't seem to know why or how, Increases Strength by 12, Increases Agility by 12."}]}
tellraw @s[scores={rare=3}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Reverse Cursed Technique Master trait...\n§r§g- You specialise with Reverse Cursed Technique, allowing you to automatically gain RCT and spread that healing to heal others while Sneaking. RCT also costs less Cursed Energy. "}]}
tellraw @s[scores={rare=4}] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] The Progidy trait...\n§r§g- Everything in your life seems easy, its almost as if you were born as a progidy, you gain x2 Invest Points per level"}]}
tellraw @s[scores={rare=5}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] The Restless Gambler trait...\n§r§g- You take gambles all the time because of your insane luck, increased 'luck'."}]}
tellraw @s[scores={rare=6}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Heavenly Restriction : Boundless Energy trait...\n§r§g- Your body is restricted to be fragile and weak, however your cursed energy is boundless and flourishing!"}]}
tellraw @s[scores={rare=7}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Undying Will trait...\n§r§g- You never give up without a fight, when below 10% HP gain large buffs to your stats."}]}
tellraw @s[scores={rare=8}] {"rawtext":[{"text":"§r§fYou now have the §l§3[Rare] Insanity trait...\n§r§g- You're a twisted person with no sense of caution, when below 20% HP take less stun and gain buffs to your stats for 30 seconds. (Has a 5 minute cooldown)"}]}

#exotic
tellraw @s[scores={exotic=1}] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] Heavenly Restriction : Unmeasured Strength trait...\n§r§g- In exchange for restricting your Cursed Energy, you are granted an insanely strong body capable of doing the impossible"}]}
tellraw @s[scores={exotic=2}] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] 120% of Your Potential trait...\n§r§g- You're not like the rest, you're capable of reaching 120% of your full potential, allowing you to increase your stats 20% more than the limit..."}]}
tellraw @s[scores={exotic=3}] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] Delusional Idol Fan trait...\n§r§g- You seem to imagine yourself fighting alongside your favourite idol, you're either delusional, you have schizophrenia or you're just on drugs"}]}
tellraw @s[scores={exotic=4}] {"rawtext":[{"text":"§r§fYou now have the §l§5[Exotic] Prince of Black Sparks trait...\n§r§g- You're basically just Itadori Yuji..."}]}

#honored
tellraw @s[scores={honored=1}] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- The Six Eyes trait...\n§r§g- Passed down by the Gojo Clan, this is a very rare thenomena that can only occur in the same person once, the Six Eyes allow the user to see the world beyond the sight of others, you are granted insane control over cursed energy making your potential, limitless..."}]}
tellraw @s[scores={honored=2}] {"rawtext":[{"text":"§r§fYou now have the §l§b§o-[Honored]- nothing trait...\n§r§g- nothing"}]}

#common
tag @s[scores={common=1}] add enhancedstr
tag @s[scores={common=2}] add enhancedagi
tag @s[scores={common=3}] add fasterce
tag @s[scores={common=5}] add alleycat

#uncommon
tag @s[scores={uncommon=1}] add 530kiq
tag @s[scores={uncommon=2}] add tacticaliq
tag @s[scores={uncommon=3}] add exoskeleton
tag @s[scores={uncommon=4}] add satiated
tag @s[scores={uncommon=5}] add lonewolf

#rare
tag @s[scores={rare=1}] add roughce
tag @s[scores={rare=2}] add blessedstrength
tag @s[scores={rare=3}] add rctmaster
tag @s[scores={rare=3}] add reversecursed
tag @s[scores={rare=4}] add progidy
tag @s[scores={rare=5}] add gambler
tag @s[scores={rare=6}] add heavenlyrestriction_mechimaru
scoreboard players set @s[scores={rare=6}] EnergyCap 4000
scoreboard players set @s[scores={rare=6}] Energy 4000
tag @s[scores={rare=7}] add undying
tag @s[scores={rare=8}] add insanity

tag @s[scores={exotic=1}] add 120percent
tag @s[scores={exotic=2}] add delusional
execute as @s[scores={exotic=2}] at @s run function cheats/give_delusional_trait
give @s[scores={exotic=4}] ds:yuji_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tag @s[scores={honored=1},tag=gojo] add sixeyes



scoreboard players add @s[tag=enhancedstr,tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=0..49}] damageinsurance 1
scoreboard players add @s[tag=enhancedstr,tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=0..59}] damageinsurance 1
scoreboard players add @s[tag=enhancedstr,tag=heavenlyrestriction_mechimaru,scores={strength=0..19}] damageinsurance 1
scoreboard players add @s[tag=enhancedstr,tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=0..49}] damageadd 1
scoreboard players add @s[tag=enhancedstr,tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=0..59}] damageadd 1
scoreboard players add @s[tag=enhancedstr,tag=heavenlyrestriction_mechimaru,scores={strength=0..19}] damageadd 1
scoreboard players set @s[tag=enhancedstr,scores={strength=46..49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength 50
scoreboard players add @s[tag=enhancedstr,scores={strength=0..45},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength 5
scoreboard players set @s[tag=enhancedstr,scores={strength=56..59},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength 60
scoreboard players add @s[tag=enhancedstr,scores={strength=0..55},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength 5
scoreboard players set @s[tag=enhancedstr,scores={strength=16..19},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength 20
scoreboard players add @s[tag=enhancedstr,scores={strength=0..15},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength 5
scoreboard players set @s[tag=enhancedstr,scores={strength=20..23},tag=120percent,tag=heavenlyrestriction_mechimaru] strength 24
scoreboard players add @s[tag=enhancedstr,scores={strength=0..19},tag=120percent,tag=heavenlyrestriction_mechimaru] strength 5


scoreboard players set @s[tag=enhancedagi,scores={agility=46..49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] agility 50
scoreboard players add @s[tag=enhancedagi,scores={agility=0..45},tag=!120percent,tag=!heavenlyrestriction_mechimaru] agility 5
scoreboard players set @s[tag=enhancedagi,scores={agility=56..59},tag=120percent,tag=!heavenlyrestriction_mechimaru] agility 60
scoreboard players add @s[tag=enhancedagi,scores={agility=0..55},tag=120percent,tag=!heavenlyrestriction_mechimaru] agility 5
scoreboard players set @s[tag=enhancedagi,scores={agility=16..19},tag=!120percent,tag=heavenlyrestriction_mechimaru] agility 20
scoreboard players add @s[tag=enhancedagi,scores={agility=0..15},tag=!120percent,tag=heavenlyrestriction_mechimaru] agility 5
scoreboard players set @s[tag=enhancedagi,scores={agility=20..23},tag=120percent,tag=heavenlyrestriction_mechimaru] agility 24
scoreboard players add @s[tag=enhancedagi,scores={agility=0..19},tag=120percent,tag=heavenlyrestriction_mechimaru] agility 5


scoreboard players set @s[tag=blessedstrength,scores={strength=39..49,damageinsurance=0..9},tag=!120percent,tag=!heavenlyrestriction_mechimaru] damageinsurance 10
scoreboard players set @s[tag=blessedstrength,scores={strength=39..49,damageadd=0..9},tag=!120percent,tag=!heavenlyrestriction_mechimaru] damageadd 10
scoreboard players add @s[tag=blessedstrength,scores={strength=0..38},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength2 12
scoreboard players set @s[tag=blessedstrength,scores={strength=49..59,damageinsurance=0..11},tag=120percent,tag=!heavenlyrestriction_mechimaru] damageinsurance 12
scoreboard players set @s[tag=blessedstrength,scores={strength=49..59,damageadd=0..11},tag=120percent,tag=!heavenlyrestriction_mechimaru] damageadd 12
scoreboard players add @s[tag=blessedstrength,scores={strength=0..48},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength2 12
scoreboard players set @s[tag=blessedstrength,scores={strength=9..19,damageinsurance=0..3},tag=!120percent,tag=heavenlyrestriction_mechimaru] damageinsurance 4
scoreboard players set @s[tag=blessedstrength,scores={strength=9..19,damageadd=0..3},tag=!120percent,tag=heavenlyrestriction_mechimaru] damageadd 4
scoreboard players add @s[tag=blessedstrength,scores={strength=0..8},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength2 12
scoreboard players set @s[tag=blessedstrength,scores={strength=13..23,damageinsurance=0..3},tag=120percent,tag=heavenlyrestriction_mechimaru] damageinsurance 4
scoreboard players set @s[tag=blessedstrength,scores={strength=13..23,damageadd=0..3},tag=120percent,tag=heavenlyrestriction_mechimaru] damageadd 4
scoreboard players add @s[tag=blessedstrength,scores={strength=0..12},tag=120percent,tag=heavenlyrestriction_mechimaru] strength2 12

execute as @s[tag=blessedstrength] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageinsurance 1
execute as @s[tag=blessedstrength] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageadd 1
execute as @s[tag=blessedstrength] at @s run scoreboard players remove @s[scores={strength2=5..,strength=0..59}] strength2 5
execute as @s[tag=blessedstrength] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageinsurance 1
execute as @s[tag=blessedstrength] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageadd 1
execute as @s[tag=blessedstrength] at @s run scoreboard players remove @s[scores={strength2=5..,strength=0..59}] strength2 5
execute as @s[tag=blessedstrength] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageinsurance 1
execute as @s[tag=blessedstrength] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageadd 1
execute as @s[tag=blessedstrength] at @s run scoreboard players remove @s[scores={strength2=5..,strength=0..59}] strength2 5

scoreboard players set @s[tag=blessedstrength,scores={strength=39..49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength 50
scoreboard players add @s[tag=blessedstrength,scores={strength=0..38},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength 12
scoreboard players set @s[tag=blessedstrength,scores={strength=49..59},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength 60
scoreboard players add @s[tag=blessedstrength,scores={strength=0..48},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength 12
scoreboard players set @s[tag=blessedstrength,scores={strength=9..19},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength 20
scoreboard players add @s[tag=blessedstrength,scores={strength=0..8},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength 12
scoreboard players set @s[tag=blessedstrength,scores={strength=13..23},tag=120percent,tag=heavenlyrestriction_mechimaru] strength 24
scoreboard players add @s[tag=blessedstrength,scores={strength=0..12},tag=120percent,tag=heavenlyrestriction_mechimaru] strength 12
scoreboard players set @s[tag=blessedstrength,scores={agility=39..49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] agility 50
scoreboard players add @s[tag=blessedstrength,scores={agility=0..38},tag=!120percent,tag=!heavenlyrestriction_mechimaru] agility 12
scoreboard players set @s[tag=blessedstrength,scores={agility=49..59},tag=120percent,tag=!heavenlyrestriction_mechimaru] agility 60
scoreboard players add @s[tag=blessedstrength,scores={agility=0..48},tag=120percent,tag=!heavenlyrestriction_mechimaru] agility 12
scoreboard players set @s[tag=blessedstrength,scores={agility=9..19},tag=!120percent,tag=heavenlyrestriction_mechimaru] agility 20
scoreboard players add @s[tag=blessedstrength,scores={agility=0..8},tag=!120percent,tag=heavenlyrestriction_mechimaru] agility 12
scoreboard players set @s[tag=blessedstrength,scores={agility=13..23},tag=120percent,tag=heavenlyrestriction_mechimaru] agility 24
scoreboard players add @s[tag=blessedstrength,scores={agility=0..12},tag=120percent,tag=heavenlyrestriction_mechimaru] agility 12



scoreboard players set @s[scores={strength=50},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength2 0
scoreboard players set @s[scores={strength=60},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength2 0
scoreboard players set @s[scores={strength=20},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength2 0

tag @s[tag=enhancedstr] remove enhancedstr
tag @s[tag=enhancedagi] remove enhancedagi
tag @s[tag=blessedstrength] remove blessedstrength

scoreboard players set @s chance 0
scoreboard players set @s common 0
scoreboard players set @s uncommon 0
scoreboard players set @s rare 0
scoreboard players set @s exotic 0
scoreboard players set @s honored 0

scoreboard players add @s[scores={strangevile=0..1}] strangevile 1