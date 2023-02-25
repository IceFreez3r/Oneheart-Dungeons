# Distribute players equally and random across spawn points
# Function is called for every player
# Find spawn points with minimum spawned players
scoreboard players operation .min_spawned_players ohd.spawned_players < @e[type=marker,tag=ohd.spawn] ohd.spawned_players
execute as @e[type=marker,tag=ohd.spawn] if score @s ohd.spawned_players <= .min_spawned_players ohd.spawned_players run tag @s add ohd.spawn_option
# Randomly select one of the spawn points with minimum spawned players
execute as @e[type=marker,tag=ohd.spawn_option,sort=random,limit=1] run tag @s add ohd.selected_spawn
# Teleport player to selected spawn point
execute at @e[type=marker,tag=ohd.selected_spawn] run tp @s ~ ~ ~
execute at @e[type=marker,tag=ohd.selected_spawn] run spawnpoint @s ~ ~ ~
# Increment spawned players for selected spawn point
scoreboard players add @e[type=marker,tag=ohd.selected_spawn] ohd.spawned_players 1
# Remove tags
tag @e[type=marker,tag=ohd.spawn_option] remove ohd.spawn_option
tag @e[type=marker,tag=ohd.selected_spawn] remove ohd.selected_spawn
# Set player gamemode to adventure
gamemode adventure @s
