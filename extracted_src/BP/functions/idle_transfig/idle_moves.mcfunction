clear @s[hasitem={item=ds:idle_transfig_combat1}] ds:idle_transfig_combat2
clear @s[hasitem={item=ds:idle_transfig_combat1}] ds:idle_transfig_combat3
execute as @s[scores={move=1..},tag=form1,tag=idle_transfig] run function idle_transfig/idle1


execute as @s[scores={domainstart=1..},tag=form12,tag=idle_transfig,tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] run function idle_transfig/idle12
execute as @s[scores={domain=1..},tag=idle_transfig,tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] run function idle_transfig/idle_domain


execute as @s[scores={move=1..},tag=wep1m,hasitem={item=ds:idle_transfig_combat1},tag=!instant_body] run function idle_transfig/base_ab1
execute as @s[scores={move=1..},tag=wep2m,hasitem={item=ds:idle_transfig_combat1},tag=!instant_body] run function idle_transfig/base_ab2
execute as @s[scores={move=1..},tag=wep3m,hasitem={item=ds:idle_transfig_combat1},tag=!instant_body] run function idle_transfig/base_ab3
execute as @s[scores={move=1..},tag=wep4m,hasitem={item=ds:idle_transfig_combat1},tag=!instant_body] run function idle_transfig/base_ab4


execute as @s[scores={move=1..},tag=wep1m,hasitem={item=ds:idle_transfig_combat2},tag=!instant_body] run function idle_transfig/blade_ab1
execute as @s[scores={move=1..},tag=wep2m,hasitem={item=ds:idle_transfig_combat2},tag=!instant_body] run function idle_transfig/blade_ab2
execute as @s[scores={move=1..},tag=wep3m,hasitem={item=ds:idle_transfig_combat2},tag=!instant_body] run function idle_transfig/blade_ab3
execute as @s[scores={move=1..},tag=wep4m,hasitem={item=ds:idle_transfig_combat2},tag=!instant_body] run function idle_transfig/blade_ab4


execute as @s[scores={move=1..},tag=wep1m,hasitem={item=ds:idle_transfig_combat3},tag=!instant_body] run function idle_transfig/heavy_ab1
execute as @s[scores={move=1..},tag=wep2m,hasitem={item=ds:idle_transfig_combat3},tag=!instant_body] run function idle_transfig/heavy_ab2
execute as @s[scores={move=1..},tag=wep3m,hasitem={item=ds:idle_transfig_combat3},tag=!instant_body] run function idle_transfig/heavy_ab3
execute as @s[scores={move=1..},tag=wep4m,hasitem={item=ds:idle_transfig_combat3},tag=!instant_body] run function idle_transfig/heavy_ab4


execute as @s[scores={move=1..},tag=wep1m,hasitem={item=ds:instant_body_combat},tag=instant_body] run function idle_transfig/instant_body/ab1
execute as @s[scores={move=1..},tag=wep2m,hasitem={item=ds:instant_body_combat},tag=instant_body] run function idle_transfig/instant_body/ab2
execute as @s[scores={move=1..},tag=wep3m,hasitem={item=ds:instant_body_combat},tag=instant_body] run function idle_transfig/instant_body/ab3
execute as @s[scores={move=1..},tag=wep4m,hasitem={item=ds:instant_body_combat},tag=instant_body] run function idle_transfig/instant_body/ab4
execute as @s[scores={move=1..},tag=wep5m,hasitem={item=ds:instant_body_combat},tag=instant_body] run function idle_transfig/instant_body/ab5
execute as @s[scores={move=1..},tag=wep6m,hasitem={item=ds:instant_body_combat},tag=instant_body] run function idle_transfig/instant_body/ab6


execute as @s[scores={move=1..},tag=form1] run function idle_transfig/soul_ab2
execute as @s[scores={move=1..},tag=form2] run function idle_transfig/soul_ab3

execute as @s[scores={move=1..},tag=form3,tag=!instant_body] run function idle_transfig/body_ab1
execute as @s[scores={move=1..},tag=form4,tag=!instant_body] run function idle_transfig/body_ab2
execute as @s[scores={move=1..},tag=form5,tag=!instant_body] run function idle_transfig/body_ab3
execute as @s[scores={move=1..},tag=form6,tag=!instant_body] run function idle_transfig/body_ab4
execute as @s[scores={move=1..},tag=form7,tag=!instant_body] run function idle_transfig/body_ab5

execute as @s[scores={move=1..},tag=form8] run function idle_transfig/human_ab1
execute as @s[scores={move=1..},tag=form9] run function idle_transfig/human_ab2
execute as @s[scores={move=1..},tag=form10] run function idle_transfig/human_ab3
execute as @s[scores={move=1..},tag=form11] run function idle_transfig/human_ab4
execute as @s[scores={move=1..},tag=form12] run function idle_transfig/human_ab5

execute as @s[scores={domainstart=1..},tag=domain_start] run function idle_transfig/mahito_domain_start
execute as @s[scores={domain=1..},tag=mahito_domain,tag=!sukunadomain1,tag=!sukunadomain2,tag=!sukunadomain3] run function idle_transfig/mahito_domain


execute as @s[scores={domainstart=1..},tag=domain_start2] run function idle_transfig/mahito_domain_start2


execute as @s[scores={cutscene=1..},tag=form12] at @s run function idle_transfig/instant_body_cutscene