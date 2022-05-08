#> test:block/shulker_box/same_count_27
#@within function test:

data modify storage : _ append value {test: {block: "shulker_box", "items": "same_count_27"}}
  execute as @e[tag=sort_items.test] at @s run function test:test_impl
data remove storage : _[-1]
