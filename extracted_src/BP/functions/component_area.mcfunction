particle ds:componentaura1
execute as @p[r=20,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..}] run camera @a[r=25] fade time 0 1 0.5 color 0 0 0
execute as @p[r=20,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..}] run playsound mob.wither.spawn @a ~~~ 9999 0.5 9999
execute as @p[r=20,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..}] run playsound mob.burn @a ~~~ 9999 1.25 9999
execute as @p[r=20,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..}] run playsound mob.blaze.shoot @a ~~~ 9999 0.5 9999
execute as @p[r=20,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..}] run summon ds:void_servant ~~3~
execute as @p[r=20,hasitem={item=ds:mysterious_torch,location=slot.weapon.mainhand},has_property={property:torch_light=1..}] run event entity @s torch_off



