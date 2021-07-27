

# test
execute as @e[type=item] if data entity @s Item{id:"minecraft:netherite_chestplate"} run tag @s add craft.chestplate.netherite_chestplate
execute as @e[type=item] if data entity @s Item{id:"minecraft:diamond"} run tag @s add craft.chestplate.diamond
execute at @e[type=item,tag=craft.chestplate.netherite_chestplate] as @e[type=item,tag=craft.chestplate.diamond,distance=..1] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16575353},CustomModelData:1}}}
execute at @e[type=item,tag=craft.chestplate.netherite_chestplate] as @e[type=item,tag=craft.chestplate.diamond,distance=..1] run tag @e[sort=nearest,limit=1] add mark.kill
execute at @e[type=item,tag=craft.chestplate.netherite_chestplate] as @e[type=item,tag=craft.chestplate.diamond,distance=..1] run tag @s add mark.kill
kill @e[tag=mark.kill]

execute as @a if data entity @s Inventory[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{color:16575353},CustomModelData:1}}] run function colab_pack:item/end_chestplate
