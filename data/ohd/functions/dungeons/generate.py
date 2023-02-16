# for all .nbt files in ../../structures/ create a function in this directory with the same path
# and name, but with .mcfunction extension
# the function will call the structure with the same name

import os

path = "../../structures/"

# delete all existing names.mcfunction files
for root, dirs, files in os.walk("."):
    for file in files:
        if file == "names.mcfunction":
            new_path = os.path.join(root, file)
            os.remove(new_path)
os.remove("root.mcfunction")
os.remove("deadend.mcfunction")

# add line in names.mcfunction for each level
for dir in os.listdir(path):
    index = dir.split("_")[0]
    with open("names.mcfunction", "a") as f:
        f.write(f"execute if score @s dg.level matches {index} run function ohd:dungeons/{dir}/names\n")
    with open("deadend.mcfunction", "a") as f:
        f.write(f"execute if score .level dg.build matches {index} run function ohd:dungeons/{dir}/deadend\n")

# create mcfunctions for each structure
for root, dirs, files in os.walk(path):
    for file in files:
        if file.startswith("root") and file.endswith(".nbt"):
            with open("root.mcfunction", "a") as f:
                level = root.split("/")[-1]
                index = level.split("_")[0]
                room = file.replace(".nbt", "")
                f.write(f"execute if score .level dg.build matches {index} run tag @e[type=marker,tag=dg.active,nbt={{data:{{CustomName:'{{\"text\":\"{level}/{room}\"}}'}}}}] add dg.room.choice\n")
        if file.endswith(".nbt"):
            new_path = os.path.join(root, file)
            new_path = new_path.replace(path, "")
            level = new_path.split("/")[0]
            new_path = new_path.replace(".nbt", ".mcfunction")
            function = new_path.replace(".mcfunction", "")
            # create directory if it doesn't exist
            os.makedirs(os.path.dirname(new_path), exist_ok=True)
            with open(new_path, "w") as f:
                f.write(f"execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 0 run place template ohd:{function} ~ ~ ~ none none\n")
                f.write(f"execute if score .rotation dg.build matches 0 if score .mirror dg.build matches 1 run place template ohd:{function} ~ ~ ~ none left_right\n")
                f.write(f"execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 0 run place template ohd:{function} ~ ~ ~ clockwise_90 none\n")
                f.write(f"execute if score .rotation dg.build matches 90 if score .mirror dg.build matches 1 run place template ohd:{function} ~ ~ ~ clockwise_90 left_right\n")
                f.write(f"execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 0 run place template ohd:{function} ~ ~ ~ 180 none\n")
                f.write(f"execute if score .rotation dg.build matches 180 if score .mirror dg.build matches 1 run place template ohd:{function} ~ ~ ~ 180 left_right\n")
                f.write(f"execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 0 run place template ohd:{function} ~ ~ ~ counterclockwise_90 none\n")
                f.write(f"execute if score .rotation dg.build matches 270 if score .mirror dg.build matches 1 run place template ohd:{function} ~ ~ ~ counterclockwise_90 left_right\n")
            with open(f"{level}/names.mcfunction", "a") as f:
                f.write(f"execute if entity @s[nbt={{data:{{CustomName:'{{\"text\":\"{function}\"}}'}}}}] run function ohd:dungeons/{function}\n")
