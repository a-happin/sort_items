#> sort_items:block/ascend/54slots/preprocess2
#@within function sort_items:block/ascend/54slots/preprocess1

execute if block ~ ~ ~ #sort_items:containers/54slots[type=right] run function sort_items:block/ascend/54slots
execute if block ~ ~ ~ #sort_items:containers/54slots[type=left] positioned ^ ^ ^-1 run function sort_items:block/ascend/54slots