summon ds:cursed_egg ~~-0.4~
particle ds:heian_awaken1
particle ds:demons_descent1
particle ds:demons_descent2
particle ds:demons_descent3
particle ds:demons_descent4
playsound mob.wither.spawn @a ~~~ 999999 2 999999
fill ~1~1~1~-1~-1~-1 packed_mud [] replace repeating_command_block
kill @e[name=world_event,c=1,tag=anthill]