#> sort_items:_impl/get_max_stack_size/block/9slots
#@within function sort_items:block/*/9slots

item modify block ~ ~ ~ container.0 sort_items:set_count_max
item modify block ~ ~ ~ container.1 sort_items:set_count_max
item modify block ~ ~ ~ container.2 sort_items:set_count_max
item modify block ~ ~ ~ container.3 sort_items:set_count_max
item modify block ~ ~ ~ container.4 sort_items:set_count_max
item modify block ~ ~ ~ container.5 sort_items:set_count_max
item modify block ~ ~ ~ container.6 sort_items:set_count_max
item modify block ~ ~ ~ container.7 sort_items:set_count_max
item modify block ~ ~ ~ container.8 sort_items:set_count_max

data modify storage : _[-1].max_stack_sizes append from block ~ ~ ~ Items[].Count
