#> test:block/setblock
#@within function test:test_impl

setblock ~ ~ ~ air
execute if data storage : _[-1].test{block: "hopper"} run setblock ~ ~ ~ hopper
execute if data storage : _[-1].test{block: "dropper"} run setblock ~ ~ ~ dropper
execute if data storage : _[-1].test{block: "dispenser"} run setblock ~ ~ ~ dispenser
execute if data storage : _[-1].test{block: "chest"} run setblock ~ ~ ~ chest
execute if data storage : _[-1].test{block: "trapped_chest"} run setblock ~ ~ ~ trapped_chest
execute if data storage : _[-1].test{block: "barrel"} run setblock ~ ~ ~ barrel
execute if data storage : _[-1].test{block: "shulker_box"} run setblock ~ ~ ~ shulker_box
execute if data storage : _[-1].test{block: "white_shulker_box"} run setblock ~ ~ ~ white_shulker_box
execute if data storage : _[-1].test{block: "orange_shulker_box"} run setblock ~ ~ ~ orange_shulker_box
execute if data storage : _[-1].test{block: "magenta_shulker_box"} run setblock ~ ~ ~ magenta_shulker_box
execute if data storage : _[-1].test{block: "light_blue_shulker_box"} run setblock ~ ~ ~ light_blue_shulker_box
execute if data storage : _[-1].test{block: "yellow_shulker_box"} run setblock ~ ~ ~ yellow_shulker_box
execute if data storage : _[-1].test{block: "lime_shulker_box"} run setblock ~ ~ ~ lime_shulker_box
execute if data storage : _[-1].test{block: "pink_shulker_box"} run setblock ~ ~ ~ pink_shulker_box
execute if data storage : _[-1].test{block: "gray_shulker_box"} run setblock ~ ~ ~ gray_shulker_box
execute if data storage : _[-1].test{block: "light_gray_shulker_box"} run setblock ~ ~ ~ light_gray_shulker_box
execute if data storage : _[-1].test{block: "cyan_shulker_box"} run setblock ~ ~ ~ cyan_shulker_box
execute if data storage : _[-1].test{block: "purple_shulker_box"} run setblock ~ ~ ~ purple_shulker_box
execute if data storage : _[-1].test{block: "blue_shulker_box"} run setblock ~ ~ ~ blue_shulker_box
execute if data storage : _[-1].test{block: "green_shulker_box"} run setblock ~ ~ ~ green_shulker_box
execute if data storage : _[-1].test{block: "brown_shulker_box"} run setblock ~ ~ ~ brown_shulker_box
execute if data storage : _[-1].test{block: "red_shulker_box"} run setblock ~ ~ ~ red_shulker_box
execute if data storage : _[-1].test{block: "black_shulker_box"} run setblock ~ ~ ~ black_shulker_box

execute if data storage : _[-1].test{block: "large_chest_WL"} run setblock ~ ~ ~ chest[facing=east,type=left]
execute if data storage : _[-1].test{block: "large_chest_WL"} run setblock ~ ~ ~ chest[facing=east,type=left]
