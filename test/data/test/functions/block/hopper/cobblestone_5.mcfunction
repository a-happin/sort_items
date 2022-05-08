#> test:block/hopper/cobblestone_5
#@within function test:

data modify storage : _ append value {test: {block: "hopper", "items": "cobblestone_5"}}
  execute as @e[tag=sort_items.test] at @s run function test:test_impl
data remove storage : _[-1]
