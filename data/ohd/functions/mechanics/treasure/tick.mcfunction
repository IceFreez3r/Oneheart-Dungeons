execute as @e[type=item,tag=!ohd.no_treasure,nbt=!{Item:{tag:{ohdTreasureCompass:0}}}] run tag @s add ohd.no_treasure
execute as @e[type=item,tag=!ohd.no_treasure,tag=!ohd.treasure_check_failed] at @s if entity @e[type=marker,tag=ohd.treasure_linked,distance=..1] run function ohd:mechanics/treasure/check

execute as @e[type=marker,tag=ohd.treasure,tag=ohd.active,tag=!ohd.treasure_linked,sort=random] run function ohd:mechanics/treasure/find_link
