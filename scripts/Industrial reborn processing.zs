import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

public class StoneGroupIndreb {
	
	public var ore as IItemStack : get;
	public var raw as IItemStack : get;
	public var stone as IItemStack : get;
	
	public this(ore as IItemStack, raw as IItemStack, stone as IItemStack) {
		this.ore = ore;
		this.raw = raw;
		this.stone = stone;
	}
}

public val crusher_trash as IItemStack[] = [
	<item:indreb:crushed_tin>,
	<item:indreb:crushed_lead>,
	<item:indreb:crushed_copper>,
	<item:indreb:crushed_iron>,
	<item:indreb:crushed_gold>,
	<item:minecraft:diamond>,
	<item:minecraft:emerald>,
	<item:minecraft:netherite_scrap>
];

for item in crusher_trash{
	<recipetype:indreb:crushing>.remove(item);
}

//indreb brass alloy recipe
<recipetype:indreb:alloy_smelting>.addJsonRecipe("indreb_brass", {"ingredients": [
    {
      "tag": "forge:ingots/copper",
      "count": 1
    },
    {
      "tag": "forge:ingots/zinc",
      "count": 1
    }
  ],
  "result": {
    "item": "create:brass_ingot",
    "count": 2
  },
  "experience": 0.5,
  "duration": 560,
  "power_cost": 16});
  
 //raw ores crushed
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

for raw, crushed in raw_crushed_map {
	<recipetype:indreb:crushing>.addJsonRecipe("custom_indreb_" + crushed.registryName.path, 
	{
  "ingredient": 
    raw
  ,
  "result": {
    "item": crushed.registryName,
    "count": 1
  },
  "bonus_result": {
    "item": crushed.registryName,
    "count": 1,
    "chance": 50.0
  },
  "experience": 2.0,
  "duration": 180,
  "power_cost": 8
});
}

//crushing ore indreb

