#> sort_items:_impl/sort/descend
#@within function sort_items:**
#@input storage : _[-1].list[-2]
#@output storage : _[-1].list

scoreboard players set $2 _sort_items -2147483648
data modify storage : _ append value {ascend: [[]], descend: [[]]}
  function sort_items:_impl/sort/ascend/setup
  function sort_items:_impl/sort/descend/impl

  ## finalize
  ### ascendに入っていた場合は反転してmove
  execute if data storage : _[-1].ascend[-1][-1] run function sort_items:_impl/sort/descend/move_rest
  ### 戻り値をセット
  data modify storage : _[-2].list set from storage : _[-1].descend[-1]
data remove storage : _[-1]
