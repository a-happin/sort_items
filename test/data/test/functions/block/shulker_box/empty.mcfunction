#> test:block/shulker_box/empty
#@within function test:

data modify storage : _ append value {test: {block: "shulker_box", "items": "empty"}}
  execute as @e[tag=sort_items.test] at @s run function test:test_impl
data remove storage : _[-1]
