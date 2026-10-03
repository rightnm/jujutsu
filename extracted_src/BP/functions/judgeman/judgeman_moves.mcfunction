execute as @s[scores={move=1..},tag=form1] run function judgeman/judgeman1
execute as @s[scores={move=1..},tag=form2] run function judgeman/judgeman2
execute as @s[scores={move=1..},tag=form3] run function judgeman/judgeman3

execute as @s[scores={domainstart=1..},tag=form4,tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] run function judgeman/deadlysentencing_start
execute as @s[scores={domain=1..},tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] unless entity @e[type=ds:malevolent_shrine1,r=60] unless entity @e[type=ds:malevolent_kitchen,r=60] unless entity @e[type=ds:incomplete_shrine,r=60] run function judgeman/deadlysentencing

execute as @s[tag=gavel1,scores={move=1..},tag=wep1] at @s run function judgeman/gavel1_ab1
execute as @s[tag=gavel1,scores={move=1..},tag=wep2] at @s run function judgeman/gavel1_ab2
execute as @s[tag=gavel1,scores={move=1..},tag=wep3] at @s run function judgeman/gavel1_ab3
execute as @s[tag=gavel1,scores={move=1..},tag=wep4] at @s run function judgeman/gavel1_ab4

execute as @s[tag=gavel2,scores={move=1..},tag=wep1] at @s run function judgeman/gavel2_ab1
execute as @s[tag=gavel2,scores={move=1..},tag=wep2] at @s run function judgeman/gavel2_ab2
execute as @s[tag=gavel2,scores={move=1..},tag=wep3] at @s run function judgeman/gavel2_ab3
execute as @s[tag=gavel2,scores={move=1..},tag=wep4] at @s run function judgeman/gavel2_ab4

execute as @s[tag=gavel3,scores={move=1..},tag=wep1] at @s run function judgeman/gavel3_ab1
execute as @s[tag=gavel3,scores={move=1..},tag=wep2] at @s run function judgeman/gavel3_ab2
execute as @s[tag=gavel3,scores={move=1..},tag=wep3] at @s run function judgeman/gavel3_ab3
execute as @s[tag=gavel3,scores={move=1..},tag=wep4] at @s run function judgeman/gavel3_ab4


execute as @s[scores={move=1..},tag=switch] at @s run function judgeman/gavel_switch



