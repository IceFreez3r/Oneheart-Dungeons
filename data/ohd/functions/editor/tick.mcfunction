# show/hide names of markers
execute as @e[type=marker,tag=ohd,tag=!ohd.display] at @s if entity @a[gamemode=creative,distance=..5] run function ohd:editor/show
execute as @e[type=marker,tag=ohd,tag=ohd.display] at @s unless entity @a[gamemode=creative,distance=..5] run function ohd:editor/hide
execute as @e[type=armor_stand,tag=ohd,tag=ohd.display] at @s unless entity @a[gamemode=creative,distance=..5] run function ohd:editor/hide
