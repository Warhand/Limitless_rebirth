//removing default rose quarts recipe
craftingTable.removeByName("create:crafting/materials/rose_quartz");
//new rose quarts recipe
craftingTable.addShaped("custom-rose-quartz", <item:create:rose_quartz>, [[<item:minecraft:air>, <item:biomesoplenty:rose_quartz_shard>, <item:minecraft:air>], [<item:biomesoplenty:rose_quartz_shard>, <item:minecraft:redstone>, <item:biomesoplenty:rose_quartz_shard>], [<item:minecraft:air>, <item:biomesoplenty:rose_quartz_shard>, <item:minecraft:air>]]);

//removing crafting table plate recipes and replacing them
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;

//adding var for hammers

public var hammers = [
<item:indreb:hammer>,
<item:beyond_earth:hammer>,
<item:relics:runic_hammer>,
<item:immersiveengineering:hammer>
];

//new plates recipes

public var plates = [
	<item:indreb:copper_plate>,
	<item:indreb:iron_plate>,
	<item:indreb:lead_plate>,
	<item:indreb:gold_plate>,
	<item:indreb:steel_plate>,
	<item:indreb:bronze_plate>,
	<item:extendedcrafting:black_iron_slate>
];

for plate in plates {
	craftingTable.remove(plate);
}

val ingot_plate_map as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/iron>.asIIngredient(): <item:immersiveengineering:plate_iron>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:immersiveengineering:plate_constantan>,
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:immersiveengineering:plate_gold>,
	<tag:items:forge:ingots/silver>.asIIngredient(): <item:immersiveengineering:plate_silver>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:immersiveengineering:plate_electrum>,
	<tag:items:forge:ingots/aluminum>.asIIngredient(): <item:immersiveengineering:plate_aluminum>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:plate_steel>,
	<tag:items:forge:ingots/uranium>.asIIngredient(): <item:immersiveengineering:plate_uranium>,
	<tag:items:forge:ingots/copper>.asIIngredient(): <item:immersiveengineering:plate_copper>,
	<tag:items:forge:ingots/nickel>.asIIngredient(): <item:immersiveengineering:plate_nickel>,
	<tag:items:forge:ingots/lead>.asIIngredient(): <item:immersiveengineering:plate_lead>,
	<tag:items:forge:ingots/zinc>.asIIngredient(): <item:createaddition:zinc_sheet>,
	<tag:items:forge:ingots/brass>.asIIngredient(): <item:create:brass_sheet>,
	<tag:items:forge:ingots/netherite>.asIIngredient(): <item:createdeco:netherite_sheet>,
	<tag:items:forge:ingots/desh>.asIIngredient(): <item:beyond_earth:desh_plate>,
	<tag:items:forge:ingots/tin>.asIIngredient(): <item:indreb:tin_plate>,
	<tag:items:forge:ingots/bronze>.asIIngredient(): <item:alloyed:bronze_sheet>
};

for ingot, plate in ingot_plate_map {
	craftingTable.remove(plate);
}

for item in hammers {
	for ingot, plate in ingot_plate_map {
	craftingTable.addShapeless("ingot_to_" + plate.registryName.path + "_with_" + item.registryName.namespace, plate, [ingot, ingot, item.anyDamage().transformDamage(1)]);
}}

for item in hammers {
craftingTable.addShapeless("black_iron_slate_recipe_with" + item.registryName.namespace, <item:extendedcrafting:black_iron_slate>, [<item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:black_iron_ingot>, item.anyDamage().transformDamage(1)]);
}

//adding var for cutters
public var cutters = [
	<item:ae2:certus_quartz_cutting_knife>,
	<item:ae2:nether_quartz_cutting_knife>,
	<item:indreb:cutter>,
	<item:immersiveengineering:wirecutter>
];

