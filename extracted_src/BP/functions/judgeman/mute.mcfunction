tag @e[tag=the_judge,c=1,r=50] add median
tag @e[r=50,tag=judge_win] remove judge_win
tag @e[r=50,tag=judge_lose] remove judge_lose
tag @e[r=50,tag=judge_draw] remove judge_draw
tellraw @a[r=50] {"rawtext":[{"text":"§l§gThe defendant didnt say anything..."}]}
scoreboard players set @e[tag=the_judge,c=1,r=50] judgetimer 0
scoreboard players set @e[tag=the_judge,c=1,r=50] domain 9501