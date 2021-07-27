execute store result score @s cp.cd.0001.t run data get entity @s Inventory[{Slot:102b}].tag.Damage
execute if score @s cp.cd.0001.c > @s cp.cd.0001.t run scoreboard players add @s cp.cd.0001.i 1
execute unless score @s cp.cd.0001.i matches 9.. run scoreboard players add @s cp.cd.0001.t 1
execute if score @s cp.cd.0001.i matches 9.. run scoreboard players set @s cp.cd.0001.i 0
item replace block 2900000 0 2900000 0 from entity @s armor.chest