val plate_wire_map as IItemStack[IIngredient] = {
	<tag:items:forge:plates/steel>.asIIngredient(): <item:immersiveengineering:wire_steel>,
	<tag:items:forge:plates/aluminum>.asIIngredient(): <item:immersiveengineering:wire_aluminum>,
	<tag:items:forge:plates/electrum>.asIIngredient(): <item:immersiveengineering:wire_electrum>,
	<tag:items:forge:plates/copper>.asIIngredient(): <item:createaddition:copper_wire>,
	<tag:items:forge:plates/lead>.asIIngredient(): <item:immersiveengineering:wire_lead>,
	<tag:items:forge:plates/iron>.asIIngredient(): <item:createaddition:iron_wire>,
	<tag:items:forge:plates/gold>.asIIngredient(): <item:createaddition:gold_wire>
};

val plate_cable_map as IItemStack[IIngredient] = {
	<tag:items:forge:plates/tin>.asIIngredient(): <item:indreb:tin_cable>,
	<tag:items:forge:plates/copper>.asIIngredient(): <item:indreb:copper_cable>,
	<tag:items:forge:plates/gold>.asIIngredient(): <item:indreb:gold_cable>,
	<tag:items:forge:plates/iron>.asIIngredient(): <item:indreb:hv_cable>
};

for plate, wire in plate_wire_map {
	craftingTable.remove(wire);
}

for plate, cable in plate_cable_map {
	craftingTable.remove(cable);
}

for  item in cutters {
	for plate, cable in plate_cable_map {
		craftingTable.addShapedMirrored("plate_to_" + cable.registryName.path + "_with_" + item.registryName.path, <constant:minecraft:mirroraxis:all>, cable * 4, [[item.anyDamage().transformDamage(1), plate], [<item:minecraft:air>, plate]]);
	}
}

for  item in cutters {
	for plate, wire in plate_wire_map {
		craftingTable.addShapeless("plate_to_" + wire.registryName.path + "_with_" + item.registryName.path, wire, [item.anyDamage().transformDamage(1), plate]);
	}
}


//removing crafting table rod recipes and replacing them

val ingot_rod_map as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/iron>.asIIngredient(): <item:immersiveengineering:stick_iron>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:stick_steel>,
	<tag:items:forge:ingots/aluminum>.asIIngredient(): <item:immersiveengineering:stick_aluminum>,
	<tag:items:forge:ingots/copper>.asIIngredient(): <item:createaddition:copper_rod>,
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:createaddition:gold_rod>
};

for ingot, rod in ingot_rod_map {
	craftingTable.remove(rod);
}

for item in hammers {
	for ingot, rod in ingot_rod_map {
		craftingTable.addShapedMirrored("ingot_to_" + rod.registryName.path + "_with_" + item.registryName.namespace, <constant:minecraft:mirroraxis:all>, rod*2, [[item.anyDamage().transformDamage(1), ingot], [<item:minecraft:air>, ingot], [<item:minecraft:air>, ingot]]);
	}
}

//adding recipe for rolling lead wire
<recipetype:createaddition:rolling>.addJsonRecipe("lead_wire", {
	"input": {
      	"tag": "forge:ingots/lead"
	},
	"result": {
		"item": "immersiveengineering:wire_lead",
		"count": 2
	}
});

//adding recipe for create mechanical press for IE plates

val ingot_plate_press as IItemStack[IIngredient] = {
	<tag:items:forge:ingots/iron>.asIIngredient(): <item:immersiveengineering:plate_iron>,
	<tag:items:forge:ingots/constantan>.asIIngredient(): <item:immersiveengineering:plate_constantan>,
	<tag:items:forge:ingots/gold>.asIIngredient(): <item:immersiveengineering:plate_gold>,
	<tag:items:forge:ingots/silver>.asIIngredient(): <item:immersiveengineering:plate_silver>,
	<tag:items:forge:ingots/electrum>.asIIngredient(): <item:immersiveengineering:plate_electrum>,
	<tag:items:forge:ingots/aluminum>.asIIngredient(): <item:immersiveengineering:plate_aluminum>,
	<tag:items:forge:ingots/steel>.asIIngredient(): <item:immersiveengineering:plate_steel>,
	<tag:items:forge:ingots/uranium>.asIIngredient(): <item:immersiveengineering:plate_uranium>,
	<tag:items:forge:ingots/copper>.asIIngredient(): <item:immersiveengineering:plate_copper>,
	<tag:items:forge:ingots/nickel>.asIIngredient(): <item:immersiveengineering:plate_nickel>,
	<tag:items:forge:ingots/lead>.asIIngredient(): <item:immersiveengineering:plate_lead>
};

