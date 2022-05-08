#> sort_items_wrapper_example:block/find
#@within
#  function sort_items_wrapper_example:block/find
#  function sort_items_wrapper_example:block/opened_with_sneaking

execute if block ~ ~ ~ #sort_items:containers run function sort_items_wrapper_example:block/sort
execute unless block ~ ~ ~ #sort_items:containers positioned ^ ^ ^0.1 if entity @s[distance=..6] run function sort_items_wrapper_example:block/find
