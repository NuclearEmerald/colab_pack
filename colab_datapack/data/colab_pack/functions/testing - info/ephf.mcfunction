execute as @a if entity @s[nbt={Inventory:[{Slot:100b,tag:{display:{color:13985667}}},{Slot:101b,tag:{display:{color:13985667}}},{Slot:102b,tag:{display:{color:13985667}}},{Slot:103b,tag:{display:{color:13985667}}}]}] run tag @s add ephf_full_armor
execute as @a unless entity @s[nbt={Inventory:[{Slot:100b,tag:{display:{color:13985667}}},{Slot:101b,tag:{display:{color:13985667}}},{Slot:102b,tag:{display:{color:13985667}}},{Slot:103b,tag:{display:{color:13985667}}}]}] run tag @s remove ephf_full_armor
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run tag @s add stealth
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run item replace block 2900000 0 2900000 container.0 with polished_blackstone_button
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Helmet merge from entity @s Inventory[{Slot:103b}]
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Helmet merge value {Slot:0b}
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Chestplate merge from entity @s Inventory[{Slot:102b}]
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Chestplate merge value {Slot:1b}
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Leggings merge from entity @s Inventory[{Slot:101b}]
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Leggings merge value {Slot:2b}
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Boots merge from entity @s Inventory[{Slot:100b}]
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}].tag.Boots merge value {Slot:3b}
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run item replace entity @s armor.head from block 2900000 0 2900000 container.0
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run item replace entity @s armor.chest with air
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run item replace entity @s armor.legs with air
execute as @a if entity @s[tag=ephf_full_armor, predicate=colab_pack:is_sneaking] run item replace entity @s armor.feet with air
execute as @a if entity @s[tag=stealth] run effect give @s invisibility 1 0 true
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:0b}] set from entity @s Inventory[{Slot:103b}].tag.Helmet
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:1b}] merge from entity @s Inventory[{Slot:103b}].tag.Chestplate
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:2b}] merge from entity @s Inventory[{Slot:103b}].tag.Leggings
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run data modify block 2900000 0 2900000 Items[{Slot:3b}] merge from entity @s Inventory[{Slot:103b}].tag.Boots
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run item replace entity @s armor.head from block 2900000 0 2900000 container.0
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run item replace entity @s armor.chest from block 2900000 0 2900000 container.1
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run item replace entity @s armor.legs from block 2900000 0 2900000 container.2
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run item replace entity @s armor.feet from block 2900000 0 2900000 container.3
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run effect clear @s invisibility
execute as @a if entity @s[tag=stealth, predicate=!colab_pack:is_sneaking] run tag @s remove stealth