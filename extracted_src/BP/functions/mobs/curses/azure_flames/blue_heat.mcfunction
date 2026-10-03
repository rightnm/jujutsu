damage @e[tag=!Frames,r=7.48,family=!purecurse] 2 override entity @e[type=ds:azureflames_curse,c=1,scores={move=27..32}]
damage @e[tag=!Frames,r=7.48,family=!purecurse] 2 override
scoreboard players add @e[tag=!Frames,r=7.48,family=!purecurse] onfire 5
tag @e[tag=!Frames,r=7.48,family=!purecurse,scores={onfire=1..}] add bluefire
scoreboard players add @e[tag=!Frames,r=7.48,family=!purecurse] Evade 2
scoreboard players set @e[tag=!Frames,r=7.48,family=!purecurse] Stun 7
scoreboard players set @e[tag=!Frames,r=7.48,family=!purecurse] Hit 3

event entity @a[r=8,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand}] torch_on

function damages/fire_damage
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 soul_soil [] replace grass
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 fire [] replace double_plant
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 fire [] replace tallgrass
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 fire [] replace red_flower
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 fire [] replace yellow_flower
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace birch_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace spruce_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace acacia_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace mangrove_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace jungle_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace dark_oak_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 basalt [] replace cherry_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 smooth_basalt [] replace planks
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_oak_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_birch_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_spruce_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_acacia_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_mangrove_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_jungle_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_dark_oak_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 polished_basalt [] replace stripped_cherry_log
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air [] replace leaves
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air [] replace leaves2
execute as @p[tag=griefable] run fill ~7 ~7 ~7 ~-7 ~-7 ~-7 air [] replace azalea_leaves

