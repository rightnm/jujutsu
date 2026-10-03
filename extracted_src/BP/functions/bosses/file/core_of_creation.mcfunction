camera @s fade time 0 0 1 color 255 255 255
particle ds:shard_make1 ~~1~
particle ds:shard_make2 ~~1~
particle ds:shard_make3 ~~1~
camerashake add @s 4 0.15 rotational
playsound mob.wither.spawn @a ~~~ 1 2

scoreboard players random @s chance 0 100

tag @s[scores={chance=0..50}] add relic
tag @s[scores={chance=51..80}] add special
tag @s[scores={chance=81..94}] add unique
tag @s[scores={chance=95..99}] add divine
tag @s[scores={chance=100}] add omega


give @s[name=ButterJaffa_Troy] ds:butter_plushie

clear @s[name=ButterJaffa_Troy] ds:butter_blade
give @s[name=ButterJaffa_Troy] ds:butter_blade
clear @s[name=ButterJaffa3452] ds:butter_blade
give @s[name=ButterJaffa3452] ds:butter_blade


scoreboard players random @s[tag=relic] chance 1 7
give @s[scores={chance=1},tag=relic] ds:strange_vile
give @s[scores={chance=2},tag=relic] ds:cursed_eye
give @s[scores={chance=3},tag=relic] ds:dread_bell
give @s[scores={chance=4},tag=relic] ds:sukuna_finger
give @s[scores={chance=5},tag=relic] ds:kamutoke
give @s[scores={chance=6},tag=relic] ds:hiten
give @s[scores={chance=7},tag=relic] ds:reset_ticket
tellraw @s[tag=relic] {"rawtext":[{"text":"§fYou got a §eRelic Item!"}]}


scoreboard players random @s[tag=special] chance 1 7
tellraw @s[tag=special] {"rawtext":[{"text":"§fYou got a §dSpecial Item!"}]}
give @s[scores={chance=1},tag=special] ds:crescendo
give @s[scores={chance=2},tag=special] ds:legacy_scythe
give @s[scores={chance=3},tag=special] ds:frog_cero
give @s[scores={chance=4},tag=special] ds:birch_tree
give @s[scores={chance=5},tag=special] ds:butter_blade
give @s[scores={chance=6},tag=special] ds:deathhorn
give @s[scores={chance=7},tag=special] ds:rodofdiscord


scoreboard players random @s[tag=unique] chance 1 5
tellraw @s[tag=unique] {"rawtext":[{"text":"§fYou got a §cUnique Item!"}]}
give @s[scores={chance=1},tag=unique] ds:void_katana
give @s[scores={chance=2},tag=unique] ds:water_fists
give @s[scores={chance=3},tag=unique] ds:devastator
give @s[scores={chance=4},tag=unique] ds:explode_staff
give @s[scores={chance=5},tag=unique] ds:dackmug


scoreboard players random @s[tag=divine] chance 1 4
tellraw @s[tag=divine] {"rawtext":[{"text":"§fYou got a §4DIVINE Item!"}]}
give @s[scores={chance=1},tag=divine] ds:the_shard
give @s[scores={chance=2},tag=divine] ds:atomic_sword
give @s[scores={chance=3},tag=divine] ds:equinox_scythe
give @s[scores={chance=4},tag=divine] ds:equinox_blade

tellraw @s[tag=omega] {"rawtext":[{"text":"§fYou got the §l§aOMEGA §o§8DEATH §r§l§aSCYTHE!"}]}
give @s[tag=omega] ds:omega_scythe


scoreboard players random @s chance 1 100
scoreboard players random @s[scores={chance=47..99}] chance 1 38
give @s[scores={chance=1}] ds:heroic_plushie 
give @s[scores={chance=2}] ds:frogdog_plushie 
give @s[scores={chance=3}] ds:glitch_plushie 
give @s[scores={chance=4}] ds:butter_plushie 
give @s[scores={chance=5}] ds:magroic_plushie 
give @s[scores={chance=6}] ds:frogdog_plushie 
give @s[scores={chance=7}] ds:xero_plushie 
give @s[scores={chance=8}] ds:soulking_plushie 
give @s[scores={chance=9}] ds:lemon_plushie 
give @s[scores={chance=10}] ds:toji_plushie 
give @s[scores={chance=11}] ds:heian_sukuna_plushie 
give @s[scores={chance=12}] ds:geto_plushie 
give @s[scores={chance=13}] ds:gojo_plushie
give @s[scores={chance=14}] ds:uzkownik_plushie  
give @s[scores={chance=15}] ds:heroic_plushie2
give @s[scores={chance=16}] ds:chosso_plushie
give @s[scores={chance=17}] ds:tobi_plushie
give @s[scores={chance=18}] ds:yuji_plushie
give @s[scores={chance=19}] ds:manga_yuji_plushie
give @s[scores={chance=20}] ds:yuta_plushie
give @s[scores={chance=21}] ds:danser_plushie
give @s[scores={chance=22}] ds:kashimo_plushie
give @s[scores={chance=23}] ds:meguma_plushie
give @s[scores={chance=24}] ds:nanami_plushie
give @s[scores={chance=25}] ds:arox_plushie
give @s[scores={chance=26}] ds:d4rius_plushie
give @s[scores={chance=27}] ds:neuro_plushie
give @s[scores={chance=28}] ds:bdayseal_plushie
give @s[scores={chance=29}] ds:sukuna_plushie
give @s[scores={chance=30}] ds:higuruma_plushie
give @s[scores={chance=31}] ds:maki_plushie
give @s[scores={chance=32}] ds:yuki_plushie
give @s[scores={chance=33}] ds:uraume_plushie
give @s[scores={chance=34}] ds:mei_plushie
give @s[scores={chance=35}] ds:kenjaku_plushie
give @s[scores={chance=36}] ds:mahito_plushie
give @s[scores={chance=37}] ds:nobara_plushie
give @s[scores={chance=38}] ds:epicae_plushie
give @s[scores={chance=39..46}] ds:heroic_plushie 

give @s[scores={chance=100}] ds:heroic_plushie




tellraw @s {"rawtext":[{"text":"§eYou got a random plushie!"}]}

tag @s remove relic
tag @s remove special
tag @s remove unique
tag @s remove divine
tag @s remove omega
scoreboard players set @s chance 0
clear @s ds:core_of_creation 0 1