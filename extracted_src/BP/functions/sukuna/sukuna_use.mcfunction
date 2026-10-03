
tellraw @s[tag=!has_sukuna] {"rawtext":[{"text":"§4You need to consume Ryomen Sukuna's fingers in order to gain this."}]}
playsound note.pling @s[tag=!has_sukuna] ~~~ 0.2 0.5
function sukuna/sukuna_scores
scoreboard objectives add sukunaperm dummy
scoreboard players add @s sukunaperm 0
scoreboard objectives add sukunamode dummy
scoreboard players add @s sukunamode 0

execute as @s[scores={Stun=0,Disabled2=0,sukunaCD=1..,Sneaking=0,sukunaperm=0},tag=has_sukuna,tag=!sukuna] at @s run function sukuna/sukuna_cantswitch

tag @s[scores={sukunaCD=0,sukunacutscene=0,Stun=0,Disabled2=0,Sneaking=0,finger=1..5,sukunaperm=0},tag=has_sukuna,tag=!sukuna] add sukuna_mode
scoreboard players set @s[scores={Stun=0,Disabled2=0,sukunaCD=0,Sneaking=0,finger=1..5,sukunaperm=0},tag=has_sukuna,tag=!sukuna] sukunacutscene 91
scoreboard players set @s[scores={Stun=0,Disabled2=0,sukunaCD=0,Sneaking=0,finger=1..5,sukunaperm=0},tag=has_sukuna,tag=!sukuna] sukunaCD 16000

tag @s[scores={sukunaCD=0,sukunacutscene=0,Stun=0,Disabled2=0,Sneaking=0,finger=6..14,sukunaperm=0},tag=has_sukuna,tag=!sukuna] add sukuna_mode2
scoreboard players set @s[scores={Stun=0,Disabled2=0,sukunaCD=0,Sneaking=0,finger=6..14,sukunaperm=0},tag=has_sukuna,tag=!sukuna] sukunacutscene 51
scoreboard players set @s[scores={Stun=0,Disabled2=0,sukunaCD=0,Sneaking=0,finger=6..14,sukunaperm=0},tag=has_sukuna,tag=!sukuna] sukunaCD 16000

execute as @s[scores={Sneaking=1..},hasitem={item=ds:sukuna1,quantity=0},tag=has_sukuna,tag=sukuna] at @s run function sukuna/grant_skills
execute as @s[scores={Sneaking=1..},hasitem={item=ds:sukuna1},tag=has_sukuna,tag=sukuna] at @s run function sukuna/sukuna_clear

tellraw @s[tag=sukuna,scores={sukunamode=1..}] {"rawtext":[{"text":"§o§cWhat am I doing?"}]}



