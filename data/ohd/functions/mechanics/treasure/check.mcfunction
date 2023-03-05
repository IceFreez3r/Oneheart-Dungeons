# compare coordinates
execute store result score .x_item ohd.treasure run data get entity @s Item.tag.LodestonePos.X
execute store result score .y_item ohd.treasure run data get entity @s Item.tag.LodestonePos.Y
execute store result score .z_item ohd.treasure run data get entity @s Item.tag.LodestonePos.Z
execute store result score .x_marker ohd.treasure run data get entity @e[type=marker,tag=ohd.treasure_linked,sort=nearest,limit=1] Pos[0]
execute store result score .y_marker ohd.treasure run data get entity @e[type=marker,tag=ohd.treasure_linked,sort=nearest,limit=1] Pos[1]
execute store result score .z_marker ohd.treasure run data get entity @e[type=marker,tag=ohd.treasure_linked,sort=nearest,limit=1] Pos[2]

execute if score .x_item ohd.treasure = .x_marker ohd.treasure if score .y_item ohd.treasure = .y_marker ohd.treasure if score .z_item ohd.treasure = .z_marker ohd.treasure run tag @s add ohd.treasure_found
execute if entity @s[tag=ohd.treasure_found] as @e[type=marker,tag=ohd.treasure_linked,sort=nearest,limit=1] at @s run function ohd:mechanics/treasure/found
tag @s[tag=!ohd.treasure_found] add ohd.treasure_check_failed
