tag @e[type=!item,name=ImaginaryP,tag=!GojoProj] add GojoProj
tag @e[type=!item,name=ImaginaryPTRG,tag=!GojoProj] add GojoProj
tag @s[name=ImagineRed,tag=!GojoProj] add GojoProj
tag @s[name=ImagineBlue,tag=!GojoProj] add GojoProj
tag @e[type=!item,name=ImagineTRG,tag=!GojoProj] add GojoProj


playanimation @s[name=ImagineBlue] animation.imaginary_blue
playanimation @s[name=ImagineRed] animation.imaginary_red


execute as @s[name=ImagineBlue] at @s run tp @s ~~~ facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineRed] at @s run tp @s ~~~ facing @e[type=!item,name=ImagineTRG,c=1]

execute as @s[name=ImagineBlue,scores={Deleter=1..4}] at @s run tp @s ~~-60~
execute as @s[name=ImagineRed,scores={Deleter=1..4}] at @s run tp @s ~~-60~



execute as @s[name=ImagineRed,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineRed,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineRed,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineRed,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]

execute as @s[name=ImagineBlue,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineBlue,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineBlue,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]
execute as @s[name=ImagineBlue,scores={Deleter=1..}] at @s run tp @s ^^^0.111 facing @e[type=!item,name=ImagineTRG,c=1]