#> sort_items:block/no_sort/
#@public

execute if block ~ ~ ~ #sort_items:containers/27_or_54slots unless block ~ ~ ~ #sort_items:containers/27_or_54slots[single=true] run function sort_items:block/no_sort/54slots/preprocess1
execute if predicate sort_items:block/27slots run function sort_items:block/no_sort/27slots
execute if block ~ ~ ~ #sort_items:containers/9slots run function sort_items:block/no_sort/9slots
execute if block ~ ~ ~ #sort_items:containers/5slots run function sort_items:block/no_sort/5slots
