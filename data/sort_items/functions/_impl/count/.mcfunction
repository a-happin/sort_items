#> sort_items:_impl/count/
#@within
#  function sort_items:**

execute store result score $count _sort_items run data get storage : _[-1].Items[-1].Count
execute store result score $updated _sort_items run data remove storage : _[-1].Items[-1].Count

execute if data storage : _[-1].list[-1] run function sort_items:_impl/count/loop
execute if score $updated _sort_items matches 1 unless data storage : _[-1].list[-1] run function sort_items:_impl/count/not_found

data remove storage : _[-1].Items[-1]
data remove storage : _[-1].max_stack_sizes[-1]

execute if data storage : _[-1].Items[-1] run function sort_items:_impl/count/
