# get id of activated life saver
execute store result score @s ohd.life_saver_id run data get entity @s SelectedItem.tag.ohd.life_saver_id
# compare to all checkpoints
execute at @s as @e[type=marker,tag=ohd.life_saver.checkpoint] if score @s ohd.life_saver_id = @p ohd.life_saver_id run tag @s add ohd.life_saver.selected
# tp player to checkpoint, keep player rotation
tp @s @e[type=marker,tag=ohd.life_saver.selected,limit=1]
# remove checkpoint
kill @e[type=marker,tag=ohd.life_saver.selected,limit=1]
# remove item
item replace entity @s weapon.mainhand with air
# give effects to player
effect give @s minecraft:regeneration 5 0
effect give @s minecraft:absorption 5 0
effect give @s minecraft:resistance 5 0
effect give @s minecraft:fire_resistance 5 0
effect give @s minecraft:slow_falling 5 0
