import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

val crushers_remove as IItemStack[] = [
	<item:ae2:certus_quartz_crystal>,
	<item:beyond_earth:raw_calorite>,
	<item:beyond_earth:raw_desh>,
	<item:beyond_earth:raw_ostrum>,
	<item:blue_skies:raw_aquite>,
	<item:blue_skies:raw_charoite>,
	<item:blue_skies:raw_falsite>,
	<item:blue_skies:raw_horizonite>,
	<item:blue_skies:raw_ventium>,
	<item:create:crushed_aluminum_ore>,
	<item:create:crushed_copper_ore>,
	<item:create:crushed_gold_ore>,
	<item:create:crushed_iron_ore>,
	<item:create:crushed_lead_ore>,
	<item:create:crushed_nickel_ore>,
	<item:create:crushed_silver_ore>,
	<item:create:crushed_tin_ore>,
	<item:create:crushed_uranium_ore>,
	<item:create:crushed_zinc_ore>,
	<item:create:raw_zinc>,
	<item:immersiveengineering:dust_aluminum>,
	<item:immersiveengineering:dust_copper>,
	<item:immersiveengineering:dust_gold>,
	<item:immersiveengineering:dust_iron>,
	<item:immersiveengineering:dust_lead>,
	<item:immersiveengineering:dust_nickel>,
	<item:immersiveengineering:dust_silver>,
	<item:immersiveengineering:dust_uranium>,
	<item:immersiveengineering:raw_aluminum>,
	<item:immersiveengineering:raw_lead>,
	<item:immersiveengineering:raw_nickel>,
	<item:immersiveengineering:raw_silver>,
	<item:immersiveengineering:raw_uranium>,
	<item:indreb:raw_lead>,
	<item:indreb:raw_tin>,
	<item:jaopca:create_crushed_ores.aluminum>,
	<item:jaopca:create_crushed_ores.calorite>,
	<item:jaopca:create_crushed_ores.cloggrum>,
	<item:jaopca:create_crushed_ores.cobalt>,
	<item:jaopca:create_crushed_ores.desh>,
	<item:jaopca:create_crushed_ores.froststeel>,
	<item:jaopca:create_crushed_ores.lead>,
	<item:jaopca:create_crushed_ores.netherite_scrap> ,
	<item:jaopca:create_crushed_ores.nickel>,
	<item:jaopca:create_crushed_ores.osmium>,
	<item:jaopca:create_crushed_ores.ostrum>,
	<item:jaopca:create_crushed_ores.regalium>,
	<item:jaopca:create_crushed_ores.silver>,
	<item:jaopca:create_crushed_ores.tin>,
	<item:jaopca:create_crushed_ores.uranium>,
	<item:jaopca:create_crushed_ores.utherium>,
	<item:jaopca:dusts.calorite>,
	<item:jaopca:dusts.cloggrum>,
	<item:jaopca:dusts.cobalt>,
	<item:jaopca:dusts.desh>,
	<item:jaopca:dusts.froststeel>,
	<item:jaopca:dusts.netherite_scrap>,
	<item:jaopca:dusts.osmium>,
	<item:jaopca:dusts.ostrum>,
	<item:jaopca:dusts.regalium>,
	<item:jaopca:dusts.utherium>,
	<item:jaopca:dusts.zinc>,
	<item:minecraft:amethyst_shard>,
	<item:minecraft:coal>,
	<item:minecraft:diamond>,
	<item:minecraft:emerald>,
	<item:minecraft:lapis_lazuli>,
	<item:minecraft:netherite_scrap>,
	<item:minecraft:quartz>,
	<item:minecraft:raw_copper>,
	<item:minecraft:raw_gold>,
	<item:minecraft:raw_iron>,
	<item:minecraft:redstone>,
	<item:tconstruct:raw_cobalt>,
	<item:undergarden:raw_cloggrum>,
	<item:undergarden:raw_froststeel>,
	<item:undergarden:regalium_crystal>,
	<item:indreb:crushed_tin>,
	<item:indreb:crushed_lead>,
	<item:indreb:crushed_copper>,
	<item:indreb:crushed_iron>,
	<item:indreb:crushed_gold>
];

for item in crushers_remove{
	<recipetype:integrateddynamics:mechanical_squeezer>.remove(item);
	<recipetype:integrateddynamics:squeezer>.remove(item);
	<recipetype:create:crushing>.remove(item);
	<recipetype:immersiveengineering:crusher>.remove(item);
	<recipetype:indreb:crushing>.remove(item);
	<recipetype:ars_nouveau:crush>.remove(item);
}

