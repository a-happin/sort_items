#> sort_items:block/no_sort/54slots/preprocess1
#@within function sort_items:block/no_sort/

execute if block ~ ~ ~ #sort_items:containers/27_or_54slots[facing=south] rotated -90 0 run function sort_items:block/no_sort/54slots/preprocess2
execute if block ~ ~ ~ #sort_items:containers/27_or_54slots[facing=west] rotated 0 0 run function sort_items:block/no_sort/54slots/preprocess2
execute if block ~ ~ ~ #sort_items:containers/27_or_54slots[facing=north] rotated 90 0 run function sort_items:block/no_sort/54slots/preprocess2
execute if block ~ ~ ~ #sort_items:containers/27_or_54slots[facing=east] rotated 180 0 run function sort_items:block/no_sort/54slots/preprocess2
