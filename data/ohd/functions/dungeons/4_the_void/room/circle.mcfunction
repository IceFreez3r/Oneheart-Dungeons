execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 0 run place template ohd:4_the_void/room/circle ~ ~ ~ none none
execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 1 run place template ohd:4_the_void/room/circle ~ ~ ~ none left_right
execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 0 run place template ohd:4_the_void/room/circle ~ ~ ~ clockwise_90 none
execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 1 run place template ohd:4_the_void/room/circle ~ ~ ~ clockwise_90 left_right
execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 0 run place template ohd:4_the_void/room/circle ~ ~ ~ 180 none
execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 1 run place template ohd:4_the_void/room/circle ~ ~ ~ 180 left_right
execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 0 run place template ohd:4_the_void/room/circle ~ ~ ~ counterclockwise_90 none
execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 1 run place template ohd:4_the_void/room/circle ~ ~ ~ counterclockwise_90 left_right
