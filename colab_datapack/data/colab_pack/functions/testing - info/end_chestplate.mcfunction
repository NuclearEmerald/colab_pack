execute store result score @s cp.cd.0001.t run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute if score @s cp.cd.0001.c < @s cp.cd.0001.t run function colab_pack:item/damage/end_chestplate
scoreboard players operation @s cp.cd.0001.c = @s cp.cd.0001.t