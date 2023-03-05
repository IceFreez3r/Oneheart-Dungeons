gamemode spectator @a[gamemode=adventure]
effect clear @a[gamemode=spectator]
clear @a[gamemode=spectator]

function dg:build/stop
# kill all markers and entities from the dungeon
kill @e[type=!player]
# TODO: Second round for item drops necessary?
