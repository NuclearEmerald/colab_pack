# Scoreboards

## main processing scoreboard
scoreboard objectives add cp_main dummy

## forceload chunk
forceload add 2900000 2900000
setblock 2900000 0 29000000 chest

## testing trigger
scoreboard objectives add test trigger

## Custom durability scoreboards
# c - current
# t - temp
# i - increment
# end chestplate - 0001

scoreboard objectives add cp.cd.0001.c dummy
scoreboard objectives add cp.cd.0001.t dummy
scoreboard objectives add cp.cd.0001.i dummy


# init message
schedule function colab_pack:init 1s