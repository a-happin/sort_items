sort_items
==

## Features

- Sort items in a container as if a player did
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
- `ender_chest`
- contents of unplaced `#shulker_boxes`
- contents of `bundle`

## Usage

|function|description|
|:-:|:-:|
|`sort_items:block/ascend/`|Sort items in a conatiner block in ascending order by Count|
|`sort_items:block/descend/`|Sort items in a conatiner block in descending order by Count|
|`sort_items:entity/ascend/`|Sort items in a conatiner entity in ascending order by Count|
|`sort_items:entity/descend/`|Sort items in a conatiner entity in descending order by Count|

### Example code

```mcfunction

## sort items in the container block at (0, 0, 0) in overworld
execute in overworld positioned 0 0 0 run function sort_items:block/descend/

## sort items in the nearest chest_minecart
execute as @e[type=chest_minecart,sort=nearest,limit=1] run function sort_items:entity/descend/
```

## Requirement

## Installation

## License
The code except following directories follows [Creative Commons Zero v1.0 Universal](LICENSE).

- [data/sort_items/functions/_impl/sort](data/sort_items/functions/_impl/sort) ([MIT LICENSE](data/sort_items/functions/_impl/sort/LICENSE) / Copyright by 赤石愛)
- [data/sort_items/functions/_impl/sort_by_count](data/sort_items/functions/_impl/sort_by_count) ([MIT LICENSE](data/sort_items/functions/_impl/sort/LICENSE) / Copyright by 赤石愛)

## Acknowledgements

### [赤石愛](https://github.com/Ai-Akaishi)様
- [NaturalMergeSort](https://github.com/Ai-Akaishi/NaturalMergeSort)
