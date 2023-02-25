tag @e[type=marker,tag=ohd,tag=!ohd.active] add ohd.new
scoreboard players operation @e[type=marker,tag=ohd.new] dg.run = .current dg.run
tag @e[type=marker,tag=ohd.new] add ohd.active
tag @e[type=marker,tag=ohd.new] remove ohd.new
