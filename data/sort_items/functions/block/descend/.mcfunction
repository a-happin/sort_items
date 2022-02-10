#> sort_items:block/descend/
#@public

execute if block ~ ~ ~ #sort_items:containers/54slots unless block ~ ~ ~ #sort_items:containers/54slots[single=true] run function sort_items:block/descend/up_to_54slots/preprocess1
execute if block ~ ~ ~ #sort_items:containers/54slots[type=single] run function sort_items:block/descend/up_to_27slots
execute if block ~ ~ ~ #sort_items:containers/27slots unless block ~ ~ ~ #sort_items:containers/54slots run function sort_items:block/descend/up_to_27slots
execute if block ~ ~ ~ #sort_items:containers/9slots run function sort_items:block/descend/up_to_9slots
execute if block ~ ~ ~ #sort_items:containers/5slots run function sort_items:block/descend/up_to_5slots
