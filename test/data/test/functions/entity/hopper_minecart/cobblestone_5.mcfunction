#> test:entity/hopper_minecart/cobblestone_5
#@within function test:

#>
#@private
#declare tag sort_items.test.tmp

data modify storage : _ append value {test: {entity: "hopper_minecart", "items": "cobblestone_5"}}
  summon hopper_minecart ~ ~ ~ {Tags:["sort_items.test.tmp"]}
    execute as @e[tag=sort_items.test.tmp,distance=0] at @s run function test:test_impl
    execute as @e[tag=sort_items.test.tmp,distance=0] run data modify entity @s Items set value []
  kill @e[tag=sort_items.test.tmp,distance=0]
data remove storage : _[-1]
