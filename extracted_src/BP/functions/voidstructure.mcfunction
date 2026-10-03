execute unless entity @e[type=ds:void_reactor] unless score secretquest Mode = one Mode run tickingarea remove voidtower
execute unless entity @e[type=ds:void_reactor] unless score secretquest Mode = one Mode run tickingarea add ~70 ~ ~70 ~-70 ~ ~-70 void_obelisk
execute unless entity @e[type=ds:void_reactor] run particle ds:voidspawn
execute unless entity @e[type=ds:void_reactor] unless score secretquest Mode = one Mode run setblock ~~~ ds:void
execute unless entity @e[type=ds:void_reactor] unless score secretquest Mode = one Mode run summon ds:void_eye 
execute unless entity @e[type=ds:void_reactor,r=200] unless score secretquest Mode = one Mode run summon ds:void_reactor ~~1~ 
