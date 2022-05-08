#> test:test_case/empty
#@within function test:load_test_case

data modify storage : _[-1].Items set value []
data modify storage : _[-1].expected.ascend set value []
data modify storage : _[-1].expected.descend set value []
data modify storage : _[-1].expected.no_sort set value []
