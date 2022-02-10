#> sort_items:block/descend/up_to_5slots
#@within function sort_items:block/descend/

#>
#@within sort_items:**
scoreboard objectives add _sort_items dummy
  data modify storage : _ append value {}

    ## convert to NBT
    data modify storage : _[-1].Items set from block ~ ~ ~ Items

    ## get max stack size
    function sort_items:_impl/get_max_stack_size/block/up_to_5slots

    ## remove Items[].Slot
    data remove storage : _[-1].Items[].Slot

    ## Items内のアイテムを数えてlistに代入
    ## listはItemsとは順番が逆になる
    execute if data storage : _[-1].Items[-1] run function sort_items:_impl/count/

    ## list(reversed)をascendにsortする => 逆順にするとdescend
    execute if data storage : _[-1].list[-2] run function sort_items:_impl/sort_by_count/ascend

    ## max_stack_sizeを超えないようにアイテムを復元
    function sort_items:_impl/restore/

    ## Slotを再割り当て
    function sort_items:_impl/reassign_slots/up_to_5slots

    ## convert
    data modify block ~ ~ ~ Items set from storage : _[-1].Items

  data remove storage : _[-1]
scoreboard objectives remove _sort_items
