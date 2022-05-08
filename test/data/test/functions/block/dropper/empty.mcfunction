#> test:block/dropper/empty
#@within function test:

data modify storage : _ append value {test: {block: "dropper", "items": "empty"}}
  execute as @e[tag=sort_items.test] at @s run function test:test_impl
data remove storage : _[-1]
