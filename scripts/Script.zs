println("Hello world!");

//Removing original immersiveengineering conveyor recipe.

craftingTable.remove(<item:immersiveengineering:conveyor_basic>);

//adding new recipe thats more akin to the create belt recipe.

craftingTable.addShaped("belt_conveyor", <item:immersiveengineering:conveyor_basic>*8, [[<item:minecraft:dried_kelp>, <item:minecraft:dried_kelp>, <item:minecraft:dried_kelp>], [<item:minecraft:iron_ingot>, <item:minecraft:redstone>, <item:minecraft:iron_ingot>]]);

//removing pipez pipe wrench recipe

craftingTable.remove(<item:pipez:wrench>);

//new pipez pipe wrench recipe

craftingTable.addShaped("custom_pipe_wrench", <item:pipez:wrench>, [[<item:minecraft:air>, <tag:items:forge:nuggets/nickel>, <item:minecraft:air>], [<item:minecraft:air>, <tag:items:forge:rods/iron>, <tag:items:forge:nuggets/nickel>], [<tag:items:forge:rods/iron>, <item:minecraft:air>, <item:minecraft:air>]]);

<tag:blocks:undergarden:portal_frame_blocks>.remove(<block:minecraft:stone_bricks>);