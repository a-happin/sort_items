#> test:load_test_case
#@within function test:test_impl

execute if data storage : _[-1].test{items: "empty"} run function test:test_case/empty
execute if data storage : _[-1].test{items: "cobblestone_5"} run function test:test_case/cobblestone_5
execute if data storage : _[-1].test{items: "cobblestone_9"} run function test:test_case/cobblestone_9
execute if data storage : _[-1].test{items: "cobblestone_27"} run function test:test_case/cobblestone_27
execute if data storage : _[-1].test{items: "same_count_27"} run function test:test_case/same_count_27
execute if data storage : _[-1].test{items: "golden_sword"} run function test:test_case/golden_sword
execute if data storage : _[-1].test{items: "snowball"} run function test:test_case/snowball
execute if data storage : _[-1].test{items: "invalid"} run function test:test_case/invalid
execute if data storage : _[-1].test{items: "a"} run function test:test_case/a
