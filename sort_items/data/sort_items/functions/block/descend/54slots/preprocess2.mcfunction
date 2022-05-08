#> sort_items:block/descend/54slots/preprocess2
#@within function sort_items:block/descend/54slots/preprocess1

execute if block ~ ~ ~ #sort_items:containers/27_or_54slots[type=right] run function sort_items:block/descend/54slots
execute if block ~ ~ ~ #sort_items:containers/27_or_54slots[type=left] positioned ^ ^ ^-1 run function sort_items:block/descend/54slots
