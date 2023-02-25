tag @s add ohd.display
summon armor_stand ~ ~ ~ {Tags:["ohd","ohd.display","ohd.new"],Invisible:1b,Marker:1b,NoGravity:1b,CustomNameVisible:1b}
data modify entity @e[type=armor_stand,tag=ohd.new,limit=1] CustomName set from entity @s data.CustomName
tag @e[type=armor_stand,tag=ohd.new,limit=1] remove ohd.new