var groups_ore = [
	new StoneGroupIndreb(<item:minecraft:iron_ore>, <item:minecraft:raw_iron>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:minecraft:gold_ore>, <item:minecraft:raw_gold>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:minecraft:deepslate_iron_ore>, <item:minecraft:raw_iron>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:minecraft:deepslate_gold_ore>, <item:minecraft:raw_gold>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:immersiveengineering:ore_aluminum>, <item:immersiveengineering:raw_aluminum>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:immersiveengineering:ore_lead>, <item:immersiveengineering:raw_lead>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:immersiveengineering:ore_silver>, <item:immersiveengineering:raw_silver>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:immersiveengineering:ore_nickel>, <item:immersiveengineering:raw_nickel>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:create:zinc_ore>, <item:create:raw_zinc>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:create:deepslate_zinc_ore>, <item:create:raw_zinc>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:immersiveengineering:ore_uranium>, <item:immersiveengineering:raw_uranium>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:immersiveengineering:deepslate_ore_aluminum>, <item:immersiveengineering:raw_aluminum>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:immersiveengineering:deepslate_ore_lead>, <item:immersiveengineering:raw_lead>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:immersiveengineering:deepslate_ore_silver>, <item:immersiveengineering:raw_silver>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:immersiveengineering:deepslate_ore_nickel>, <item:immersiveengineering:raw_nickel>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:immersiveengineering:deepslate_ore_uranium>, <item:immersiveengineering:raw_uranium>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:blue_skies:ventium_ore>, <item:blue_skies:raw_ventium>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:falsite_ore>, <item:blue_skies:raw_falsite>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everbright_aquite_ore>, <item:blue_skies:raw_aquite>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everbright_charoite_ore>, <item:blue_skies:raw_charoite>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everbright_pyrope_ore>, <item:blue_skies:pyrope_gem>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everbright_emerald_ore>, <item:minecraft:emerald>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everbright_diopside_ore>, <item:blue_skies:diopside_gem>, <item:blue_skies:turquoise_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everdawn_diopside_ore>, <item:blue_skies:diopside_gem>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everdawn_pyrope_ore>, <item:blue_skies:pyrope_gem>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everdawn_aquite_ore>, <item:blue_skies:aquite>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everdawn_charoite_ore>, <item:blue_skies:charoite>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:everdawn_emerald_ore>, <item:minecraft:emerald>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroupIndreb(<item:blue_skies:horizonite_ore>, <item:blue_skies:raw_horizonite>, <item:blue_skies:lunar_cobblestone>),
	new StoneGroupIndreb(<item:undergarden:depthrock_cloggrum_ore>, <item:undergarden:raw_cloggrum>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_cloggrum_ore>, <item:undergarden:raw_cloggrum>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_froststeel_ore>, <item:undergarden:raw_froststeel>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:depthrock_regalium_ore>, <item:undergarden:regalium_crystal>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_regalium_ore>, <item:undergarden:regalium_crystal>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:depthrock_utherium_ore>, <item:undergarden:utherium_crystal>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_utherium_ore>, <item:undergarden:utherium_crystal>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:tremblecrust_utherium_ore>, <item:undergarden:utherium_crystal>, <item:undergarden:tremblecrust>),
	new StoneGroupIndreb(<item:undergarden:depthrock_coal_ore>, <item:minecraft:coal>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_coal_ore>, <item:minecraft:coal>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:depthrock_iron_ore>, <item:minecraft:raw_iron>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_iron_ore>, <item:minecraft:raw_iron>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:depthrock_diamond_ore>, <item:minecraft:diamond>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:undergarden:shiverstone_diamond_ore>, <item:minecraft:diamond>, <item:undergarden:shiverstone>),
	new StoneGroupIndreb(<item:undergarden:depthrock_gold_ore>, <item:minecraft:raw_gold>, <item:undergarden:depthrock>),
	new StoneGroupIndreb(<item:beyond_earth:mars_ostrum_ore>, <item:beyond_earth:raw_ostrum>, <item:beyond_earth:mars_stone>),
	new StoneGroupIndreb(<item:beyond_earth:mars_iron_ore>, <item:minecraft:raw_iron>, <item:beyond_earth:mars_stone>),
	new StoneGroupIndreb(<item:beyond_earth:mars_ice_shard_ore>, <item:beyond_earth:ice_shard>, <item:beyond_earth:mars_stone>),
	new StoneGroupIndreb(<item:beyond_earth:mars_diamond_ore>, <item:minecraft:diamond>, <item:beyond_earth:mars_stone>),
	new StoneGroupIndreb(<item:beyond_earth:glacio_lapis_ore>, <item:minecraft:lapis_lazuli>, <item:beyond_earth:glacio_stone>),
	new StoneGroupIndreb(<item:beyond_earth:glacio_ice_shard_ore>, <item:beyond_earth:ice_shard>, <item:beyond_earth:glacio_stone>),
	new StoneGroupIndreb(<item:beyond_earth:glacio_coal_ore>, <item:minecraft:coal>, <item:beyond_earth:glacio_stone>),
	new StoneGroupIndreb(<item:beyond_earth:glacio_copper_ore>, <item:minecraft:raw_copper>, <item:beyond_earth:glacio_stone>),
	new StoneGroupIndreb(<item:beyond_earth:glacio_iron_ore>, <item:minecraft:raw_iron>, <item:beyond_earth:glacio_stone>),
	new StoneGroupIndreb(<item:beyond_earth:moon_iron_ore>, <item:minecraft:raw_iron>, <item:beyond_earth:moon_stone>),
	new StoneGroupIndreb(<item:beyond_earth:moon_desh_ore>, <item:beyond_earth:raw_desh>, <item:beyond_earth:moon_stone>),
	new StoneGroupIndreb(<item:beyond_earth:moon_cheese_ore>, <item:beyond_earth:cheese>, <item:beyond_earth:moon_stone>),
	new StoneGroupIndreb(<item:beyond_earth:moon_ice_shard_ore>, <item:beyond_earth:ice_shard>, <item:beyond_earth:moon_stone>),
	new StoneGroupIndreb(<item:beyond_earth:venus_coal_ore>, <item:minecraft:coal>, <item:beyond_earth:venus_stone>),
	new StoneGroupIndreb(<item:beyond_earth:venus_gold_ore>, <item:minecraft:raw_gold>, <item:beyond_earth:venus_stone>),
	new StoneGroupIndreb(<item:beyond_earth:venus_diamond_ore>, <item:minecraft:diamond>, <item:beyond_earth:venus_stone>),
	new StoneGroupIndreb(<item:beyond_earth:venus_calorite_ore>, <item:beyond_earth:raw_calorite>, <item:beyond_earth:venus_stone>),
	new StoneGroupIndreb(<item:indreb:tin_ore>, <item:create:crushed_tin_ore>, <item:minecraft:cobblestone>),
	new StoneGroupIndreb(<item:indreb:deepslate_tin_ore>, <item:create:crushed_tin_ore>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:indreb:deepslate_uranium_ore>, <item:indreb:uranium>, <item:minecraft:cobbled_deepslate>),
	new StoneGroupIndreb(<item:indreb:lead_ore>, <item:immersiveengineering:raw_lead>, <item:immersiveengineering:dust_lead>)
] as StoneGroupIndreb[];

for group in groups_ore {
	<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb" + group.raw.registryName.path + "_" + group.stone.registryName.path, {
  "ingredient": 
    group.ore
  ,
  "result": {
    "item": group.raw.registryName,
    "count": 2
  },
  "bonus_result": {
    "item": group.stone.registryName,
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});
}

