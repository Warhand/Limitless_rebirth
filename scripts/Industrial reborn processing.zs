import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

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