for ingot, plate in ingot_plate_press {
	<recipetype:create:pressing>.addJsonRecipe("create_pressed_" + plate.registryName.path, 
	{"ingredients": [ ingot ],
	"results": [ plate ]
});
}

//adjusting recipe for creates crushing wheels and raw ore

val raw_crushed_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_ores/iron>.asIIngredient(): <item:create:crushed_iron_ore>,
	<tag:items:forge:raw_ores/gold>.asIIngredient(): <item:create:crushed_gold_ore>,
	<tag:items:forge:raw_ores/silver>.asIIngredient(): <item:create:crushed_silver_ore>,
	<tag:items:forge:raw_ores/aluminum>.asIIngredient(): <item:create:crushed_aluminum_ore>,
	<tag:items:forge:raw_ores/uranium>.asIIngredient(): <item:create:crushed_uranium_ore>,
	<tag:items:forge:raw_ores/copper>.asIIngredient(): <item:create:crushed_copper_ore>,
	<tag:items:forge:raw_ores/nickel>.asIIngredient(): <item:create:crushed_nickel_ore>,
	<tag:items:forge:raw_ores/lead>.asIIngredient(): <item:create:crushed_lead_ore>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:create:crushed_zinc_ore>,
	<tag:items:forge:raw_ores/tin>.asIIngredient(): <item:create:crushed_tin_ore>
};

for item in hammers {
	craftingTable.addShapeless("diamond_to_diamond_dust_with_" + item.registryName.namespace, <item:indreb:diamond_dust>, [<item:minecraft:diamond>, item.anyDamage().transformDamage(1)]);
	for raw, crushed in raw_crushed_map {
	craftingTable.addShapeless("raw_to_" + crushed.registryName.path + "_with_" + item.registryName.namespace, crushed, [raw, item.anyDamage().transformDamage(1)]);
}}

for raw, crushed in raw_crushed_map {
	<recipetype:create:crushing>.remove(crushed);
	<recipetype:create:crushing>.addJsonRecipe("custom_" + crushed.registryName.path, 
	{
  "ingredients": [ raw ],
  "results": [
    { "item": crushed.registryName},
    {
      "item": crushed.registryName,
      "chance": 0.25
    },
    {
      "item": "create:experience_nugget",
      "chance": 0.75
    }
  ],
  "processingTime": 400
});
}

val rawblocks_crushed_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_blocks/iron>.asIIngredient(): <item:create:crushed_iron_ore>,
	<tag:items:forge:raw_blocks/gold>.asIIngredient(): <item:create:crushed_gold_ore>,
	<tag:items:forge:raw_blocks/silver>.asIIngredient(): <item:create:crushed_silver_ore>,
	<tag:items:forge:raw_blocks/aluminum>.asIIngredient(): <item:create:crushed_aluminum_ore>,
	<tag:items:forge:raw_blocks/uranium>.asIIngredient(): <item:create:crushed_uranium_ore>,
	<tag:items:forge:raw_blocks/copper>.asIIngredient(): <item:create:crushed_copper_ore>,
	<tag:items:forge:raw_blocks/nickel>.asIIngredient(): <item:create:crushed_nickel_ore>,
	<tag:items:forge:raw_blocks/lead>.asIIngredient(): <item:create:crushed_lead_ore>,
	<tag:items:forge:storage_blocks/raw_zinc>.asIIngredient(): <item:create:crushed_zinc_ore>,
};

