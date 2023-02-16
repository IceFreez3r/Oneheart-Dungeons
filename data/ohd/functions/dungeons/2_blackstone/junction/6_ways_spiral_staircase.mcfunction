execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 0 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ none none
execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 1 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ none left_right
execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 0 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ clockwise_90 none
execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 1 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ clockwise_90 left_right
execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 0 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ 180 none
execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 1 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ 180 left_right
execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 0 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ counterclockwise_90 none
execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 1 run place template ohd:2_blackstone/junction/6_ways_spiral_staircase ~ ~ ~ counterclockwise_90 left_right
