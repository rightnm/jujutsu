
execute as @e[c=1,tag=miracles,scores={detect_health=1..5,endurance=0..10},has_property={property:ct_face=2..}] at @s unless entity @s[scores={Evasive=1..}]  run function small_cts/miracle_save
execute as @e[c=1,tag=miracles,scores={detect_health=1..20,endurance=0..10},has_property={property:ct_face=2..}] at @s unless entity @s[scores={Evasive=1..}] if entity @e[scores={strength=20..,atk=1..},r=10,rm=1] run function small_cts/miracle_save

execute as @e[c=1,tag=miracles,scores={detect_health=1..15,endurance=11..},has_property={property:ct_face=2..}] at @s unless entity @s[scores={Evasive=1..}]  run function small_cts/miracle_save
execute as @e[c=1,tag=miracles,scores={detect_health=1..30,endurance=11..},has_property={property:ct_face=2..}] at @s unless entity @s[scores={Evasive=1..}]  if entity @e[scores={strength=20..,atk=1..},r=10,rm=1] run function small_cts/miracle_save

event entity @e[has_property={property:ct_face=!1},scores={miracles=0},tag=!cursed_speech,family=!inumaki] miracle0
event entity @e[has_property={property:ct_face=!2},scores={miracles=1},tag=!cursed_speech,family=!inumaki] miracle1
event entity @e[has_property={property:ct_face=!3},scores={miracles=2},tag=!cursed_speech,family=!inumaki] miracle2
event entity @e[has_property={property:ct_face=!4},scores={miracles=3},tag=!cursed_speech,family=!inumaki] miracle3
event entity @e[has_property={property:ct_face=!5},scores={miracles=4},tag=!cursed_speech,family=!inumaki] miracle4
event entity @e[has_property={property:ct_face=!6},scores={miracles=5},tag=!cursed_speech,family=!inumaki] miracle5
event entity @e[has_property={property:ct_face=!7},scores={miracles=6},tag=!cursed_speech,family=!inumaki] miracle6
scoreboard players set @e[tag=!miracles,scores={miracles=1..}] miracles -1