val ore_to_raw_map as IItemStack[IIngredient] = {
	<tag:items:forge:ores/iron>.asIIngredient(): <item:minecraft:raw_iron>,
	<tag:items:forge:ores/copper>.asIIngredient(): <item:minecraft:raw_copper>,
	<tag:items:forge:ores/gold>.asIIngredient(): <item:minecraft:raw_gold>,
	<tag:items:forge:ores/zinc>.asIIngredient(): <item:create:raw_zinc>,
	<tag:items:forge:ores/tin>.asIIngredient(): <item:indreb:raw_tin>,
	<tag:items:forge:ores/silver>.asIIngredient(): <item:immersiveengineering:raw_silver>,
	<tag:items:forge:ores/froststeel>.asIIngredient(): <item:undergarden:raw_froststeel>,
	<tag:items:forge:ores/lead>.asIIngredient(): <item:immersiveengineering:raw_lead>,
	<tag:items:forge:ores/aluminum>.asIIngredient(): <item:immersiveengineering:raw_aluminum>,
	<tag:items:forge:ores/nickel>.asIIngredient(): <item:immersiveengineering:raw_nickel>,
	<tag:items:forge:ores/uranium>.asIIngredient(): <item:immersiveengineering:raw_uranium>,
	<tag:items:forge:ores/cloggrum>.asIIngredient(): <item:undergarden:raw_cloggrum>,
	<tag:items:forge:ores/ostrum>.asIIngredient(): <item:beyond_earth:raw_ostrum>,
	<tag:items:forge:ores/cobalt>.asIIngredient(): <item:tconstruct:raw_cobalt>,
	<tag:items:forge:ores/calorite>.asIIngredient(): <item:beyond_earth:raw_calorite>,
	<tag:items:forge:ores/desh>.asIIngredient(): <item:beyond_earth:raw_desh>
};

val raw_to_crushed_map as IItemStack[IIngredient] = {
	<tag:items:forge:raw_ores/iron>.asIIngredient(): <item:create:crushed_iron_ore>,
	<tag:items:forge:raw_materials/copper>.asIIngredient(): <item:create:crushed_copper_ore>,
	<tag:items:forge:raw_materials/gold>.asIIngredient(): <item:create:crushed_gold_ore>,
	<tag:items:forge:raw_materials/zinc>.asIIngredient(): <item:create:crushed_zinc_ore>,
	<tag:items:forge:raw_ores/tin>.asIIngredient(): <item:create:crushed_tin_ore>,
	<tag:items:forge:raw_ores/silver>.asIIngredient(): <item:create:crushed_silver_ore>,
	<item:undergarden:raw_froststeel>: <item:jaopca:create_crushed_ores.froststeel>,
	<tag:items:forge:raw_ores/lead>.asIIngredient(): <item:create:crushed_lead_ore>,
	<tag:items:forge:raw_ores/aluminum>.asIIngredient(): <item:create:crushed_aluminum_ore>,
	<tag:items:forge:raw_ores/nickel>.asIIngredient(): <item:create:crushed_nickel_ore>,
	<tag:items:forge:raw_ores/uranium>.asIIngredient(): <item:create:crushed_uranium_ore>,
	<item:undergarden:raw_cloggrum>: <item:jaopca:create_crushed_ores.cloggrum>,
	<tag:items:forge:raw_materials/ostrum>.asIIngredient(): <item:jaopca:create_crushed_ores.ostrum>,
	<tag:items:forge:raw_materials/cobalt>.asIIngredient(): <item:jaopca:create_crushed_ores.cobalt>,
	<tag:items:forge:raw_materials/calorite>.asIIngredient(): <item:jaopca:create_crushed_ores.calorite>,
	<tag:items:forge:raw_materials/desh>.asIIngredient(): <item:jaopca:create_crushed_ores.desh>
};

val crushed_to_dust_map as IItemStack[IIngredient] = {
	<item:create:crushed_iron_ore>: <item:immersiveengineering:dust_iron>,
	<item:create:crushed_copper_ore>: <item:immersiveengineering:dust_copper>,
	<item:create:crushed_gold_ore>: <item:immersiveengineering:dust_gold>,
	<item:create:crushed_zinc_ore>: <item:jaopca:dusts.zinc>,
	<item:create:crushed_tin_ore>: <item:indreb:crushed_tin>,
	<item:create:crushed_silver_ore>: <item:immersiveengineering:dust_silver>,
	<item:jaopca:create_crushed_ores.froststeel>: <item:jaopca:dusts.froststeel>,
	<item:create:crushed_lead_ore>: <item:immersiveengineering:dust_lead>,
	<item:create:crushed_aluminum_ore>: <item:immersiveengineering:dust_aluminum>,
	<item:create:crushed_nickel_ore>: <item:immersiveengineering:dust_nickel>,
	<item:create:crushed_uranium_ore>: <item:immersiveengineering:dust_uranium>,
	<item:jaopca:create_crushed_ores.cloggrum>: <item:jaopca:dusts.cloggrum>,
	<item:jaopca:create_crushed_ores.ostrum>: <item:jaopca:dusts.ostrum>,
	<item:jaopca:create_crushed_ores.cobalt>: <item:jaopca:dusts.cobalt>,
	<item:jaopca:create_crushed_ores.calorite>: <item:jaopca:dusts.calorite>,
	<item:jaopca:create_crushed_ores.desh>: <item:jaopca:dusts.desh>
};

