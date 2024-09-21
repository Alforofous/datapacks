scoreboard players add @a[scores={right_click=0..}] right_click 1
execute as @a[scores={right_click=2}] run function lotr:right_click_release
scoreboard players reset @a[scores={right_click=2..}] right_click