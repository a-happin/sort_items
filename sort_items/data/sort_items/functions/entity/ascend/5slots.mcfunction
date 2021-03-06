#> sort_items:entity/ascend/5slots
#@within function sort_items:entity/ascend/

#>
#@within sort_items:**
scoreboard objectives add _sort_items dummy
  data modify storage : _ append value {}

    ## convert to NBT
    data modify storage : _[-1].Items set from entity @s Items

    ## get max stack size
    function sort_items:_impl/get_max_stack_size/entity/5slots

    ## remove Items[].Slot
    data remove storage : _[-1].Items[].Slot

    ## Items内のアイテムを数えてlistに代入
    ## listはItemsとは順番が逆になる
    execute if data storage : _[-1].Items[-1] run function sort_items:_impl/count/

    ## list(reversed)をdescendにsortする => 逆順にするとascend
    execute if data storage : _[-1].list[-2] run function sort_items:_impl/sort_by_count/descend

    ## max_stack_sizeを超えないようにアイテムを復元
    function sort_items:_impl/restore/

    ## Slotを再割り当て
    function sort_items:_impl/reassign_slots/5slots

    ## convert
    data modify entity @s Items set from storage : _[-1].Items

  data remove storage : _[-1]
scoreboard objectives remove _sort_items
