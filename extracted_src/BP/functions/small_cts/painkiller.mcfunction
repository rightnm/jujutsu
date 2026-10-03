execute as @p[tag=itemUse:ds:painkiller1] at @s run function small_cts/painkiller_use


execute as @a[scores={move=1..},tag=form1,tag=painkiller] at @s run function small_cts/painkiller_self
execute as @a[scores={move=1..},tag=form2,tag=painkiller] at @s run function small_cts/painkiller_other



execute as @e[scores={painkiller=1..}] at @s run function painkiller
