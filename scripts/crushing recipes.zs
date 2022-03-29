import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//replacing squeezer recipes

val squeeze_trash as IItemStack[] = [
	<item:minecraft:raw_copper>,
	<item:minecraft:diamond>,
	<item:minecraft:coal>,
	<item:minecraft:raw_gold>,
	<item:minecraft:lapis_lazuli>,
	<item:minecraft:raw_iron>,
	<item:minecraft:netherite_scrap>,
	<item:minecraft:emerald>,
	<item:minecraft:quartz>,
	<item:create:raw_zinc>,
	<item:minecraft:redstone>
];

for item in squeeze_trash{
	<recipetype:integrateddynamics:mechanical_squeezer>.remove(item);
	<recipetype:integrateddynamics:squeezer>.remove(item);
}

<tag:items:forge:ores/gold>.remove(<item:minecraft:nether_gold_ore>);

val raw_ore_squeezing as IItemStack[MCTag<ItemDefinition>] = {
    <tag:items:forge:raw_ores/iron>: <item:create:crushed_iron_ore>,
    <tag:items:forge:raw_ores/gold>: <item:create:crushed_gold_ore>,
    <tag:items:forge:raw_ores/silver>: <item:create:crushed_silver_ore>,
    <tag:items:forge:raw_ores/aluminum>: <item:create:crushed_aluminum_ore>,
    <tag:items:forge:raw_ores/uranium>: <item:create:crushed_uranium_ore>,
    <tag:items:forge:raw_ores/copper>: <item:create:crushed_copper_ore>,
    <tag:items:forge:raw_ores/nickel>: <item:create:crushed_nickel_ore>,
    <tag:items:forge:raw_ores/lead>: <item:create:crushed_lead_ore>,
    <tag:items:forge:raw_materials/zinc>: <item:create:crushed_zinc_ore>,
	<tag:items:forge:ores/diamond>: <item:minecraft:diamond>,
	<tag:items:forge:ores/emerald>: <item:minecraft:emerald>,
	<tag:items:forge:ores/netherite_scrap>: <item:minecraft:netherite_scrap>,
	<tag:items:rosie:malum/soul>: <item:malum:soulstone_cluster>,
	<tag:items:forge:ores/iron>: <item:minecraft:raw_iron>,
	<tag:items:forge:ores/gold>: <item:minecraft:raw_gold>,
	<tag:items:forge:ores/coal>: <item:minecraft:coal>,
	<tag:items:forge:ores/tin>: <item:indreb:raw_tin>,
	<tag:items:forge:ores/lead>: <item:immersiveengineering:raw_lead>,
	<tag:items:forge:ores/silver>: <item:immersiveengineering:raw_silver>,
	<tag:items:forge:ores/uranium>: <item:immersiveengineering:raw_uranium>,
	<tag:items:forge:ores/nickel>: <item:immersiveengineering:raw_nickel>,
	<tag:items:blue_skies:ores/ventium>: <item:blue_skies:raw_ventium>,
	<tag:items:blue_skies:ores/pyrope>: <item:blue_skies:pyrope_gem>,
	<tag:items:blue_skies:ores/diopside>: <item:blue_skies:diopside_gem>,
	<tag:items:blue_skies:ores/falsite>: <item:blue_skies:raw_falsite>,
	<tag:items:blue_skies:ores/horizonite>: <item:blue_skies:raw_horizonite>,
	<tag:items:forge:ores/zinc>: <item:create:raw_zinc>,
	<tag:items:forge:ores/cloggrum>: <item:undergarden:raw_cloggrum>,
	<tag:items:forge:ores/utherium>: <item:undergarden:utherium_crystal>,
	<tag:items:forge:ores/regalium>: <item:undergarden:regalium_crystal>,
	<tag:items:forge:ores/froststeel>: <item:undergarden:raw_froststeel>,
	<tag:items:forge:raw_ores/tin>: <item:create:crushed_tin_ore>
};

for raw, crushed in raw_ore_squeezing{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_" + crushed.registryName.path, {
  "item": raw,
  "result": {
    "items": [
        crushed,
      {
        "item": crushed.registryName,
        "chance": 0.25 as float
      }
    ]
  }
});
}