for raw, crushed in rawblocks_crushed_map {
	<recipetype:create:crushing>.addJsonRecipe("custom_block__crush_" + crushed.registryName.path, 
	{
  "ingredients": [ raw ],
  "results": [
    { "item": crushed.registryName,
		"count": 10},
    {
      "item": crushed.registryName,
      "chance": 0.25
    },
    {
      "item": "create:experience_nugget",
	  "count": 9,
      "chance": 0.75
    }
  ],
  "processingTime": 400
});
}

public class StoneGroup {
	
	public var ore as IItemStack : get;
	public var raw as IItemStack : get;
	public var stone as IItemStack : get;
	
	public this(ore as IItemStack, raw as IItemStack, stone as IItemStack) {
		this.ore = ore;
		this.raw = raw;
		this.stone = stone;
	}
}

//var groups_gobber = [
	//new StoneGroup(<item:gobber2:gobber2_ore>, <item:gobber2:gobber2_glob>, <item:minecraft:cobblestone>),
	//new StoneGroup(<item:gobber2:gobber2_ore_deepslate>, <item:gobber2:gobber2_glob>, <item:minecraft:cobbled_deepslate>),
	//new StoneGroup(<item:gobber2:gobber2_ore_nether>, <item:gobber2:gobber2_glob_nether>, <item:minecraft:netherrack>),
	//new StoneGroup(<item:gobber2:gobber2_ore_end>, <item:gobber2:gobber2_glob_end>, <item:minecraft:end_stone>),
//] as StoneGroup[];

//for group in groups_gobber {
	//<recipetype:create:crushing>.addJsonRecipe("custom_crush_" + group.raw.registryName.path + "_" + group.stone.registryName.path, {
		//"ingredients": [group.ore],
//"results": [
		//{
		//	"item": group.raw.registryName
		//},
		//{
		//	"item": group.raw.registryName,
		//	"chance": 0.25
		//},
		//{
		//	"item": group.stone.registryName,
		//	"chance": 0.12
		//},
	//	{
	//		"item": "create:experience_nugget",
	//		"chance": 0.75
//}
	//	],
	//	"processingTime": 250
	//});
//}

