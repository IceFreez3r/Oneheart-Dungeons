summon marker ~ ~ ~ {Tags:["ohd", "ohd.life_saver.checkpoint", "ohd.new"],data:{CustomName:'{"text":"Life Saver"}'}}
# copy rotation of the player
tp @e[type=marker,tag=ohd.life_saver.checkpoint,tag=ohd.new,limit=1] @s
# generate random id
scoreboard players set %in1 math 0
scoreboard players set %in2 math 2147483647
function math:lcg
# store in the the spawned marker and in the item
scoreboard players operation @e[type=marker,tag=ohd.life_saver.checkpoint,tag=ohd.new] ohd.life_saver_id = %out math
tag @e[type=marker,tag=ohd.new] remove ohd.new
execute store result storage ohd life_saver_id int 1 run scoreboard players get %out math
item modify entity @s weapon.mainhand ohd:life_saver
