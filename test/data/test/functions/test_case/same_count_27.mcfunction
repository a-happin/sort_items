#> test:test_case/same_count_27
#@within function test:load_test_case

data modify storage : _[-1].Items set value []
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 0}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 1}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 2}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 3}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 4}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 5}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 6}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 7}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 8}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 9}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 10}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 11}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 12}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 13}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 14}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 15}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 16}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 17}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 18}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 19}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 20}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 21}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 22}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 23}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 24}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 25}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
execute store result storage : _[-1].Items[{id: "minecraft:cobblestone", Count: 1b, tag: {id: 26}, Slot: -1b}].Slot byte 1 if data storage : _[-1].Items[]
data modify storage : _[-1].expected.ascend set from storage : _[-1].Items
data modify storage : _[-1].expected.descend set from storage : _[-1].Items
data modify storage : _[-1].expected.no_sort set from storage : _[-1].Items
