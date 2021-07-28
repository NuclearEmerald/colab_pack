scoreboard players add @s cp.cd.0001.i 1
execute unless score @s cp.cd.0001.i matches 9.. run scoreboard players remove @s cp.cd.0001.t 1
execute if score @s cp.cd.0001.i matches 9.. run scoreboard players set @s cp.cd.0001.i 0
item replace block 2900000 0 2900000 container.0 from entity @s armor.chest
execute store result block 2900000 0 2900000 Items[0].tag.Damage byte 1 run scoreboard players get @s cp.cd.0001.t
item replace entity @s armor.chest from block 2900000 0 2900000 container.0