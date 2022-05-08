#> test:block/dispenser/cobblestone_9
#@within function test:

data modify storage : _ append value {test: {block: "dispenser", "items": "cobblestone_9"}}
  execute as @e[tag=sort_items.test] at @s run function test:test_impl
data remove storage : _[-1]