var groups_ore = [
	new StoneGroup(<item:minecraft:iron_ore>, <item:minecraft:raw_iron>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:minecraft:gold_ore>, <item:minecraft:raw_gold>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:minecraft:deepslate_iron_ore>, <item:minecraft:raw_iron>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:minecraft:deepslate_gold_ore>, <item:minecraft:raw_gold>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:immersiveengineering:ore_aluminum>, <item:immersiveengineering:raw_aluminum>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:immersiveengineering:ore_lead>, <item:immersiveengineering:raw_lead>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:immersiveengineering:ore_silver>, <item:immersiveengineering:raw_silver>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:immersiveengineering:ore_nickel>, <item:immersiveengineering:raw_nickel>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:create:zinc_ore>, <item:create:raw_zinc>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:create:deepslate_zinc_ore>, <item:create:raw_zinc>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:immersiveengineering:ore_uranium>, <item:immersiveengineering:raw_uranium>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:immersiveengineering:deepslate_ore_aluminum>, <item:immersiveengineering:raw_aluminum>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:immersiveengineering:deepslate_ore_lead>, <item:immersiveengineering:raw_lead>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:immersiveengineering:deepslate_ore_silver>, <item:immersiveengineering:raw_silver>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:immersiveengineering:deepslate_ore_nickel>, <item:immersiveengineering:raw_nickel>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:immersiveengineering:deepslate_ore_uranium>, <item:immersiveengineering:raw_uranium>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:blue_skies:ventium_ore>, <item:blue_skies:raw_ventium>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:falsite_ore>, <item:blue_skies:raw_falsite>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:everbright_aquite_ore>, <item:blue_skies:raw_aquite>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:everbright_charoite_ore>, <item:blue_skies:raw_charoite>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:everbright_pyrope_ore>, <item:blue_skies:pyrope_gem>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:everbright_emerald_ore>, <item:minecraft:emerald>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:everbright_diopside_ore>, <item:blue_skies:diopside_gem>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroup(<item:blue_skies:everdawn_diopside_ore>, <item:blue_skies:diopside_gem>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroup(<item:blue_skies:everdawn_pyrope_ore>, <item:blue_skies:pyrope_gem>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroup(<item:blue_skies:everdawn_aquite_ore>, <item:blue_skies:aquite>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroup(<item:blue_skies:everdawn_charoite_ore>, <item:blue_skies:charoite>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroup(<item:blue_skies:everdawn_emerald_ore>, <item:minecraft:emerald>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroup(<item:blue_skies:horizonite_ore>, <item:blue_skies:raw_horizonite>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroup(<item:undergarden:depthrock_cloggrum_ore>, <item:undergarden:raw_cloggrum>, <item:undergarden:depthrock>),
	new StoneGroup(<item:undergarden:shiverstone_cloggrum_ore>, <item:undergarden:raw_cloggrum>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:shiverstone_froststeel_ore>, <item:undergarden:raw_froststeel>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:depthrock_regalium_ore>, <item:undergarden:regalium_crystal>, <item:undergarden:depthrock>),
	new StoneGroup(<item:undergarden:shiverstone_regalium_ore>, <item:undergarden:regalium_crystal>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:depthrock_utherium_ore>, <item:undergarden:utherium_crystal>, <item:undergarden:depthrock>),
	new StoneGroup(<item:undergarden:shiverstone_utherium_ore>, <item:undergarden:utherium_crystal>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:tremblecrust_utherium_ore>, <item:undergarden:utherium_crystal>, <item:undergarden:tremblecrust>),
	new StoneGroup(<item:undergarden:depthrock_coal_ore>, <item:minecraft:coal>, <item:undergarden:depthrock>),
	new StoneGroup(<item:undergarden:shiverstone_coal_ore>, <item:minecraft:coal>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:depthrock_iron_ore>, <item:minecraft:raw_iron>, <item:undergarden:depthrock>),
	new StoneGroup(<item:undergarden:shiverstone_iron_ore>, <item:minecraft:raw_iron>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:depthrock_diamond_ore>, <item:minecraft:diamond>, <item:undergarden:depthrock>),
	new StoneGroup(<item:undergarden:shiverstone_diamond_ore>, <item:minecraft:diamond>, <item:undergarden:shiverstone>),
	new StoneGroup(<item:undergarden:depthrock_gold_ore>, <item:minecraft:raw_gold>, <item:undergarden:depthrock>),
	new StoneGroup(<item:beyond_earth:mars_ostrum_ore>, <item:beyond_earth:raw_ostrum>, <item:beyond_earth:mars_stone>),
	new StoneGroup(<item:beyond_earth:mars_iron_ore>, <item:minecraft:raw_iron>, <item:beyond_earth:mars_stone>),
	new StoneGroup(<item:beyond_earth:mars_ice_shard_ore>, <item:beyond_earth:ice_shard>, <item:beyond_earth:mars_stone>),
	new StoneGroup(<item:beyond_earth:mars_diamond_ore>, <item:minecraft:diamond>, <item:beyond_earth:mars_stone>),
	new StoneGroup(<item:beyond_earth:glacio_lapis_ore>, <item:minecraft:lapis_lazuli>, <item:beyond_earth:glacio_stone>),
	new StoneGroup(<item:beyond_earth:glacio_ice_shard_ore>, <item:beyond_earth:ice_shard>, <item:beyond_earth:glacio_stone>),
	new StoneGroup(<item:beyond_earth:glacio_coal_ore>, <item:minecraft:coal>, <item:beyond_earth:glacio_stone>),
	new StoneGroup(<item:beyond_earth:glacio_copper_ore>, <item:minecraft:raw_copper>, <item:beyond_earth:glacio_stone>),
	new StoneGroup(<item:beyond_earth:glacio_iron_ore>, <item:minecraft:raw_iron>, <item:beyond_earth:glacio_stone>),
	new StoneGroup(<item:beyond_earth:moon_iron_ore>, <item:minecraft:raw_iron>, <item:beyond_earth:moon_stone>),
	new StoneGroup(<item:beyond_earth:moon_desh_ore>, <item:beyond_earth:raw_desh>, <item:beyond_earth:moon_stone>),
	new StoneGroup(<item:beyond_earth:moon_cheese_ore>, <item:beyond_earth:cheese>, <item:beyond_earth:moon_stone>),
	new StoneGroup(<item:beyond_earth:moon_ice_shard_ore>, <item:beyond_earth:ice_shard>, <item:beyond_earth:moon_stone>),
	new StoneGroup(<item:beyond_earth:venus_coal_ore>, <item:minecraft:coal>, <item:beyond_earth:venus_stone>),
	new StoneGroup(<item:beyond_earth:venus_gold_ore>, <item:minecraft:raw_gold>, <item:beyond_earth:venus_stone>),
	new StoneGroup(<item:beyond_earth:venus_diamond_ore>, <item:minecraft:diamond>, <item:beyond_earth:venus_stone>),
	new StoneGroup(<item:beyond_earth:venus_calorite_ore>, <item:beyond_earth:raw_calorite>, <item:beyond_earth:venus_stone>),
	new StoneGroup(<item:indreb:tin_ore>, <item:create:crushed_tin_ore>, <item:minecraft:cobblestone>),
	new StoneGroup(<item:indreb:deepslate_tin_ore>, <item:create:crushed_tin_ore>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:indreb:deepslate_uranium_ore>, <item:indreb:uranium>, <item:minecraft:cobbled_deepslate>),
	new StoneGroup(<item:indreb:lead_ore>, <item:immersiveengineering:raw_lead>, <item:immersiveengineering:dust_lead>)
] as StoneGroup[];

for group in groups_ore {
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_" + group.raw.registryName.path + "_" + group.stone.registryName.path, {
		"ingredients": [group.ore],
		"results": [
		{
			"item": group.raw.registryName
		},
		{
			"item": group.raw.registryName,
			"chance": 0.75
		},
		{
			"item": group.stone.registryName,
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
}

<recipetype:create:crushing>.addJsonRecipe("custom_crush_lead_indreb", {
		"ingredients": [ {"item": "indreb:deepslate_lead_ore"}],
		"results": [
		{
			"item": "immersiveengineering:raw_lead"
		},
		{
			"item": "immersiveengineering:raw_lead",
			"chance": 0.75
		},
		{
			"item": "minecraft:cobbled_deepslate",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});

	<recipetype:create:crushing>.addJsonRecipe("custom_crush_copper_stone", {
		"ingredients": [ {"item": "minecraft:copper_ore"} ],
		"results": [
		{
			"item": "minecraft:raw_copper",
			"count": 3
		},
		{
			"item": "minecraft:raw_copper",
			"chance": 0.75
		},
		{
			"item": "minecraft:cobblestone",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_copper_deepslate", {
		"ingredients": [ {"item": "minecraft:deepslate_copper_ore"} ],
		"results": [
		{
			"item": "minecraft:raw_copper",
			"count": 3
		},
		{
			"item": "minecraft:raw_copper",
			"chance": 0.75
		},
		{
			"item": "minecraft:cobbled_deepslate",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_moonstone_turquoise", {
		"ingredients": [ {"item": "blue_skies:everbright_moonstone_ore"} ],
		"results": [
		{
			"item": "blue_skies:moonstone_shard",
			"count": 2
		},
		{
			"item": "blue_skies:moonstone_shard",
			"chance": 0.75
		},
		{
			"item": "blue_skies:turquoise_cobblestone",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_moonstone_lunar", {
		"ingredients": [ {"item": "blue_skies:everdawn_moonstone_ore"} ],
		"results": [
		{
			"item": "blue_skies:moonstone_shard",
			"count": 2
		},
		{
			"item": "blue_skies:moonstone_shard",
			"chance": 0.75
		},
		{
			"item": "blue_skies:lunar_cobblestone",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_scrap", {
		"ingredients": [ {"item": "minecraft:ancient_debris"} ],
		"results": [
		{
			"item": "minecraft:netherite_scrap",
			"count": 1
		},
		{
			"item": "minecraft:netherite_scrap",
			"chance": 0.5
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_certus", {
		"ingredients": [ {"item": "ae2:quartz_ore"} ],
		"results": [
		{
			"item": "ae2:certus_quartz_crystal",
			"count": 2
		},
		{
			"item": "ae2:certus_quartz_crystal",
			"chance": 0.5
		},
		{
			"item": "minecraft:cobblestone",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_deepslate_certus", {
		"ingredients": [ {"item": "ae2:deepslate_quartz_ore"} ],
		"results": [
		{
			"item": "ae2:certus_quartz_crystal",
			"count": 2
		},
		{
			"item": "ae2:certus_quartz_crystal",
			"chance": 0.5
		},
		{
			"item": "minecraft:cobbled_deepslate",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});
	
	<recipetype:create:crushing>.addJsonRecipe("custom_crush_blazing_quartz", {
		"ingredients": [ {"item": "malum:blazing_quartz_ore"} ],
		"results": [
		{
			"item": "malum:blazing_quartz",
			"count": 2
		},
		{
			"item": "malum:blazing_quartz",
			"chance": 0.5
		},
		{
			"item": "minecraft:netherrack",
			"chance": 0.12
		},
		{
			"item": "create:experience_nugget",
			"chance": 0.75
		}
		],
		"processingTime": 250
	});

//replacing steel mechanical component recipe
craftingTable.remove(<item:immersiveengineering:component_steel>);
craftingTable.addShaped("component_steel", <item:immersiveengineering:component_steel>, [[<tag:items:forge:plates/steel>, <item:minecraft:air>, <tag:items:forge:plates/steel>], [<item:minecraft:air>, <tag:items:forge:ingots/brass>, <item:minecraft:air>], [<tag:items:forge:plates/steel>, <item:minecraft:air>, <tag:items:forge:plates/steel>]]);

<recipetype:immersiveengineering:blueprint>.addJsonRecipe("component_steel_blueprint", {"inputs":[{"count":2,"base_ingredient":{"tag":"forge:plates/steel"}},{"tag":"forge:ingots/brass"}],"category":"components","result":{"item":"immersiveengineering:component_steel"}});

//replacing create propellor recipe
craftingTable.remove(<item:create:propeller>);
craftingTable.addShaped("custom_propeller", <item:create:propeller>, [[<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>], [<tag:items:forge:plates/steel>, <item:create:andesite_alloy>, <tag:items:forge:plates/steel>], [<item:minecraft:air>, <tag:items:forge:plates/steel>, <item:minecraft:air>]]);

//washing terracotta into colorless terracotta with Create
<recipetype:create:splashing>.addJsonRecipe("washed_terracotta", {"ingredients": [
    {
      "tag": "forge:terracotta"
    }
  ],
  "results": [
    {
      "item": "minecraft:terracotta"
    }
]});

//haunting obsidian to get crying obsidian
<recipetype:create:haunting>.addJsonRecipe("crying_obsidian", {"ingredients": [
    {
      "tag": "forge:obsidian"
    }
  ],
  "results": [
    {
      "item": "minecraft:crying_obsidian"
    }
]});

//extended crafting alternate crusher recipe
mods.extendedcrafting.TableCrafting.addShaped("a303d5b0-2056-454d-9da1-c930208fe653", 0, <item:create:crushing_wheel> * 2, [
	[<item:minecraft:air>, <item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:minecraft:air>], 
	[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:minecraft:oak_planks>, <item:create:andesite_alloy>, <item:create:andesite_alloy>], 
	[<item:create:andesite_alloy>, <item:minecraft:oak_planks>, <item:minecraft:stone>, <item:minecraft:oak_planks>, <item:create:andesite_alloy>], 
	[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:minecraft:oak_planks>, <item:create:andesite_alloy>, <item:create:andesite_alloy>], 
	[<item:minecraft:air>, <item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:minecraft:air>]
]);