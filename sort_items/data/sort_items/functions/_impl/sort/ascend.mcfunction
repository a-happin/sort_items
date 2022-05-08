#> sort_items:_impl/sort/ascend
#@within function sort_items:**
#@input storage : _[-1].list[-2]
#@output storage : _[-1].list

scoreboard players set $2 _sort_items 2147483647
data modify storage : _ append value {ascend: [[]], descend: [[]]}
  function sort_items:_impl/sort/descend/setup
  function sort_items:_impl/sort/ascend/impl

  ## finalize
  ### descendに入っていた場合は反転してmove
  execute if data storage : _[-1].descend[-1][-1] run function sort_items:_impl/sort/ascend/move_rest
  ### 戻り値をセット
  data modify storage : _[-2].list set from storage : _[-1].ascend[-1]
data remove storage : _[-1]
