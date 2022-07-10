#> test:
#@private

summon marker ~ ~ ~ {Tags: ["sort_items.test"]}
  schedule function test:block/hopper/empty 1t replace
  schedule function test:block/hopper/cobblestone_5 2t replace

  schedule function test:block/dropper/empty 3t replace
  schedule function test:block/dropper/cobblestone_9 4t replace

  schedule function test:block/dispenser/empty 5t replace
  schedule function test:block/dispenser/cobblestone_9 6t replace

  schedule function test:block/chest/empty 7t replace
  schedule function test:block/chest/cobblestone_27 8t replace

  schedule function test:block/trapped_chest/empty 9t replace
  schedule function test:block/trapped_chest/cobblestone_27 10t replace

  schedule function test:block/barrel/empty 11t replace
  schedule function test:block/barrel/cobblestone_27 12t replace

  schedule function test:block/shulker_box/empty 13t replace
  schedule function test:block/shulker_box/cobblestone_27 14t replace
  schedule function test:block/shulker_box/same_count_27 15t replace
  schedule function test:block/shulker_box/snowball 16t replace
  schedule function test:block/shulker_box/golden_sword 17t replace
  schedule function test:block/shulker_box/invalid 18t replace
  schedule function test:block/shulker_box/a 19t replace

  schedule function test:entity/hopper_minecart/empty 20t replace
  schedule function test:entity/hopper_minecart/cobblestone_5 21t replace

  schedule function test:entity/chest_minecart/empty 22t replace
  schedule function test:entity/chest_minecart/cobblestone_27 23t replace

  schedule function test:entity/chest_boat/empty 24t replace
  schedule function test:entity/chest_boat/cobblestone_27 25t replace

schedule function test:end 26t replace
