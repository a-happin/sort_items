#> test:test_case/invalid
#@within function test:load_test_case

data modify storage : _[-1].Items set value []
execute store result storage : _[-1].Items[{id: "minecraft:water_bucket", Count: 7b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:water_bucket", Count: 10b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:water_bucket", Count: 20b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:water_bucket", Count: 30b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:water_bucket", Count: 40b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:ender_pearl", Count: 7b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:ender_pearl", Count: 10b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:ender_pearl", Count: 20b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:ender_pearl", Count: 30b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:ender_pearl", Count: 40b, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
data modify storage : _[-1].expected.ascend set value []
execute store result storage : _[-1].expected.ascend[{id: "minecraft:water_bucket", Count: 40b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:water_bucket", Count: 30b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:water_bucket", Count: 20b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:water_bucket", Count: 10b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:water_bucket", Count: 7b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:ender_pearl", Count: 40b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:ender_pearl", Count: 30b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:ender_pearl", Count: 20b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:ender_pearl", Count: 16b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
execute store result storage : _[-1].expected.ascend[{id: "minecraft:ender_pearl", Count: 1b, Slot: -1b}].Slot byte 1 if data storage : _[-1].expected.ascend[]
data modify storage : _[-1].expected.descend set from storage : _[-1].expected.ascend
data modify storage : _[-1].expected.no_sort set from storage : _[-1].expected.ascend
