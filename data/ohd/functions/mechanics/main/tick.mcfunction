execute as @a[scores={ohd.died=1..}] run function ohd:mechanics/main/death/switch
execute as @a[tag=ohd.dead_player,gamemode=spectator] run function ohd:mechanics/main/death/tick

execute unless entity @a[tag=!ohd.dead_player] run function ohd:mechanics/main/stop
execute unless entity @a[tag=!ohd.dead_player] run function ohd:mechanics/main/start

function ohd:mechanics/treasure/tick
