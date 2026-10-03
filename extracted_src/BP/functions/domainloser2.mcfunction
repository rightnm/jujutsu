tellraw @s {"rawtext":[{"text":"§cYou have forfeited the Domain Clash!"}]}
playanimation @s animation.stunned 
camera @s[type=player] fade time 0.2 0.5 0.2 color 0 0 0
camera @s[type=player] clear
scoreboard players set @s Stun 100
scoreboard players set @s[scores={move=4..}] move 3
scoreboard players set @s[scores={domain=1..}] domain 0
scoreboard players set @s[scores={domainstart=1..}] domainstart 0
scoreboard players set @s[scores={domainactive=1..}] domainactive 0
scoreboard players set @s Move 2
scoreboard players set @s Camera 2
tag @s[tag=form1] remove form1
tag @s[tag=form1b] remove form1b
tag @s[tag=form1c] remove form1c
tag @s[tag=form1d] remove form1d
tag @s[tag=form2] remove form2
tag @s[tag=form2b] remove form2b
tag @s[tag=form2c] remove form2c
tag @s[tag=form2d] remove form2d
tag @s[tag=form3] remove form3
tag @s[tag=form3b] remove form3b
tag @s[tag=form3c] remove form3c
tag @s[tag=form3d] remove form3d
tag @s[tag=form4] remove form4
tag @s[tag=form4b] remove form4b
tag @s[tag=form4c] remove form4c
tag @s[tag=form4d] remove form4d
tag @s[tag=form5] remove form5
tag @s[tag=form5b] remove form5b
tag @s[tag=form5c] remove form5c
tag @s[tag=form5d] remove form5d
tag @s[tag=form6] remove form6
tag @s[tag=form6b] remove form6b
tag @s[tag=form6c] remove form6c
tag @s[tag=form7] remove form7
tag @s[tag=form7b] remove form7b
tag @s[tag=form7c] remove form7c
tag @s[tag=form7d] remove form7d
tag @s[tag=form8] remove form8
tag @s[tag=form8b] remove form8b
tag @s[tag=form8c] remove form8c
tag @s[tag=form8d] remove form8d
tag @s[tag=form9] remove form9
tag @s[tag=form9b] remove form9b
tag @s[tag=form9c] remove form9c
tag @s[tag=form9d] remove form9d
tag @s[tag=form10] remove form10
tag @s[tag=form10b] remove form10b
tag @s[tag=form10c] remove form10c
tag @s[tag=form10d] remove form10d
tag @s[tag=form11] remove form11
tag @s[tag=form11b] remove form11b
tag @s[tag=form11c] remove form11c
tag @s[tag=form11d] remove form11d
tag @s[tag=form12] remove form12
tag @s[tag=form12b] remove form12b
tag @s[tag=form12c] remove form12c
tag @s[tag=form12d] remove form12d
tag @s[tag=sukunadomain] remove sukunadomain
tag @s[tag=sukunadomain1] remove sukunadomain1
tag @s[tag=sukunadomain2] remove sukunadomain2
tag @s[tag=sukunadomain3] remove sukunadomain3
tag @s[tag=sukunadomain4] remove sukunadomain4
tag @s[tag=quickdomain] remove quickdomain
tag @s[tag=domainlayout] remove domainlayout
tag @s[tag=domainstart] remove domainstart
tag @s[tag=domain] remove domain
tag @s[tag=domainactive] remove domainactive