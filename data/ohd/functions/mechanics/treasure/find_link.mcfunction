# find players with unlinked treasure compass and link it to the position of the executing marker
tag @r[nbt={SelectedItem:{id:"minecraft:compass",tag:{ohdTreasureCompass:1}}}] add ohd.treasure_link_target
execute if entity @a[tag=ohd.treasure_link_target] store result storage ohd TreasurePos.X int 1 run data get entity @s Pos[0]
execute if entity @a[tag=ohd.treasure_link_target] store result storage ohd TreasurePos.Y int 1 run data get entity @s Pos[1]
execute if entity @a[tag=ohd.treasure_link_target] store result storage ohd TreasurePos.Z int 1 run data get entity @s Pos[2]
execute if entity @a[tag=ohd.treasure_link_target] run tag @s add ohd.treasure_linked
execute as @a[tag=ohd.treasure_link_target] run function ohd:mechanics/treasure/form_link
