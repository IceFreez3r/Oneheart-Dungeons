execute as @a[scores={ohd.life_saver=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ohdLifeSaverPrepared:1}}}] run function ohd:mechanics/life_saver/activate
execute as @a[scores={ohd.life_saver=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ohdLifeSaverPrepared:0}}}] at @s run function ohd:mechanics/life_saver/prepare
scoreboard players set @a ohd.life_saver 0

execute at @e[type=marker,tag=ohd.life_saver.checkpoint] run function ohd:mechanics/life_saver/particles