for raw, crushed in raw_ore_squeezing{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_squeeze_mechanical_" + crushed.registryName.path, {
  "item": raw,
  "result": {
    "items": [
        crushed,
      {
        "item": crushed.registryName,
        "chance": 0.75 as float
      }
    ]
  },
  "duration": 20
});
}

val multi_output_squeezing as IItemStack[MCTag<ItemDefinition>] = {
	<tag:items:forge:ores/quartz>: <item:minecraft:quartz>,
	<tag:items:rosie:malum/blazing>: <item:malum:blazing_quartz>,
	<tag:items:forge:ores/certus_quartz>: <item:ae2:certus_quartz_crystal>,
	<tag:items:blue_skies:ores/moonstone>: <item:blue_skies:moonstone_shard>,
	<tag:items:forge:ores/copper>: <item:minecraft:raw_copper>
};

for raw, crushed in multi_output_squeezing{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_multi_" + crushed.registryName.path, {
  "item": raw,
  "result": {
    "items": [
        {
        "item": {
          "item": crushed.registryName,
          "count": 2
        }
      },
      {
          "item": crushed.registryName,
		  "chance": 0.25
        }
    ]
  }
});
}

for raw, crushed in multi_output_squeezing{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_squeeze_multi_mechanical_" + crushed.registryName.path, {
  "item": raw,
  "result": {
    "items": [
        {
        "item": {
          "item": crushed.registryName,
          "count": 2
        }
      },
      {
          "item": crushed.registryName,
		  "chance": 0.75
      }
    ]
  },
  "duration": 20
});
}

val many_output_squeezing as IItemStack[MCTag<ItemDefinition>] = {
	<tag:items:rosie:nethergold>: <item:minecraft:gold_nugget>,
	<tag:items:forge:ores/lapis>: <item:minecraft:lapis_lazuli>,
	<tag:items:forge:ores/redstone>: <item:minecraft:redstone>,
	
};

for raw, crushed in many_output_squeezing{
    <recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_many_" + crushed.registryName.path, {
  "item": raw,
  "result": {
    "items": [
        {
        "item": {
          "item": crushed.registryName,
          "count": 7
        }
      },
      {
        "item": {
          "item": crushed.registryName,
		  "count": 2
        },
		"chance": 0.5
      }
    ]
  }
});
}

for raw, crushed in many_output_squeezing{
    <recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_squeeze_many_mechanical" + crushed.registryName.path, {
  "item": raw,
  "result": {
    "items": [
       {
        "item": {
          "item": crushed.registryName,
          "count": 9
        }
      },
      {
        "item": {
          "item": crushed.registryName,
		  "count": 3
        },
		"chance": 0.75
      }
    ]
  },
    "duration": 20
});
}

<recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_nether_wart", {
  "item": "minecraft:nether_wart_block",
  "result": {
    "items": [
       {
        "item": {
          "item": "minecraft:nether_wart",
          "count": 5
        }
      },
      {
        "item": {
          "item": "minecraft:nether_wart",
		  "count": 2
        },
		"chance": 0.75
      }
    ]
  },
    "duration": 20
});

<recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_squeeze_nether_wart_mechanical", {
  "item": "minecraft:nether_wart_block",
  "result": {
    "items": [
       {
        "item": {
          "item": "minecraft:nether_wart",
          "count": 6
        }
      },
      {
        "item": {
          "item": "minecraft:nether_wart",
		  "count": 3
        },
		"chance": 0.75
      }
    ]
  },
    "duration": 10
});

<recipetype:integrateddynamics:squeezer>.addJsonRecipe("custom_squeeze_diamond_dust", {
  "item": "minecraft:diamond",
  "result": {
    "items": [
       {
        "item": {
          "item": "indreb:diamond_dust",
          "count": 1
        }
      }
    ]
  },
    "duration": 40
});

<recipetype:integrateddynamics:mechanical_squeezer>.addJsonRecipe("custom_squeeze_diamond_dust_mechanical", {
  "item": "minecraft:diamond",
  "result": {
    "items": [
       {
        "item": {
          "item": "indreb:diamond_dust",
          "count": 1
        }
      },
      {
        "item": {
          "item": "indreb:diamond_dust",
		  "count": 1
        },
		"chance": 0.10
      }
    ]
  },
    "duration": 30
});