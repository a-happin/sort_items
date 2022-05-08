#> test:block/shulker_box/cobblestone_27
#@within function test:

data modify storage : _ append value {test: {block: "shulker_box", "items": "cobblestone_27"}}
  execute as @e[tag=sort_items.test] at @s run function test:test_impl
data remove storage : _[-1]
