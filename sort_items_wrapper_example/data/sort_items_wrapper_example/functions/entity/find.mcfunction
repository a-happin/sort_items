#> sort_items_wrapper_example:entity/find
#@within function sort_items_wrapper_example:entity/opened_with_sneaking

#>
#@within function sort_items_wrapper_example:entity/*
  #declare tag sort_items_wrapper.this
  #declare tag sort_items_wrapper.target
tag @s add sort_items_wrapper.this
  execute positioned ^ ^ ^5 as @e[type=#sort_items:containers,distance=..5] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=sort_items_wrapper.this] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run tag @s add sort_items_wrapper.target
    execute as @e[type=#sort_items:containers,tag=sort_items_wrapper.target,distance=..10,sort=nearest,limit=1] at @s run function sort_items_wrapper_example:entity/sort
  tag @e[type=#sort_items:containers,tag=sort_items_wrapper.target,distance=..10] remove sort_items_wrapper.target
tag @s remove sort_items_wrapper.this
