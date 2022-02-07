#> sort_items:descend/up_to_27_slots
#@public

#>
#@within sort_items:**
scoreboard objectives add _sort_items dummy
  data modify storage : _ append value {}
    ## convert to NBT
    data modify storage : _[-1].Items set from block ~ ~ ~ Items
    ## backup
    data modify storage : _[-1].Items_backup set from storage : _[-1].Items

    ## get max stack size
    function sort_items:_impl/get_max_stack_size/up_to_27_slots

    ## DEBUG: restore from backup
    # data modify block ~ ~ ~ Items set from storage : _[-1].Items_backup

    ## remove Items[].Slot
    data remove storage : _[-1].Items[].Slot

    ## Items内のアイテムを数えてlistに代入
    execute if data storage : _[-1].Items[-1] run function sort_items:_impl/count/

    ## sort
    execute if data storage : _[-1].list[-2] run function sort_items:_impl/sort_by_count/reverse_descend

    ## max_stack_sizeを超えないようにアイテムを復元
    function sort_items:_impl/restore/

    ## remove Items[].max_stack_size
    data remove storage : _[-1].Items[].max_stack_size

    ## Slotを再割り当て
    function sort_items:_impl/reassign_slots/up_to_27_slots

    ## convert
    data modify block ~ ~ ~ Items set from storage : _[-1].Items

    tellraw @s [{"text": "Debug» ", "color": "green"}, "list = ", {"storage": ":", "nbt": "_[-1].list"}]
    tellraw @s [{"text": "Debug» ", "color": "green"}, "Items = ", {"storage": ":", "nbt": "_[-1].Items"}]
    # tellraw @s [{"text": "Debug» ", "color": "green"}, "sort_items:descend/» ", {"storage": ":", "nbt": "_[-1]"}]

  data remove storage : _[-1]
scoreboard objectives remove _sort_items
