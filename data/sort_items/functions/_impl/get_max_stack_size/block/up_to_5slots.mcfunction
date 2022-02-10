#> sort_items:_impl/get_max_stack_size/block/up_to_5slots
#@within function sort_items:block/*/up_to_5slots

item modify block ~ ~ ~ container.0 sort_items:set_count_max
item modify block ~ ~ ~ container.1 sort_items:set_count_max
item modify block ~ ~ ~ container.2 sort_items:set_count_max
item modify block ~ ~ ~ container.3 sort_items:set_count_max
item modify block ~ ~ ~ container.4 sort_items:set_count_max

data modify storage : _[-1].max_stack_sizes append from block ~ ~ ~ Items[].Count
