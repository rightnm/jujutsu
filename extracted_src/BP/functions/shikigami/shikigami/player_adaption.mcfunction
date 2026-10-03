tellraw @s {"rawtext":[{"text":"§lYou have adapted to:"}]}

execute as @s[scores={wheelactive=1..},tag=blunt_adapting] run tellraw @s {"rawtext":[{"text":"§7Blunt-Damage"}]}
tag @s[scores={wheelactive=1..},tag=blunt_adapting] add blunt_adapted
tag @s[scores={wheelactive=1..},tag=blunt_adapting] remove blunt_adapting

execute as @s[scores={wheelactive=1..},tag=fire_adapting] run tellraw @s {"rawtext":[{"text":"§7Fire-Damage"}]}
tag @s[scores={wheelactive=1..},tag=fire_adapting] add fire_adapted
tag @s[scores={wheelactive=1..},tag=fire_adapting] remove fire_adapting

execute as @s[scores={wheelactive=1..},tag=deletion_adapting] run tellraw @s {"rawtext":[{"text":"§7Hollow Purple"}]}
tag @s[scores={wheelactive=1..},tag=deletion_adapting] add deletion_adapted
tag @s[scores={wheelactive=1..},tag=deletion_adapting] remove deletion_adapting

execute as @s[scores={wheelactive=1..},tag=explosion_adapting] run tellraw @s {"rawtext":[{"text":"§7Explosion Damage"}]}
tag @s[scores={wheelactive=1..},tag=explosion_adapting] add explosion_adapted
tag @s[scores={wheelactive=1..},tag=explosion_adapting] remove explosion_adapting

execute as @s[scores={wheelactive=1..},tag=poison_adapting] run tellraw @s {"rawtext":[{"text":"§7Poison Damage"}]}
tag @s[scores={wheelactive=1..},tag=poison_adapting] add poison_adapted
tag @s[scores={wheelactive=1..},tag=poison_adapting] remove poison_adapting

execute as @s[scores={wheelactive=1..},tag=pull_adapting] run tellraw @s {"rawtext":[{"text":"§7Lapse Blue"}]}
tag @s[scores={wheelactive=1..},tag=pull_adapting] add pull_adapted
tag @s[scores={wheelactive=1..},tag=pull_adapting] remove pull_adapting

execute as @s[scores={wheelactive=1..},tag=cleave_adapting] run tellraw @s {"rawtext":[{"text":"§7Cleave Slashes"}]}
tag @s[scores={wheelactive=1..},tag=cleave_adapting] add cleave_adapted
tag @s[scores={wheelactive=1..},tag=cleave_adapting] remove cleave_adapting

execute as @s[scores={wheelactive=1..},tag=slash_adapting] run tellraw @s {"rawtext":[{"text":"§7Slash Damage"}]}
tag @s[scores={wheelactive=1..},tag=slash_adapting] add slash_adapted
tag @s[scores={wheelactive=1..},tag=slash_adapting] remove slash_adapting

execute as @s[scores={wheelactive=1..},tag=water_adapting] run tellraw @s {"rawtext":[{"text":"§7Water Damage"}]}
tag @s[scores={wheelactive=1..},tag=water_adapting] add water_adapted
tag @s[scores={wheelactive=1..},tag=water_adapting] remove water_adapting

execute as @s[scores={wheelactive=1..},tag=electric_adapting] run tellraw @s {"rawtext":[{"text":"§7Electricity/Lightning"}]}
tag @s[scores={wheelactive=1..},tag=electric_adapting] add electric_adapted
tag @s[scores={wheelactive=1..},tag=electric_adapting] remove electric_adapting

execute as @s[scores={wheelactive=1..},tag=energy_adapting] run tellraw @s {"rawtext":[{"text":"§7Pure Cursed Energy Damage"}]}
tag @s[scores={wheelactive=1..},tag=energy_adapting] add energy_adapted
tag @s[scores={wheelactive=1..},tag=energy_adapting] remove energy_adapting

execute as @s[scores={wheelactive=1..},tag=speech_adapting] run tellraw @s {"rawtext":[{"text":"§7Cursed Speech"}]}
tag @s[scores={wheelactive=1..},tag=speech_adapting] add speech_adapted
tag @s[scores={wheelactive=1..},tag=speech_adapting] remove speech_adapting

