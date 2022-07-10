#> test:entity/chest_boat/empty
#@within function test:

#>
#@private
#declare tag sort_items.test.tmp

data modify storage : _ append value {test: {entity: "chest_boat", "items": "empty"}}
  summon chest_boat ~ ~ ~ {Tags:["sort_items.test.tmp"]}
    execute as @e[tag=sort_items.test.tmp,distance=0] at @s run function test:test_impl
    execute as @e[tag=sort_items.test.tmp,distance=0] run data modify entity @s Items set value []
  kill @e[tag=sort_items.test.tmp,distance=0]
data remove storage : _[-1]
