#> sort_items:_impl/get_max_stack_size/block/up_to_27slots
#@within
#  function sort_items:block/*/up_to_27slots
#  function sort_items:_impl/get_max_stack_size/block/up_to_54slots

item modify block ~ ~ ~ container.0 sort_items:set_count_max
item modify block ~ ~ ~ container.1 sort_items:set_count_max
item modify block ~ ~ ~ container.2 sort_items:set_count_max
item modify block ~ ~ ~ container.3 sort_items:set_count_max
item modify block ~ ~ ~ container.4 sort_items:set_count_max
item modify block ~ ~ ~ container.5 sort_items:set_count_max
item modify block ~ ~ ~ container.6 sort_items:set_count_max
item modify block ~ ~ ~ container.7 sort_items:set_count_max
item modify block ~ ~ ~ container.8 sort_items:set_count_max
item modify block ~ ~ ~ container.9 sort_items:set_count_max
item modify block ~ ~ ~ container.10 sort_items:set_count_max
item modify block ~ ~ ~ container.11 sort_items:set_count_max
item modify block ~ ~ ~ container.12 sort_items:set_count_max
item modify block ~ ~ ~ container.13 sort_items:set_count_max
item modify block ~ ~ ~ container.14 sort_items:set_count_max
item modify block ~ ~ ~ container.15 sort_items:set_count_max
item modify block ~ ~ ~ container.16 sort_items:set_count_max
item modify block ~ ~ ~ container.17 sort_items:set_count_max
item modify block ~ ~ ~ container.18 sort_items:set_count_max
item modify block ~ ~ ~ container.19 sort_items:set_count_max
item modify block ~ ~ ~ container.20 sort_items:set_count_max
item modify block ~ ~ ~ container.21 sort_items:set_count_max
item modify block ~ ~ ~ container.22 sort_items:set_count_max
item modify block ~ ~ ~ container.23 sort_items:set_count_max
item modify block ~ ~ ~ container.24 sort_items:set_count_max
item modify block ~ ~ ~ container.25 sort_items:set_count_max
item modify block ~ ~ ~ container.26 sort_items:set_count_max

data modify storage : _[-1].max_stack_sizes append from block ~ ~ ~ Items[].Count
