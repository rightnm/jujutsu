execute as @s[scores={move=1..},tag=form1] run function lovetrain/lovetrain1
execute as @s[scores={move=1..},tag=form1b] run function lovetrain/lovetrain1b
execute as @s[scores={move=1..},tag=form1c] run function lovetrain/lovetrain1c
execute as @s[scores={move=1..},tag=form2] run function lovetrain/lovetrain2
execute as @s[scores={move=1..},tag=form2b] run function lovetrain/lovetrain2b
execute as @s[scores={move=1..},tag=form2c] run function lovetrain/lovetrain2c
execute as @s[scores={move=1..},tag=form3] run function lovetrain/lovetrain3
execute as @s[scores={move=1..},tag=form3b] run function lovetrain/lovetrain3b
execute as @s[scores={move=1..},tag=form3c] run function lovetrain/lovetrain3c
execute as @s[scores={move=1..},tag=form4] run function lovetrain/lovetrain4

execute as @s[scores={domainstart=1..},tag=form5,tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] run function lovetrain/idledeathgamble
execute as @s[scores={domain=1..},tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] run function lovetrain/idledeathgamble2

execute as @s[scores={cutscene=1..},tag=hakaridance] run function lovetrain/hakari_dance

execute as @s[scores={move=1..},tag=wep1,tag=lovetrainfists] run function lovetrain/lucky_fist
execute as @s[scores={move=1..},tag=wep2,tag=lovetrainfists] run function lovetrain/fever_combo
execute as @s[scores={move=1..},tag=wep3,tag=lovetrainfists] run function lovetrain/devastating_blow
execute as @s[scores={move=1..},tag=wep4,tag=lovetrainfists] run function lovetrain/brutal_barrage

