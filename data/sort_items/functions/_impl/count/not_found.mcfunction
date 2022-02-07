#> sort_items:_impl/count/not_found
#@within function sort_items:_impl/count/

## count_list.append (Items[-1])
data modify storage : _[-1].list append value {}
data modify storage : _[-1].list[-1].Item set from storage : _[-1].Items[-1]

## count_list[-1].Count = count
execute store result storage : _[-1].list[-1].Count int 1 run scoreboard players get $count _sort_items