execute as @s[scores={wheelactive=1..},tag=sight_adapting] run tellraw @s {"rawtext":[{"text":"§7Immobilizing Sight"}]}
tag @s[scores={wheelactive=1..},tag=sight_adapting] add sight_adapted
tag @s[scores={wheelactive=1..},tag=sight_adapting] remove sight_adapting

execute as @s[scores={wheelactive=1..},tag=infinity_adapting] run tellraw @s {"rawtext":[{"text":"§7Infinity"}]}
tag @s[scores={wheelactive=1..},tag=infinity_adapting] add infinity_adapted
tag @s[scores={wheelactive=1..},tag=infinity_adapting] remove infinity_adapting

execute as @s[scores={wheelactive=1..},tag=unlimitedvoid_adapting] run tellraw @s {"rawtext":[{"text":"§7Unlimited Void Barrier"}]}
tag @s[scores={wheelactive=1..},tag=unlimitedvoid_adapting] add unlimitedvoid_adapted
tag @s[scores={wheelactive=1..},tag=unlimitedvoid_adapting] remove unlimitedvoid_adapting

execute as @s[scores={wheelactive=1..},tag=shadowgarden_adapting] run tellraw @s {"rawtext":[{"text":"§7Chimera Shadow Garden"}]}
tag @s[scores={wheelactive=1..},tag=shadowgarden_adapting] add shadowgarden_adapted
tag @s[scores={wheelactive=1..},tag=shadowgarden_adapting] remove shadowgarden_adapting

execute as @s[scores={wheelactive=1..},tag=jogodomain_adapting] run tellraw @s {"rawtext":[{"text":"§7Coffin of the Iron Mountain Barrier"}]}
tag @s[scores={wheelactive=1..},tag=jogodomain_adapting] add jogodomain_adapted
tag @s[scores={wheelactive=1..},tag=jogodomain_adapting] remove jogodomain_adapting

execute as @s[scores={wheelactive=1..},tag=sukunadomain_adapting] run tellraw @s {"rawtext":[{"text":"§7Malevolent Shrine Barrier"}]}
tag @s[scores={wheelactive=1..},tag=sukunadomain_adapting] add sukunadomain_adapted
tag @s[scores={wheelactive=1..},tag=sukunadomain_adapting] remove sukunadomain_adapting

execute as @s[scores={wheelactive=1..},tag=stormdomain_adapting] run tellraw @s {"rawtext":[{"text":"§7Unforgiving Tempest Barrier"}]}
tag @s[scores={wheelactive=1..},tag=stormdomain_adapting] add stormdomain_adapted
tag @s[scores={wheelactive=1..},tag=stormdomain_adapting] remove stormdomain_adapting


execute as @s[scores={wheelactive=1..},tag=soul_adapting] run tellraw @s {"rawtext":[{"text":"§7Soul Damage"}]}
scoreboard players set @s[scores={wheelactive=1..,antiheal=1..},tag=soul_adapting] antiheal 0
tag @s[scores={wheelactive=1..},tag=soul_adapting] add soul_adapted
tag @s[scores={wheelactive=1..},tag=soul_adapting] remove soul_adapting

execute as @s[scores={wheelactive=1..},tag=yujidomain_adapting] run tellraw @s {"rawtext":[{"text":"§7Shrine of Reverie Barrier"}]}
tag @s[scores={wheelactive=1..},tag=yujidomain_adapting] add yujidomain_adapted
tag @s[scores={wheelactive=1..},tag=yujidomain_adapting] remove yujidomain_adapting

execute as @s[scores={wheelactive=1..},tag=speechdomain_adapting] run tellraw @s {"rawtext":[{"text":"§7Resonant Chamber Barrier"}]}
tag @s[scores={wheelactive=1..},tag=speechdomain_adapting] add speechdomain_adapted
tag @s[scores={wheelactive=1..},tag=speechdomain_adapting] remove speechdomain_adapting

tellraw @s {"rawtext":[{"text":"§c- Adaption will last for the next 90 seconds with a 30 second cooldown."}]}