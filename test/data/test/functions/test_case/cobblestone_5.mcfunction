#> test:test_case/cobblestone_5
#@within function test:load_test_case

data modify storage : _[-1].Items set value []
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
data modify storage : _[-1].expected.ascend set value [{id: "minecraft:cobblestone", Count: 5b, Slot: 0b}]
data modify storage : _[-1].expected.descend set value [{id: "minecraft:cobblestone", Count: 5b, Slot: 0b}]
data modify storage : _[-1].expected.no_sort set value [{id: "minecraft:cobblestone", Count: 5b, Slot: 0b}]
