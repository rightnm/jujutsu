particle ds:flashstep1
particle ds:flashstep2 
execute as @e[family=!special_grade,family=!grade1,r=20,family=human,tag=!purecurse,c=1] at @s run tp @e[type=ds:mahito,scores={human_soul_counter=0..5}] ^^^-1
execute as @e[family=!special_grade,family=!grade1,r=20,family=human,tag=!purecurse,c=1] at @s run function idle_transfig/transfigure_touched1
particle ds:flashstep1
particle ds:flashstep2 