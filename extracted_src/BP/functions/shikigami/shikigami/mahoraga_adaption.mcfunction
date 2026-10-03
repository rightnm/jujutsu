tellraw @a[r=200] {"rawtext":[{"text":"§lMahoraga has adapted"}]}

tag @s[tag=adapted_2] add adapted_3
tag @s[tag=adapted_1] add adapted_2
tag @s add adapted_1

execute as @s[family=mahoraga,tag=rct_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Reversed Cursed Technique"}]}
tag @s[family=mahoraga,tag=rct_adapting] add rct_adapted
tag @s[family=mahoraga,tag=rct_adapting] remove rct_adapting

execute as @s[family=mahoraga,tag=blunt_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Blunt-Damage"}]}
tag @s[family=mahoraga,tag=blunt_adapting] add blunt_adapted
tag @s[family=mahoraga,tag=blunt_adapting] remove blunt_adapting

execute as @s[family=mahoraga,tag=fire_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Fire-Damage"}]}
tag @s[family=mahoraga,tag=fire_adapting] add fire_adapted
tag @s[family=mahoraga,tag=fire_adapting] remove fire_adapting

execute as @s[family=mahoraga,tag=deletion_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Hollow Purple"}]}
tag @s[family=mahoraga,tag=deletion_adapting] add deletion_adapted
tag @s[family=mahoraga,tag=deletion_adapting] remove deletion_adapting

execute as @s[family=mahoraga,tag=explosion_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Explosion Damage"}]}
tag @s[family=mahoraga,tag=explosion_adapting] add explosion_adapted
tag @s[family=mahoraga,tag=explosion_adapting] remove explosion_adapting

execute as @s[family=mahoraga,tag=poison_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Poison Damage"}]}
tag @s[family=mahoraga,tag=poison_adapting] add poison_adapted
tag @s[family=mahoraga,tag=poison_adapting] remove poison_adapting

execute as @s[family=mahoraga,tag=pull_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Lapse Blue"}]}
tag @s[family=mahoraga,tag=pull_adapting] add pull_adapted
tag @s[family=mahoraga,tag=pull_adapting] remove pull_adapting

execute as @s[family=mahoraga,tag=cleave_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Cleave Slashes"}]}
tag @s[family=mahoraga,tag=cleave_adapting] add cleave_adapted
tag @s[family=mahoraga,tag=cleave_adapting] remove cleave_adapting

execute as @s[family=mahoraga,tag=slash_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Slash Damage"}]}
tag @s[family=mahoraga,tag=slash_adapting] add slash_adapted
tag @s[family=mahoraga,tag=slash_adapting] remove slash_adapting

execute as @s[family=mahoraga,tag=water_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Water Damage"}]}
tag @s[family=mahoraga,tag=water_adapting] add water_adapted
tag @s[family=mahoraga,tag=water_adapting] remove water_adapting

execute as @s[family=mahoraga,tag=electric_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Electricity/Lightning"}]}
tag @s[family=mahoraga,tag=electric_adapting] add electric_adapted
tag @s[family=mahoraga,tag=electric_adapting] remove electric_adapting

execute as @s[family=mahoraga,tag=energy_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Pure Cursed Energy Damage"}]}
tag @s[family=mahoraga,tag=energy_adapting] add energy_adapted
tag @s[family=mahoraga,tag=energy_adapting] remove energy_adapting

execute as @s[family=mahoraga,tag=speech_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Cursed Speech"}]}
tag @s[family=mahoraga,tag=speech_adapting] add speech_adapted
tag @s[family=mahoraga,tag=speech_adapting] remove speech_adapting

execute as @s[family=mahoraga,tag=sight_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Immobilizing Sight"}]}
tag @s[family=mahoraga,tag=sight_adapting] add sight_adapted
tag @s[family=mahoraga,tag=sight_adapting] remove sight_adapting

execute as @s[family=mahoraga,tag=infinity_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Infinity"}]}
tag @s[family=mahoraga,tag=infinity_adapting] add infinity_adapted
tag @s[family=mahoraga,tag=infinity_adapting] remove infinity_adapting

execute as @s[family=mahoraga,tag=unlimitedvoid_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Unlimited Void Barrier"}]}
tag @s[family=mahoraga,tag=unlimitedvoid_adapting] add unlimitedvoid_adapted
tag @s[family=mahoraga,tag=unlimitedvoid_adapting] remove unlimitedvoid_adapting

execute as @s[family=mahoraga,tag=shadowgarden_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Chimera Shadow Garden"}]}
tag @s[family=mahoraga,tag=shadowgarden_adapting] add shadowgarden_adapted
tag @s[family=mahoraga,tag=shadowgarden_adapting] remove shadowgarden_adapting

execute as @s[family=mahoraga,tag=stormdomain_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Unforgiving Tempest Barrier"}]}
tag @s[family=mahoraga,tag=stormdomain_adapting] add stormdomain_adapted
tag @s[family=mahoraga,tag=stormdomain_adapting] remove stormdomain_adapting

execute as @s[family=mahoraga,tag=jogodomain_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Coffin of the Iron Mountain Barrier"}]}
tag @s[family=mahoraga,tag=jogodomain_adapting] add jogodomain_adapted
tag @s[family=mahoraga,tag=jogodomain_adapting] remove jogodomain_adapting

execute as @s[family=mahoraga,tag=sukunadomain_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Malevolent Shrine Barrier"}]}
tag @s[family=mahoraga,tag=sukunadomain_adapting] add sukunadomain_adapted
tag @s[family=mahoraga,tag=sukunadomain_adapting] remove sukunadomain_adapting

execute as @s[family=mahoraga,tag=soul_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Soul Damage"}]}
scoreboard players set @s[family=mahoraga,tag=soul_adapting,scores={antiheal=1..}] antiheal 0
tag @s[family=mahoraga,tag=soul_adapting] add soul_adapted
tag @s[family=mahoraga,tag=soul_adapting] remove soul_adapting

execute as @s[family=mahoraga,tag=yujidomain_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Shrine of Reverie Barrier"}]}
tag @s[family=mahoraga,tag=yujidomain_adapting] add yujidomain_adapted
tag @s[family=mahoraga,tag=yujidomain_adapting] remove yujidomain_adapting

execute as @s[family=mahoraga,tag=speechdomain_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Resonant Chamber Barrier"}]}
tag @s[family=mahoraga,tag=speechdomain_adapting] add speechdomain_adapted
tag @s[family=mahoraga,tag=speechdomain_adapting] remove speechdomain_adapting

execute as @s[family=mahoraga,tag=perfection_domain_adapting] run tellraw @a[r=200] {"rawtext":[{"text":"§7Self-Embodiment of Perfection Barrier"}]}
tag @s[family=mahoraga,tag=perfection_domain_adapting] add perfection_domain_adapted
tag @s[family=mahoraga,tag=perfection_domain_adapting] remove perfection_domain_adapting