//ancient debris
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_debris", {
  "ingredient": {
    "item": "minecraft:ancient_debris",
    "count": 1
  },
  "result": {
    "item": "minecraft:netherite_scrap",
    "count": 1
  },
  "bonus_result": {
    "item": "minecraft:netherite_scrap",
    "count": 1,
    "chance": 75.0
  },
  "experience": 2.0,
  "duration": 180,
  "power_cost": 8
});

//diamond ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_diamond", {
  "ingredient": {
    "item": "minecraft:diamond_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:diamond",
    "count": 2
  },
  "bonus_result": {
    "item": "minecraft:cobblestone",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//deepslate diamond ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_deepslate_diamond", {
  "ingredient": {
    "item": "minecraft:deepslate_diamond_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:diamond",
    "count": 2
  },
  "bonus_result": {
    "item": "minecraft:cobbled_deepslate",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//emerald ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_emerald", {
  "ingredient": {
    "item": "minecraft:emerald_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:emerald",
    "count": 2
  },
  "bonus_result": {
    "item": "minecraft:cobblestone",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//deepslate emerald ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_deepslate_emerald", {
  "ingredient": {
    "item": "minecraft:deepslate_emerald_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:emerald",
    "count": 2
  },
  "bonus_result": {
    "item": "minecraft:cobbled_deepslate",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//lapis ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_lapis", {
  "ingredient": {
    "item": "minecraft:lapis_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:lapis_lazuli",
    "count": 12
  },
  "bonus_result": {
    "item": "minecraft:cobblestone",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//deepslate lapis ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_deepslate_lapis", {
  "ingredient": {
    "item": "minecraft:deepslate_lapis_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:lapis_lazuli",
    "count": 14
  },
  "bonus_result": {
    "item": "minecraft:cobbled_deepslate",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//nether quartz
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_quartz", {
  "ingredient": {
    "item": "minecraft:nether_quartz_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:quartz",
    "count": 3
  },
  "bonus_result": {
    "item": "minecraft:netherrack",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//nether gold
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_nether_gold", {
  "ingredient": {
    "item": "minecraft:nether_gold_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:gold_nugget",
    "count": 9
  },
  "bonus_result": {
    "item": "minecraft:netherrack",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//redstone ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_redstone", {
  "ingredient": {
    "item": "minecraft:redstone_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:redstone",
    "count": 7
  },
  "bonus_result": {
    "item": "minecraft:cobblestone",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//deepslate redstone ore
<recipetype:indreb:crushing>.addJsonRecipe("custom_crush_indreb_deepslate_redstone", {
  "ingredient": {
    "item": "minecraft:deepslate_redstone_ore",
    "count": 1
  },
  "result": {
    "item": "minecraft:redstone",
    "count": 8
  },
  "bonus_result": {
    "item": "minecraft:cobbled_deepslate",
    "count": 1,
    "chance": 50.0
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});

//sawmill compat for various modded logs

val log_planks_map as IItemStack[IIngredient] = {
	<tag:items:biomesoplenty:fir_logs>.asIIngredient(): <item:biomesoplenty:fir_planks>,
	<tag:items:biomesoplenty:redwood_logs>.asIIngredient(): <item:biomesoplenty:redwood_planks>,
	<tag:items:biomesoplenty:mahogany_logs>.asIIngredient(): <item:biomesoplenty:mahogany_planks>,
	<tag:items:biomesoplenty:cherry_logs>.asIIngredient(): <item:biomesoplenty:cherry_planks>,
	<tag:items:biomesoplenty:jacaranda_logs>.asIIngredient(): <item:biomesoplenty:jacaranda_planks>,
	<tag:items:biomesoplenty:dead_logs>.asIIngredient(): <item:biomesoplenty:dead_planks>,
	<tag:items:biomesoplenty:palm_logs>.asIIngredient(): <item:biomesoplenty:palm_planks>,
	<tag:items:biomesoplenty:willow_logs>.asIIngredient(): <item:biomesoplenty:willow_planks>,
	<tag:items:biomesoplenty:magic_logs>.asIIngredient(): <item:biomesoplenty:magic_planks>,
	<tag:items:biomesoplenty:umbran_logs>.asIIngredient(): <item:biomesoplenty:umbran_planks>,
	<tag:items:biomesoplenty:hellbark_logs>.asIIngredient(): <item:biomesoplenty:hellbark_planks>,
	<tag:items:blue_skies:logs/bluebright>.asIIngredient(): <item:blue_skies:bluebright_planks>,
	<tag:items:blue_skies:logs/starlit>.asIIngredient(): <item:blue_skies:starlit_planks>,
	<tag:items:blue_skies:logs/frostbright>.asIIngredient(): <item:blue_skies:frostbright_planks>,
	<tag:items:blue_skies:logs/lunar>.asIIngredient(): <item:blue_skies:lunar_planks>,
	<tag:items:blue_skies:logs/dusk>.asIIngredient(): <item:blue_skies:dusk_planks>,
	<tag:items:blue_skies:logs/maple>.asIIngredient(): <item:blue_skies:maple_planks>,
	<tag:items:blue_skies:logs/crystallized>.asIIngredient(): <item:blue_skies:crystallized_planks>,
	<tag:items:blue_skies:logs/cherry>.asIIngredient(): <item:blue_skies:cherry_planks>,
	<tag:items:botania:livingwood_logs>.asIIngredient(): <item:botania:livingwood_planks>,
	<tag:items:botania:dreamwood_logs>.asIIngredient(): <item:botania:dreamwood_planks>,
	<tag:items:undergarden:smogstem_logs>.asIIngredient(): <item:undergarden:smogstem_planks>,
	<tag:items:undergarden:wigglewood_logs>.asIIngredient(): <item:undergarden:wigglewood_planks>,
	<tag:items:undergarden:grongle_logs>.asIIngredient(): <item:undergarden:grongle_planks>,
	<tag:items:forge:logs/archwood>.asIIngredient(): <item:ars_nouveau:archwood_planks>,
	<tag:items:integrateddynamics:menril_logs>.asIIngredient(): <item:integrateddynamics:menril_planks>,
	<tag:items:malum:soulwood_logs>.asIIngredient(): <item:malum:soulwood_planks>,
	<tag:items:malum:runewood_logs>.asIIngredient(): <item:malum:runewood_planks>,
	<tag:items:valhelsia_structures:lapidified_jungle_logs>.asIIngredient(): <item:valhelsia_structures:lapidified_jungle_planks>
};

for log, planks in log_planks_map {
<recipetype:indreb:sawing>.addJsonRecipe("custom_indreb_" + planks.registryName.path + "_" + planks.registryName.namespace, 
	{
  "ingredient": 
    log
  ,
  "result": {
    "item": planks.registryName,
    "count": 6
  },
  "bonus_result": {
    "item": "indreb:sawdust",
    "count": 1,
    "chance": 25.0
  },
  "experience": 0.2,
  "duration": 180,
  "power_cost": 8
});
}

//skystone dust to iridium shard
<recipetype:indreb:compressing>.addJsonRecipe("custom_indreb_iridium_shard",
{"ingredient": {
    "item": "ae2:sky_dust",
    "count": 9
  },
  "result": {
    "item": "indreb:iridium_shard"
  },
  "experience": 1.0,
  "duration": 180,
  "power_cost": 8
});