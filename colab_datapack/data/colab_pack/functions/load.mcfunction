# Scoreboards

## main processing scoreboard
scoreboard objectives add cp_main dummy

## forceload chunk
forceload add 2900000 2900000
setblock 2900000 0 2900000 chest
setblock 2900000 1 2900000 bedrock

## testing trigger
scoreboard objectives add test trigger

## Custom durability scoreboards
# c - current
# t - temp
# i - increment

### test
scoreboard objectives add cp.cd.0001.c dummy
scoreboard objectives add cp.cd.0001.t dummy
scoreboard objectives add cp.cd.0001.i dummy

## NBT crafting scoreboards

scoreboard objectives add cp.open_crafting custom:interact_with_crafting_table

# bc - base count
# bca - base count all
# c - count
# ca - count all

# minecraft:netherite_scrap
scoreboard objectives add cp.c.ensc.bc dummy
scoreboard objectives add cp.c.ensc.bca dummy

scoreboard objectives add cp.c.ensc.c dummy
scoreboard objectives add cp.c.ensc.ca dummy


# init message
schedule function colab_pack:init 1s
