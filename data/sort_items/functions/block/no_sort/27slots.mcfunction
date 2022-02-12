#> sort_items:block/no_sort/27slots
#@within function sort_items:block/no_sort/

#>
#@within sort_items:**
scoreboard objectives add _sort_items dummy
  data modify storage : _ append value {}

    ## convert to NBT
    data modify storage : _[-1].Items set from block ~ ~ ~ Items

    ## get max stack size
    function sort_items:_impl/get_max_stack_size/block/27slots

    ## remove Items[].Slot
    data remove storage : _[-1].Items[].Slot

    ## Items内のアイテムを数えてlistに代入
    ## listはItemsとは順番が逆になる
    execute if data storage : _[-1].Items[-1] run function sort_items:_impl/count/

    ## max_stack_sizeを超えないようにアイテムを復元
    function sort_items:_impl/restore/

    ## Slotを再割り当て
    function sort_items:_impl/reassign_slots/27slots

    ## convert
    data modify block ~ ~ ~ Items set from storage : _[-1].Items

  data remove storage : _[-1]
scoreboard objectives remove _sort_items
