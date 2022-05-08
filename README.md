sort_items
==

A library for sorting the contents of containers.

## Features

- Sort items in a container
- stable sort

### Available

#### Blocks

- `hopper`
- `dispenser`
- `dropper`
- `barrel`
- `chest`
- `trapped_chest`
- `#shulker_boxes`

#### Entities

- `hopper_minecart`
- `chest_minecart`

### Unsupported
- player inventory
- contents of unplaced `#shulker_boxes`
- contents of `bundle`

## Usage

|function|description|
|:-:|:-:|
|`sort_items:block/ascend/`|Sort items in the conatiner block at `~ ~ ~` in ascending order by Count|
|`sort_items:block/descend/`|Sort items in the conatiner block at `~ ~ ~` in descending order by Count|
|`sort_items:block/no_sort/`|Sort items in the conatiner block at `~ ~ ~` in same order as the first<br>(Just put the same items together)|
|`sort_items:entity/ascend/`|Sort items in `@s` in ascending order by Count|
|`sort_items:entity/descend/`|Sort items in `@s` in descending order by Count|
|`sort_items:entity/no_sort/`|Sort items in `@s` in same order as the first<br>(Just put the same items together)|

### Example code

```mcfunction

## sort items in the container block at (0, 0, 0) in overworld
execute in overworld positioned 0 0 0 run function sort_items:block/descend/

## sort items in the nearest chest_minecart
execute as @e[type=chest_minecart,sort=nearest,limit=1] run function sort_items:entity/descend/
```

### Example of wrapper datapack

- [sort_items_wrapper_example](./sort_items_wrapper_example)

## Requirement

- Minecraft JE 1.18.2

## Installation

## License
The code except following directories follows [Creative Commons Zero v1.0 Universal](LICENSE).

- [sort_items/data/sort_items/functions/_impl/sort](sort_items/data/sort_items/functions/_impl/sort) ([MIT LICENSE](data/sort_items/functions/_impl/sort/LICENSE) / Copyright by 赤石愛)
- [sort_items/data/sort_items/functions/_impl/sort_by_count](sort_items/data/sort_items/functions/_impl/sort_by_count) ([MIT LICENSE](sort_items/data/sort_items/functions/_impl/sort/LICENSE) / Copyright by 赤石愛)

## Acknowledgements

### [赤石愛](https://github.com/Ai-Akaishi)様
- [NaturalMergeSort](https://github.com/Ai-Akaishi/NaturalMergeSort)
