execute as @s[scores={move=1..},tag=form1] at @s run function speech/ab1
execute as @s[scores={move=1..},tag=form2] at @s run function speech/ab2
execute as @s[scores={move=1..},tag=form3] at @s run function speech/ab3
execute as @s[scores={move=1..},tag=form4] at @s run function speech/ab4
execute as @s[scores={move=1..},tag=form5] at @s run function speech/ab5
execute as @s[scores={move=1..},tag=form6] at @s run function speech/ab6
execute as @s[scores={move=1..},tag=form7] at @s run function speech/ab7
execute as @s[scores={move=1..},tag=form8] at @s run function speech/ab8
execute as @s[scores={move=1..},tag=form9] at @s run function speech/ab9
execute as @s[scores={move=1..},tag=form10] at @s run function speech/ab10
execute as @s[scores={move=1..},tag=form11] at @s run function speech/ab11



execute as @s[scores={domainstart=1..},tag=form12,tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] at @s run function speech/speech_domain_start
execute as @s[scores={domain=1..},tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] at @s unless entity @e[type=ds:malevolent_shrine1,r=60] unless entity @e[type=ds:malevolent_kitchen,r=60] unless entity @e[type=ds:incomplete_shrine,r=60] run function speech/speech_domain