#> sort_items:block/descend/54slots/preprocess1
#@within function sort_items:block/descend/

execute if block ~ ~ ~ #sort_items:containers/54slots[facing=south] rotated -90 0 run function sort_items:block/descend/54slots/preprocess2
execute if block ~ ~ ~ #sort_items:containers/54slots[facing=west] rotated 0 0 run function sort_items:block/descend/54slots/preprocess2
execute if block ~ ~ ~ #sort_items:containers/54slots[facing=north] rotated 90 0 run function sort_items:block/descend/54slots/preprocess2
execute if block ~ ~ ~ #sort_items:containers/54slots[facing=east] rotated 180 0 run function sort_items:block/descend/54slots/preprocess2
