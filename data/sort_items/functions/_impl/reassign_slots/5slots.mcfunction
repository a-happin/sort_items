#> sort_items:_impl/reassign_slots/5slots
#@within function sort_items:**/5slots

execute if data storage : _[-1].Items[0] run data modify storage : _[-1].Items[0].Slot set value 0b
execute if data storage : _[-1].Items[1] run data modify storage : _[-1].Items[1].Slot set value 1b
execute if data storage : _[-1].Items[2] run data modify storage : _[-1].Items[2].Slot set value 2b
execute if data storage : _[-1].Items[3] run data modify storage : _[-1].Items[3].Slot set value 3b
execute if data storage : _[-1].Items[4] run data modify storage : _[-1].Items[4].Slot set value 4b
