scoreboard objectives add ohd.died deathCount
scoreboard objectives add ohd.life_saver used:carrot_on_a_stick
scoreboard objectives add ohd.life_saver_id dummy
scoreboard objectives add ohd.spawned_players dummy
scoreboard objectives add ohd.treasure dummy

tellraw @a[gamemode=creative] {"text":"Reload of datapack \"Oneheart Dungeon\" done!"}
