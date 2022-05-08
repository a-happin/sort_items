#> test:test_impl
#@within function test:**

function test:block/setblock
function test:load_test_case

execute if data storage : _[-1].test.block run data modify block ~ ~ ~ Items set from storage : _[-1].Items
execute if data storage : _[-1].test.entity run data modify entity @s Items set from storage : _[-1].Items
execute if data storage : _[-1].test.block run function sort_items:block/ascend/
execute if data storage : _[-1].test.entity run function sort_items:entity/ascend/
execute if data storage : _[-1].test.block run data modify storage : _[-1].result.ascend set from block ~ ~ ~ Items
execute if data storage : _[-1].test.entity run data modify storage : _[-1].result.ascend set from entity @s Items
execute unless data storage : _[-1].result.ascend run data modify storage : _[-1].result.ascend set value []
data modify storage : _[-1].test.tmp set from storage : _[-1].result.ascend
execute store result storage : _[-1].test.updated byte 1 run data modify storage : _[-1].test.tmp set from storage : _[-1].expected.ascend
execute if data storage : _[-1].test{updated: 0b} run tellraw @a [{"text": "OK» ", "color": "green"}, {"selector": "@s[type=#sort_items:containers]"}, {"storage": ":", "nbt": "_[-1].test.block"}, " ", {"storage": ":", "nbt": "_[-1].test.items"}, " ", {"text": "ascend"}]
execute if data storage : _[-1].test{updated: 1b} run tellraw @a [{"text": "Failed» ", "color": "red"}, {"selector": "@s[type=#sort_items:containers]"}, {"storage": ":", "nbt": "_[-1].test.block"}, " ", {"storage": ":", "nbt": "_[-1].test.items"}, " ", {"text": "ascend"}, " ", {"storage": ":", "nbt": "_[-1]"}]

execute if data storage : _[-1].test.block run data modify block ~ ~ ~ Items set from storage : _[-1].Items
execute if data storage : _[-1].test.entity run data modify entity @s Items set from storage : _[-1].Items
execute if data storage : _[-1].test.block run function sort_items:block/descend/
execute if data storage : _[-1].test.entity run function sort_items:entity/descend/
execute if data storage : _[-1].test.block run data modify storage : _[-1].result.descend set from block ~ ~ ~ Items
execute if data storage : _[-1].test.entity run data modify storage : _[-1].result.descend set from entity @s Items
execute unless data storage : _[-1].result.descend run data modify storage : _[-1].result.descend set value []
data modify storage : _[-1].test.tmp set from storage : _[-1].result.descend
execute store result storage : _[-1].test.updated byte 1 run data modify storage : _[-1].test.tmp set from storage : _[-1].expected.descend
execute if data storage : _[-1].test{updated: 0b} run tellraw @a [{"text": "OK» ", "color": "green"}, {"selector": "@s[type=#sort_items:containers]"}, {"storage": ":", "nbt": "_[-1].test.block"}, " ", {"storage": ":", "nbt": "_[-1].test.items"}, " ", {"text": "descend"}]
execute if data storage : _[-1].test{updated: 1b} run tellraw @a [{"text": "Failed» ", "color": "red"}, {"selector": "@s[type=#sort_items:containers]"}, {"storage": ":", "nbt": "_[-1].test.block"}, " ", {"storage": ":", "nbt": "_[-1].test.items"}, " ", {"text": "descend"}, " ", {"storage": ":", "nbt": "_[-1]"}]

execute if data storage : _[-1].test.block run data modify block ~ ~ ~ Items set from storage : _[-1].Items
execute if data storage : _[-1].test.entity run data modify entity @s Items set from storage : _[-1].Items
execute if data storage : _[-1].test.block run function sort_items:block/no_sort/
execute if data storage : _[-1].test.entity run function sort_items:entity/no_sort/
execute if data storage : _[-1].test.block run data modify storage : _[-1].result.no_sort set from block ~ ~ ~ Items
execute if data storage : _[-1].test.entity run data modify storage : _[-1].result.no_sort set from entity @s Items
execute unless data storage : _[-1].result.no_sort run data modify storage : _[-1].result.no_sort set value []
data modify storage : _[-1].test.tmp set from storage : _[-1].result.no_sort
execute store result storage : _[-1].test.updated byte 1 run data modify storage : _[-1].test.tmp set from storage : _[-1].expected.no_sort
execute if data storage : _[-1].test{updated: 0b} run tellraw @a [{"text": "OK» ", "color": "green"}, {"selector": "@s[type=#sort_items:containers]"}, {"storage": ":", "nbt": "_[-1].test.block"}, " ", {"storage": ":", "nbt": "_[-1].test.items"}, " ", {"text": "no_sort"}]
execute if data storage : _[-1].test{updated: 1b} run tellraw @a [{"text": "Failed» ", "color": "red"}, {"selector": "@s[type=#sort_items:containers]"}, {"storage": ":", "nbt": "_[-1].test.block"}, " ", {"storage": ":", "nbt": "_[-1].test.items"}, " ", {"text": "no_sort"}, " ", {"storage": ":", "nbt": "_[-1]"}]
