execute as @a[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,Sneaking=1..}] at @s run function shikigami/shikigami_clear

tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=1,forms=0,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=1,forms=1..,Sneaking=0}] run clear @s ds:shikigami1
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=1,forms=1..,Sneaking=0}] run give @s ds:shikigami1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=1,forms=1..,Sneaking=0}] run playsound random.orb @a ~~~

tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=2,forms=0..1,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=2,forms=2..,Sneaking=0}] run clear @s ds:shikigami2
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=2,forms=2..,Sneaking=0}] run give @s ds:shikigami2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=2,forms=2..,Sneaking=0}] run playsound random.orb @a ~~~

tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=3,forms=0..2,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=3,forms=3..,Sneaking=0}] run clear @s ds:shikigami3
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=3,forms=3..,Sneaking=0}] run give @s ds:shikigami3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=3,forms=3..,Sneaking=0}] run playsound random.orb @a ~~~

tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=4,forms=0..3,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=4,forms=4..,Sneaking=0}] run clear @s ds:shikigami4
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=4,forms=4..,Sneaking=0}] run give @s ds:shikigami4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=4,forms=4..,Sneaking=0}] run playsound random.orb @a ~~~

tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=5,forms=0..4,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=5,forms=5..,Sneaking=0}] run clear @s ds:shikigami5
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=5,forms=5..,Sneaking=0}] run give @s ds:shikigami5 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=5,forms=5..,Sneaking=0}] run playsound random.orb @a ~~~


tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=6,forms=0..5,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=6,forms=6..,Sneaking=0}] run clear @s ds:shikigami6
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=6,forms=6..,Sneaking=0}] run give @s ds:shikigami6 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=6,forms=6..,Sneaking=0}] run playsound random.orb @a ~~~

tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=7,forms=0..6,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=7,forms=7..,Sneaking=0}] run clear @s ds:shikigami7
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=7,forms=7..,Sneaking=0}] run give @s ds:shikigami7 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=7,forms=7..,Sneaking=0}] run playsound random.orb @a ~~~


tellraw @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=8,forms=0..7,Sneaking=0}] {"rawtext":[{"text":"§cYou have not unlocked this Shikigami Yet.\n\n§7- To unlock this Shikigami, sneak+click with the 10 Shadows Technique Item\n§aRequires 10 Invest Points per Shikigami to unlock"}]}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=8,forms=8..,Sneaking=0}] run clear @s ds:shikigami8
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=8,forms=8..,Sneaking=0}] run give @s ds:shikigami8 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[hasitem={item=ds:shadow_wheel,location=slot.weapon.mainhand},scores={punch=1,scroll=8,forms=8..,Sneaking=0}] run playsound random.orb @a ~~~
