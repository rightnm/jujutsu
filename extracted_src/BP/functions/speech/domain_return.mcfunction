scoreboard players set @e[r=50,type=ds:rabbitescape] energystat 4
scoreboard players set @e[r=50,type=ds:rabbitescapeboss] energystat 4
scoreboard players set @e[r=50,type=ds:shadowrabbit] energystat 4
scoreboard players set @e[r=50,type=ds:toad] energystat 120
scoreboard players set @e[r=50,type=ds:shadowwolf] energystat 120
scoreboard players set @e[r=50,type=ds:black_wolf] energystat 120
scoreboard players set @e[r=50,type=ds:black_wolfboss] energystat 120
scoreboard players set @e[r=50,type=ds:white_wolf] energystat 200
scoreboard players set @e[r=50,type=ds:white_wolfboss] energystat 200
scoreboard players set @e[r=50,type=ds:totality] energystat 320
scoreboard players set @e[r=50,type=ds:nue] energystat 250
scoreboard players set @e[r=50,type=ds:nueboss] energystat 250
scoreboard players set @e[r=50,type=ds:shadownue] energystat 250
scoreboard players set @e[r=50,type=ds:serpent] energystat 300
scoreboard players set @e[r=50,type=ds:serpentboss] energystat 300
scoreboard players set @e[r=50,type=ds:serpenttrap] energystat 300
scoreboard players set @e[r=50,type=ds:shadowserpent] energystat 300
scoreboard players set @e[r=50,type=ds:oxrush] energystat 400
scoreboard players set @e[r=50,type=ds:piercingox] energystat 400
scoreboard players set @e[r=50,type=ds:shadowox] energystat 400
scoreboard players set @e[r=50,type=ds:rounddeerboss] energystat 600
scoreboard players set @e[r=50,type=ds:rounddeer] energystat 600
scoreboard players set @e[r=50,type=ds:shadowdeer] energystat 600
scoreboard players set @e[r=50,type=ds:maxelephant] energystat 1000
scoreboard players set @e[r=50,type=ds:maxelephant2] energystat 1000
scoreboard players set @e[r=50,type=ds:maxelephantboss] energystat 1000
scoreboard players set @e[r=50,type=ds:shadowelephant] energystat 1000
scoreboard players set @e[r=50,type=ds:agito] energystat 2000
scoreboard players set @e[r=50,type=ds:mahoragaboss] energystat 5000
scoreboard players set @e[r=50,type=ds:mahoragatamed] energystat 5000
scoreboard players set @e[r=50,tag=bagclone] energystat 150
scoreboard players set @e[r=50,type=ds:cursed_doll] energystat 150



execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami,tag=!DomainExpansion,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat > @e[tag=cursed_speaking,r=100,c=1] Energy at @e[tag=cursed_speaking,r=100,c=1] run tellraw @a[tag=cursed_speaking,r=0.25,c=1] {"rawtext":[{"text":"This Shikigami requires "},{"score":{"name":"@s","objective":"energystat"}},{"text":" Cursed Energy to dispell."}]}
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy run scoreboard players set @s Deleter 9
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy run effect @s invisibility 2 1 true
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy at @s run particle ds:dog_combine1
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy at @e[tag=cursed_speaking,r=100,c=1] run scoreboard players operation @a[tag=cursed_speaking,r=0.25,c=1] Energy -= @s energystat
execute as @e[tag=!domainimmune,tag=!Frames,family=shikigami,r=50,scores={energystat=2000..}] unless entity @s[scores={Deleter=1..9}] run scoreboard players add @e[tag=cursed_speaking,r=100,c=1] speech 50

execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,type=ds:mahoragaboss,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat > @e[tag=cursed_speaking,r=100,c=1] Energy at @e[tag=cursed_speaking,r=100,c=1] run tellraw @a[tag=cursed_speaking,r=0.25,c=1] {"rawtext":[{"text":"This Shikigami requires "},{"score":{"name":"@s","objective":"energystat"}},{"text":" Cursed Energy to dispell."}]}
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,type=ds:mahoragaboss,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy run scoreboard players set @s Deleter 9
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,type=ds:mahoragaboss,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy run effect @s invisibility 2 1 true
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,type=ds:mahoragaboss,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy at @s run particle ds:dog_combine1
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,type=ds:mahoragaboss,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy at @e[tag=cursed_speaking,r=100,c=1] run scoreboard players operation @a[tag=cursed_speaking,r=0.25,c=1] Energy -= @s energystat
execute as @e[tag=!domainimmune,tag=!Frames,type=ds:mahoragaboss,r=50,scores={energystat=2000..}] unless entity @s[scores={Deleter=1..9}] run scoreboard players add @e[tag=cursed_speaking,r=100,c=1] speech 50

execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami_other,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat > @e[tag=cursed_speaking,r=100,c=1] Energy at @e[tag=cursed_speaking,r=100,c=1] run tellraw @a[tag=cursed_speaking,r=0.25,c=1] {"rawtext":[{"text":"This Target requires "},{"score":{"name":"@s","objective":"energystat"}},{"text":" Cursed Energy to dispell."}]}
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami_other,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy run scoreboard players set @s Deleter 9
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami_other,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy run effect @s invisibility 2 1 true
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami_other,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy at @s run particle ds:dog_combine1
execute as @e[tag=!speech_adapted,tag=!domainimmune,tag=!Frames,family=shikigami_other,r=50] unless entity @s[scores={Deleter=1..9}] if score @s energystat < @e[tag=cursed_speaking,r=100,c=1] Energy at @e[tag=cursed_speaking,r=100,c=1] run scoreboard players operation @a[tag=cursed_speaking,r=0.25,c=1] Energy -= @s energystat
execute as @e[tag=!domainimmune,tag=!Frames,family=shikigami_other,r=50,scores={energystat=2000..}] unless entity @s[scores={Deleter=1..9}] run scoreboard players add @e[tag=cursed_speaking,r=100,c=1] speech 50




