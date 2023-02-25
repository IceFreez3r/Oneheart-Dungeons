gamemode spectator @a[gamemode=adventure]
effect clear @a[gamemode=spectator]
clear @a[gamemode=spectator]
tag @a remove ohd.dead_player

function dg:build/stop
# kill all markers and entities from the dungeon
kill @e[type=!player]
# TODO: Second round for item drops necessary?

