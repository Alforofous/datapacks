advancement revoke @s only lotr:right_click
scoreboard players set @s right_click 0

data remove storage lotr:right_clicked_item item_id

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{right_click_enabled:1b}}}}] run data modify storage lotr:right_clicked_item item_id set from entity @s SelectedItem.components."minecraft:custom_data".item_id
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{right_click_enabled:1b}}}]}] run data modify storage lotr:right_clicked_item item_id set from entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".item_id

execute if data storage lotr:right_clicked_item {item_id:"light_staff"} run function lotr:items/right_click/light_staff