//basic ID squeezer

for input, output in ore_to_raw_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
      {
       "item": {
          "item": output.registryName,
          "count": 2
        },
		{
        "item": output.registryName,
        "chance": 0.15 as float
       }
      }
    ]
  }
});
}

for input, output in raw_to_crushed_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.15 as float
      }
    ]
  }
});
}

for input, output in crushed_to_dust_map{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.15 as float
      }
    ]
  }
});
}

//mechanical squeezer

for input, output in ore_to_raw_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
      {
       "item": {
          "item": output.registryName,
          "count": 2
        }
      },
	  {
        "item": output.registryName,
        "chance": 0.75 as float
      }
    ]
  },
  "duration": 20
});
}

for input, output in raw_to_crushed_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
	  {
        "item": output.registryName,
        "chance": 0.25 as float
      }
    ]
  },
  "duration": 20
});
}

for input, output in crushed_to_dust_map{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_mechanical_squeeze_" + output.registryName.path, {
  "item": input,
  "result": {
    "items": [
        output,
      {
        "item": output.registryName,
        "chance": 0.25 as float
      }
    ]
  },
  "duration": 20
});
}

//ars crushing spell

for input, output in ore_to_raw_map{
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + output.registryName.path, 
	{
 "input":input,
  "output": [
    {
      "item": output.registryName,
      "chance": 1.0,
      "count": 3
    },
	{
      "item": output.registryName,
      "chance": 0.5,
      "count": 1
    }
  ]
});
}

//Industrial reborn crusher

for input, output in ore_to_raw_map{
	<recipetype:indreb:crushing>.addJsonRecipe("custom_indreb_crushing_" + output.registryName.path, 
	{
  "ingredient": 
    input
  ,
  "result": {
    "item": output.registryName,
    "count": 2
  },
  "bonus_result": {
    "item": output.registryName,
    "count": 1,
    "chance": 25.0
  },
  "experience": 2.0,
  "duration": 180,
  "power_cost": 8
});
}

for input, output in raw_to_crushed_map{
	<recipetype:indreb:crushing>.addJsonRecipe("custom_indreb_crushing_" + output.registryName.path, 
	{
  "ingredient": 
    input
  ,
  "result": {
    "item": output.registryName,
    "count": 1
  },
  "bonus_result": {
    "item": output.registryName,
    "count": 1,
    "chance": 50.0
  },
  "experience": 2.0,
  "duration": 180,
  "power_cost": 8
});
}

for input, output in crushed_to_dust_map{
	<recipetype:indreb:crushing>.addJsonRecipe("custom_indreb_crushing_" + output.registryName.path, 
	{
  "ingredient": 
    input
  ,
  "result": {
    "item": output.registryName,
    "count": 1
  },
  "bonus_result": {
    "item": output.registryName,
    "count": 1,
    "chance": 25.0
  },
  "experience": 2.0,
  "duration": 180,
  "power_cost": 8
});
}

//create crushing wheels

for input, output in ore_to_raw_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 2
	},
    {
		"item": output.registryName,
		"chance": 0.5
    },
    {
      "item": "create:experience_nugget",
      "chance": 0.5
    }
  ],
  "processingTime": 400
});
}

for input, output in raw_to_crushed_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName,
		"count": 1
	},
	{
		"item": output.registryName,
		"chance": 0.75
    }
  ],
  "processingTime": 400
});
}

for input, output in crushed_to_dust_map{
	<recipetype:create:crushing>.addJsonRecipe("custom_create_crushing_" + output.registryName.path, 
	{
  "ingredients": [ input ],
  "results": [
    { 
		"item": output.registryName
	},
    {
		"item": output.registryName,
		"chance": 0.25
    }
  ],
  "processingTime": 400
});
}

//Immersive engineering crusher

for input, output in ore_to_raw_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.5,"output":{"item":output.registryName}}],"result":{"count":2,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in raw_to_crushed_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.25,"output":{"item":output.registryName}}],"result":{"count":1,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}

for input, output in crushed_to_dust_map{
<recipetype:immersiveengineering:crusher>.addJsonRecipe("custom_ie_crushing_" + output.registryName.path, 
{
"secondaries":[{"chance":0.75,"output":{"item":output.registryName}}],"result":{"count":1,"base_ingredient":{"item":output.registryName}},"input":input,"energy":6000
});
}