#> sort_items:_impl/get_max_stack_size/entity/up_to_5slots
#@within function sort_items:entity/*/up_to_5slots

item modify entity @s container.0 sort_items:set_count_max
item modify entity @s container.1 sort_items:set_count_max
item modify entity @s container.2 sort_items:set_count_max
item modify entity @s container.3 sort_items:set_count_max
item modify entity @s container.4 sort_items:set_count_max

data modify storage : _[-1].max_stack_sizes append from entity @s Items[].Count
