#priority 20

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//adding tag for ores
<tag:items:rosie:malum/blazing>.add(<item:malum:blazing_quartz_ore>);
<tag:items:rosie:malum/soul>.add(<item:malum:soulstone_ore>);
<tag:items:rosie:malum/soul>.add(<item:malum:deepslate_soulstone_ore>);
<tag:items:rosie:malum/soulraw>.add(<item:malum:soulstone_cluster>);
<tag:items:rosie:nethergold>.add(<item:minecraft:nether_gold_ore>);
<tag:items:forge:raw_ores/tin>.add(<item:indreb:raw_tin>);

//adding immersive engineering bottling recipe for create honeyed apple
<recipetype:immersiveengineering:bottling_machine>.addJsonRecipe("bottling_honeyed_apple", {"result":{"item":"create:honeyed_apple"},"input":{"item":"minecraft:apple"},"fluid":{"tag":"forge:honey","amount":250}});

//powdered snow recipe
craftingTable.addShaped("powdered_snow", <item:minecraft:powder_snow_bucket>, [[<item:minecraft:ice>, <item:minecraft:snowball>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:water_bucket>, <item:minecraft:ice>], [<item:minecraft:ice>, <item:minecraft:ice>, <item:minecraft:ice>]]);

//apotheosis ender lead
craftingTable.remove(<item:apotheosis:ender_lead>);
craftingTable.addShaped("ender_lead", <item:apotheosis:ender_lead>, [[<item:minecraft:twisting_vines>, <item:minecraft:twisting_vines>, IIngredientEmpty.getInstance()], [<item:minecraft:twisting_vines>, <item:minecraft:ender_eye>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance(), <item:minecraft:twisting_vines>]]);

//waystones warp stone
craftingTable.remove(<item:waystones:warp_stone>);
craftingTable.addShaped("waystones_warp_stone", <item:waystones:warp_stone>, [[<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>], [<item:minecraft:ender_pearl>, <tag:items:balm:emeralds>, <item:minecraft:ender_pearl>], [<item:waystones:warp_dust>, <item:minecraft:ender_pearl>, <item:waystones:warp_dust>]]);

//waystones warp dust
craftingTable.remove(<item:waystones:warp_dust>);
craftingTable.addShapeless("waystones_warp_dust", <item:waystones:warp_dust> * 4, [<item:minecraft:ender_eye>, <item:minecraft:chorus_flower>, <item:minecraft:redstone>]);

//waystone warp plate 
craftingTable.remove(<item:waystones:warp_plate>);
craftingTable.addShaped("warp_plate", <item:waystones:warp_plate>, [[<item:minecraft:stone_bricks>, <item:waystones:warp_dust>, <item:minecraft:stone_bricks>], [<item:waystones:warp_dust>, <item:minecraft:emerald>, <item:waystones:warp_dust>], [<item:minecraft:stone_bricks>, <item:waystones:warp_dust>, <item:minecraft:stone_bricks>]]);

//minecraft lightning rod
craftingTable.remove(<item:minecraft:lightning_rod>);
craftingTable.addShaped("minecraft_lightning_rod", <item:minecraft:lightning_rod>, [[<tag:items:forge:storage_blocks/copper>], [<tag:items:forge:rods/copper>], [<tag:items:forge:rods/copper>]]);

//quark ender watcher
craftingTable.remove(<item:quark:ender_watcher>);
craftingTable.addShaped("quark_ender_watcher", <item:quark:ender_watcher>, [[<item:minecraft:obsidian>, <tag:items:forge:dusts/redstone>, <item:minecraft:obsidian>], [<tag:items:forge:dusts/redstone>, <item:cyclic:eye_redstone>, <tag:items:forge:dusts/redstone>], [<item:minecraft:obsidian>, <tag:items:forge:dusts/redstone>, <item:minecraft:obsidian>]]);

//pretty pipes blank module
craftingTable.remove(<item:prettypipes:blank_module>);
craftingTable.addShaped("prettypipes_blank_module", <item:prettypipes:blank_module>, [[<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:quartz>], [<item:minecraft:smooth_stone_slab>, <item:prettypipes:pipe>, <item:minecraft:smooth_stone_slab>], [<item:minecraft:quartz>, <item:minecraft:redstone>, <item:minecraft:quartz>]]);

//pretty pipes wrench
craftingTable.remove(<item:prettypipes:wrench>);
craftingTable.addShapedMirrored("prettypipes_wrench", <constant:minecraft:mirroraxis:all>, <item:prettypipes:wrench>, [[IIngredientEmpty.getInstance(), <item:prettypipes:pipe>, <tag:items:forge:plates/steel>], [<item:minecraft:red_terracotta>, <tag:items:forge:plates/steel>, <tag:items:forge:plates/steel>], [IIngredientEmpty.getInstance(), <item:minecraft:red_terracotta>, IIngredientEmpty.getInstance()]]);

//pretty pipes pipe
craftingTable.remove(<item:prettypipes:pipe>);
craftingTable.addShaped("prettypipes_pipe", <item:prettypipes:pipe> * 4, [[<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>], [<tag:items:forge:fences/steel>, <item:quark:framed_glass>, <tag:items:forge:fences/steel>], [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>]]);

//pretty pipes item terminal
craftingTable.remove(<item:prettypipes:item_terminal>);
craftingTable.addShaped("prettypipes_item_terminal", <item:prettypipes:item_terminal>, [[<tag:items:forge:sheetmetals/steel>, <item:quark:ender_watcher>, <tag:items:forge:sheetmetals/steel>], [<item:prettypipes:high_retrieval_module>, <item:quark:crate>, <item:prettypipes:high_extraction_module>], [<tag:items:forge:sheetmetals/steel>, <item:create:portable_storage_interface>, <tag:items:forge:sheetmetals/steel>]]);

//pretty pipes crafting terminal
craftingTable.remove(<item:prettypipes:crafting_terminal>);
craftingTable.addShaped("prettypipes_crafting_terminal", <item:prettypipes:crafting_terminal>, [[<item:minecraft:diamond>, <item:cyclic:workbench>, <item:minecraft:diamond>], [<item:minecraft:comparator>, <item:prettypipes:item_terminal>, <item:minecraft:comparator>], [<item:minecraft:diamond>, <item:immersiveengineering:rs_engineering>, <item:minecraft:diamond>]]);

//pretty pipes pressurizer
craftingTable.remove(<item:prettypipes:pressurizer>);
craftingTable.addShaped("prettypipes_pressurizer", <item:prettypipes:pressurizer>, [[<tag:items:forge:ingots/steel>, <item:prettypipes:high_speed_module>, <tag:items:forge:ingots/steel>], [<item:prettypipes:high_speed_module>, <item:immersiveengineering:capacitor_mv>, <item:prettypipes:high_speed_module>], [<tag:items:forge:ingots/steel>, <item:prettypipes:high_speed_module>, <tag:items:forge:ingots/steel>]]);

//quark crate
craftingTable.remove(<item:quark:crate>);
craftingTable.addShaped("quark_oddities_crate", <item:quark:crate>, [[<tag:items:forge:plates/iron>, <tag:items:minecraft:planks>, <tag:items:forge:plates/iron>], [<tag:items:minecraft:planks>, <tag:items:forge:barrels/wooden>, <tag:items:minecraft:planks>], [<tag:items:forge:plates/iron>, <tag:items:minecraft:planks>, <tag:items:forge:plates/iron>]]);

//integrated dynamics logic cable
craftingTable.remove(<item:integrateddynamics:cable>);
craftingTable.addShapedMirrored("integrateddynamics_crafting_cable", <constant:minecraft:mirroraxis:all>, <item:integrateddynamics:cable> * 4, [[<item:integrateddynamics:crystalized_menril_chunk>, <item:minecraft:end_rod>, <item:integrateddynamics:crystalized_menril_chunk>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:immersiveengineering:rs_engineering>, <item:integrateddynamics:crystalized_menril_chunk>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:minecraft:end_rod>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//quark copper pipe
craftingTable.remove(<item:quark:pipe>);
craftingTable.addShaped("quark_oddities_crafting_pipe", <item:quark:pipe> * 8, [[<tag:items:forge:ingots/copper>], [<item:quark:framed_glass>], [<tag:items:forge:ingots/copper>]]);

//pipez item pipe
craftingTable.remove(<item:pipez:item_pipe>);
craftingTable.addShaped("pipez_item_pipe", <item:pipez:item_pipe> * 8, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/electrum>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/electrum>, <item:minecraft:hopper>, <tag:items:forge:ingots/electrum>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/electrum>, <tag:items:forge:ingots/iron>]]);

//pipez fluid pipe
craftingTable.remove(<item:pipez:fluid_pipe>);
craftingTable.addShaped("pipez_fluid_pipe", <item:pipez:fluid_pipe> * 8, [[<tag:items:forge:ingots/iron>, <item:minecraft:diamond>, <tag:items:forge:ingots/iron>], [<item:minecraft:diamond>, <item:minecraft:bucket>, <item:minecraft:diamond>], [<tag:items:forge:ingots/iron>, <item:minecraft:diamond>, <tag:items:forge:ingots/iron>]]);

//pipez energy pipe
craftingTable.remove(<item:pipez:energy_pipe>);
craftingTable.addShaped("pipez_energy_pipe", <item:pipez:energy_pipe> * 8, [[<tag:items:forge:ingots/iron>, <item:create:rose_quartz>, <tag:items:forge:ingots/iron>], [<item:create:rose_quartz>, <item:minecraft:redstone_block>, <item:create:rose_quartz>], [<tag:items:forge:ingots/iron>, <item:create:rose_quartz>, <tag:items:forge:ingots/iron>]]);

//pipez universal pipe
craftingTable.remove(<item:pipez:universal_pipe>);
craftingTable.addShapedMirrored("pipez_universal_pipe1", <constant:minecraft:mirroraxis:all>, <item:pipez:universal_pipe> * 6, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [<item:pipez:fluid_pipe>, <item:pipez:item_pipe>, <item:pipez:energy_pipe>], [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>]]);

craftingTable.addShapedMirrored("pipez_universal_pipe2", <constant:minecraft:mirroraxis:all>, <item:pipez:universal_pipe> * 6, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [<item:pipez:energy_pipe>, <item:pipez:fluid_pipe>, <item:pipez:item_pipe>], [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>]]);

craftingTable.addShapedMirrored("pipez_universal_pipe3", <constant:minecraft:mirroraxis:all>, <item:pipez:universal_pipe> * 6, [[<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>], [<item:pipez:item_pipe>, <item:pipez:energy_pipe>, <item:pipez:fluid_pipe>], [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/steel>]]);

//pipez basic pipe upgrade
craftingTable.remove(<item:pipez:basic_upgrade>);
craftingTable.addShaped("pipez_basic_upgrade", <item:pipez:basic_upgrade>, [[<tag:items:forge:plates/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/iron>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:storage_blocks/redstone>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:plates/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/iron>]]);

//pipez improved pipe upgrade
craftingTable.remove(<item:pipez:improved_upgrade>);
craftingTable.addShaped("pipez_improved_upgrade", <item:pipez:improved_upgrade>, [[<tag:items:forge:plates/gold>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/gold>], [<tag:items:forge:dusts/redstone>, <item:pipez:basic_upgrade>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:plates/gold>, <tag:items:forge:dusts/redstone>, <tag:items:forge:plates/gold>]]);

//pipez advanced pipe upgrade
craftingTable.remove(<item:pipez:advanced_upgrade>);
craftingTable.addShaped("pipez_advanced_upgrade", <item:pipez:advanced_upgrade>, [[<tag:items:forge:gems/diamond>, <item:immersiveengineering:wirecoil_redstone>, <tag:items:forge:gems/diamond>], [<item:immersiveengineering:wirecoil_redstone>, <item:pipez:improved_upgrade>, <item:immersiveengineering:wirecoil_redstone>], [<tag:items:forge:gems/diamond>, <item:immersiveengineering:wirecoil_redstone>, <tag:items:forge:gems/diamond>]]);

//pipez ultimate pipe upgrade
craftingTable.remove(<item:pipez:ultimate_upgrade>);
craftingTable.addShaped("pipez_ultimate_upgrade", <item:pipez:ultimate_upgrade>, [[<tag:items:forge:plates/netherite>, <item:immersiveengineering:rs_engineering>, <tag:items:forge:plates/netherite>], [<item:immersiveengineering:rs_engineering>, <item:pipez:advanced_upgrade>, <item:immersiveengineering:rs_engineering>], [<tag:items:forge:plates/netherite>, <item:immersiveengineering:rs_engineering>, <tag:items:forge:plates/netherite>]]);

//integrated dynamics wrench
craftingTable.remove(<item:integrateddynamics:wrench>);
craftingTable.addShaped("integrateddynamics_crafting_wrench", <item:integrateddynamics:wrench>, [[IIngredientEmpty.getInstance(), <item:integrateddynamics:crystalized_menril_chunk>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), <tag:items:integrateddynamics:menril_logs>, <item:integrateddynamics:crystalized_menril_chunk>], [<tag:items:integrateddynamics:menril_logs>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//integrated dynamics item interface
craftingTable.remove(<item:integratedtunnels:part_interface_item>);
craftingTable.addShaped("integratedtunnels_crafting_part_interface_item", <item:integratedtunnels:part_interface_item> * 2, [[<item:integrateddynamics:cable>, <item:create:portable_storage_interface>, <item:integrateddynamics:cable>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamics energy interface
craftingTable.remove(<item:integratedtunnels:part_interface_energy>);
craftingTable.addShaped("integratedtunnels_crafting_part_interface_energy", <item:integratedtunnels:part_interface_energy> * 2, [[<item:integrateddynamics:cable>, <item:immersiveengineering:coil_mv>, <item:integrateddynamics:cable>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamics fluid interface
craftingTable.remove(<item:integratedtunnels:part_interface_fluid>);
craftingTable.addShaped("integratedtunnels_crafting_part_interface_fluid", <item:integratedtunnels:part_interface_fluid> * 2, [[<item:integrateddynamics:cable>, <item:create:portable_fluid_interface>, <item:integrateddynamics:cable>], [<item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>, <item:integrateddynamics:crystalized_menril_chunk>]]);

//integrated dynamic input variable transformer
craftingTable.remove(<item:integrateddynamics:variable_transformer_input>);
craftingTable.addShaped("integrateddynamics_crafting_variable_transformer_input", <item:integrateddynamics:variable_transformer_input> * 2, [[IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()], [<item:integrateddynamics:cable>, <item:minecraft:sticky_piston>, <item:integrateddynamics:cable>], [IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()]]);

//integrated dynamics output variable transformer
craftingTable.remove(<item:integrateddynamics:variable_transformer_output>);
craftingTable.addShaped("integrateddynamics_crafting_variable_transformer_output", <item:integrateddynamics:variable_transformer_output> * 2, [[IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()], [<item:integrateddynamics:cable>, <item:minecraft:piston>, <item:integrateddynamics:cable>], [IIngredientEmpty.getInstance(), <item:integrateddynamics:variable>, IIngredientEmpty.getInstance()]]);

//integrated dynamics battery
craftingTable.remove(<item:integrateddynamics:energy_battery>);
craftingTable.addShaped("integrateddynamics_crafting_energy_battery", <item:integrateddynamics:energy_battery>.withTag({energy: 0 as int}), [[<tag:items:integrateddynamics:menril_logs>, <item:integrateddynamics:crystalized_menril_block>, <tag:items:integrateddynamics:menril_logs>], [<tag:items:integrateddynamics:menril_logs>, <item:immersiveengineering:capacitor_mv>, <tag:items:integrateddynamics:menril_logs>], [<tag:items:integrateddynamics:menril_logs>, <item:integrateddynamics:crystalized_menril_block>, <tag:items:integrateddynamics:menril_logs>]]);

//adding blue skies and undergarden mushrooms into HT's treechop
<tag:blocks:treechop:choppables>.add(<block:blue_skies:snowcap_mushroom_stem>);
<tag:blocks:treechop:leaves_like>.add(<block:blue_skies:snowcap_mushroom_block>);

<tag:blocks:treechop:choppables>.add(<block:undergarden:indigo_mushroom_stalk>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:indigo_mushroom_cap>);

<tag:blocks:treechop:choppables>.add(<block:undergarden:blood_mushroom_stalk>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:blood_mushroom_cap>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:blood_mushroom_globule>);

<tag:blocks:treechop:choppables>.add(<block:undergarden:veil_mushroom_stalk>);
<tag:blocks:treechop:leaves_like>.add(<block:undergarden:veil_mushroom_cap>);

<tag:blocks:treechop:leaves_like>.add(<block:undergarden:ink_mushroom_cap>);

//supplementaries blue bomb
craftingTable.addShapeless("supplementaries_bomb_blue", <item:supplementaries:bomb_blue>, [<item:quark:blue_rune>, <item:supplementaries:bomb>]);

//storage drawers glowing label
craftingTable.remove(<item:storagedrawers:illumination_upgrade>);
craftingTable.addShaped("storagedrawers_illumination_upgrade", <item:storagedrawers:illumination_upgrade> * 8, [[<item:minecraft:glow_ink_sac>, <tag:items:forge:rods/wooden>, <item:minecraft:glow_ink_sac>], [<tag:items:forge:rods/wooden>, <item:storagedrawers:upgrade_template>, <tag:items:forge:rods/wooden>], [<item:minecraft:glow_ink_sac>, <tag:items:forge:rods/wooden>, <item:minecraft:glow_ink_sac>]]);

//waystones return scroll
craftingTable.remove(<item:waystones:return_scroll>);
craftingTable.addShaped("waystones_return_scroll", <item:waystones:return_scroll> * 2, [[<tag:items:balm:gold_nuggets>, <item:waystones:warp_dust>, <tag:items:balm:gold_nuggets>], [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

//waystones bound scroll
craftingTable.remove(<item:waystones:bound_scroll>);
craftingTable.addShaped("waystones_bound_scroll", <item:waystones:bound_scroll> * 4, [[<tag:items:balm:gold_nuggets>, IIngredientEmpty.getInstance(), <tag:items:balm:gold_nuggets>], [<item:waystones:warp_dust>, <tag:items:balm:gold_nuggets>, <item:waystones:warp_dust>], [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

//waystones warp scroll
craftingTable.remove(<item:waystones:warp_scroll>);
craftingTable.addShaped("waystones_warp_scroll", <item:waystones:warp_scroll> * 4, [[<tag:items:balm:gold_nuggets>, <item:waystones:warp_stone>, <tag:items:balm:gold_nuggets>], [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]]);

//infusing enchanted apples with apotheosis
craftingTable.remove(<item:minecraft:enchanted_golden_apple>);
<recipetype:apotheosis:enchanting>.addJsonRecipe("infused_golden_apple", {"input": {
		"item": "minecraft:golden_apple"
	},
	"requirements": {
		"eterna": 20,
		"quanta": 20,
		"arcana": 35
	},
	"max_requirements": {
		"eterna": 30,
		"quanta": 50,
		"arcana": -1
	},
	"result": {
		"item": "minecraft:enchanted_golden_apple",
		"count": 1
}});

//replacing Malum guidebook recipe
craftingTable.remove(<item:malum:encyclopedia_arcana>);
craftingTable.addShapedMirrored("malum_guidebook", <constant:minecraft:mirroraxis:all>, <item:malum:encyclopedia_arcana>, [[IIngredientEmpty.getInstance(), <item:malum:earthen_spirit>, IIngredientEmpty.getInstance()], [<item:malum:aqueous_spirit>, <item:minecraft:book>, <item:malum:aerial_spirit>], [IIngredientEmpty.getInstance(), <item:malum:infernal_spirit>, IIngredientEmpty.getInstance()]]);

//replacing ARS guidebook recipe
craftingTable.remove(<item:ars_nouveau:worn_notebook>);
craftingTable.addShapeless("ars_nouveau_worn_notebook", <item:ars_nouveau:worn_notebook>, [<tag:items:forge:gems/source>, <item:minecraft:book>]);

//adding spirit orb recipe
craftingTable.addShaped("spirit_orb", <item:paraglider:spirit_orb>, [[IIngredientEmpty.getInstance(), <item:botania:life_essence>, IIngredientEmpty.getInstance()], [<item:botania:life_essence>, <item:minecraft:nether_star>, <item:botania:life_essence>], [IIngredientEmpty.getInstance(), <item:botania:life_essence>, IIngredientEmpty.getInstance()]]);

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

//Create storage interface
craftingTable.remove(<item:create:portable_storage_interface>);
craftingTable.addShapeless("portable_storage_interface", <item:create:portable_storage_interface>, [<item:create:andesite_casing>, <item:create:smart_chute>]);

//Create fluid interface
craftingTable.remove(<item:create:portable_fluid_interface>);
craftingTable.addShapeless("portable_fluid_interface", <item:create:portable_fluid_interface>, [<item:create:andesite_casing>, <item:create:smart_chute>]);

//Create fluid tank recipe replaced
craftingTable.remove(<item:create:fluid_tank>);
craftingTable.addShaped("create_fluid_tank", <item:create:fluid_tank>, [[<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>], [<item:quark:framed_glass>, <item:immersiveengineering:wooden_barrel>, <item:quark:framed_glass>], [<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>]]);

//create brass casing new recipe
craftingTable.addShaped("create_brass_casing", <item:create:brass_casing> * 8, [[<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>], [<tag:items:forge:plates/brass>, <tag:items:minecraft:logs>, <tag:items:forge:plates/brass>], [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>]]);

//beyond earth removing blast furnace steel recipe
blastFurnace.remove(<item:beyond_earth:steel_ingot>);

//rose quarts tooltip
<item:biomesoplenty:rose_quartz_shard>.addTooltip("Found in large patches in the nether.");

//rose quartz uncrafting block
craftingTable.addShapeless("uncrafting_rose_quartz", <item:biomesoplenty:rose_quartz_block> * 4, [<item:biomesoplenty:rose_quartz_shard>]);

//indreb lead plate removal
craftingTable.remove(<item:indreb:lead_plate>);

//runic hammer durability upgrade
<item:relics:runic_hammer>. maxDamage = 200;

//beyond earth hammer durability upgrade
<item:beyond_earth:hammer>.maxDamage = 50;

//indreb hammer durability upgrade
craftingTable.remove(<item:indreb:hammer>);
<item:indreb:hammer>.maxDamage = 100;
craftingTable.addShaped("indreb_item_tool_hammer", <item:indreb:hammer>, [[IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>], [<tag:items:forge:rods/wooden>, <tag:items:forge:rods/wooden>, <tag:items:forge:plates/iron>], [IIngredientEmpty.getInstance(), <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]]);

//immersive engineering hammer durability upgrade and recipe change
craftingTable.remove(<item:immersiveengineering:hammer>);
<item:immersiveengineering:hammer>.maxDamage = 100;
craftingTable.addShaped("immersiveengineering_crafting_hammer", <item:immersiveengineering:hammer>, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/lead>, <tag:items:forge:fiber_hemp>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, <tag:items:forge:ingots/lead>], [<tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()]]);

//bundle recipe redo
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.addShaped("bundle", <item:minecraft:bundle>, [[<tag:items:forge:string>, <tag:items:forge:leather>, <tag:items:forge:string>], [<tag:items:forge:leather>, IIngredientEmpty.getInstance(), <tag:items:forge:leather>], [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>]]);

//quarryplus marker plus recipe
craftingTable.remove(<item:quarryplus:marker>);
craftingTable.addShapedMirrored("marker_plus", MirrorAxis.HORIZONTAL, <item:quarryplus:marker>, [[<tag:items:forge:dyes/yellow>, <tag:items:forge:storage_blocks/redstone>, <tag:items:forge:dyes/black>], [<tag:items:forge:dyes/black>, <tag:items:forge:rods/iron>, <tag:items:forge:dyes/yellow>], [<tag:items:forge:dyes/yellow>, <tag:items:forge:rods/iron>, <tag:items:forge:dyes/black>]]);

//quarryplus chunk marker recipe
craftingTable.remove(<item:quarryplus:marker16>);
craftingTable.addShaped("marker_chunk", <item:quarryplus:marker16>, [[IIngredientEmpty.getInstance(), <item:quarryplus:marker>, IIngredientEmpty.getInstance()], [<item:quarryplus:marker>, <tag:items:forge:rods/blaze>, <item:quarryplus:marker>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/blaze>, IIngredientEmpty.getInstance()]]);

//quarryplus recipe
craftingTable.addShaped("quarry", <item:quarryplus:quarry>, [[<item:immersiveengineering:heavy_engineering>, <item:quarryplus:marker>, <item:immersiveengineering:heavy_engineering>], [<item:immersiveengineering:heavy_engineering>, <item:quarryplus:mining_well>, <item:immersiveengineering:heavy_engineering>], [<item:create:electron_tube>, <item:immersiveengineering:drillhead_steel>, <item:create:electron_tube>]]);

//quarryplus statuschecker recipe
craftingTable.addShaped("quarry_statuschecker", <item:quarryplus:status_checker>, [[<item:quarryplus:marker>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:minecraft:buttons>, <tag:items:forge:ingots/iron>]]);

//quarryplus quarry Y setter recipe
craftingTable.addShaped("quarry_y_setter", <item:quarryplus:y_setter>, [[<item:quarryplus:marker>, IIngredientEmpty.getInstance(), IIngredientEmpty.getInstance()], [<tag:items:forge:gems/diamond>, <tag:items:forge:dusts/redstone>, <tag:items:forge:gems/diamond>], [<tag:items:forge:gems/diamond>, <tag:items:minecraft:buttons>, <tag:items:forge:gems/diamond>]]);

//infusing quarry with full enchants
<recipetype:apotheosis:enchanting>.addJsonRecipe("enchanted_quarry", {"input": {
		"item": "quarryplus:quarry",
	},
	"requirements": {
		"eterna": 30,
		"quanta": 50,
		"arcana": 50
	},
	"max_requirements": {
		"eterna": 50,
		"quanta": 80,
		"arcana": -1
	},
	"result": 
		<item:quarryplus:quarry>.withTag({Enchantments: [{lvl: 5 as short, id: "minecraft:efficiency" as string}, {lvl: 3 as short, id: "minecraft:unbreaking" as string}, {lvl: 1 as short, id: "minecraft:silk_touch" as string}]})
});

//quarryplus mining well recipe
craftingTable.addShaped("mining_well", <item:quarryplus:mining_well>, [[<tag:items:forge:ingots/iron>, <item:create:shaft>, <tag:items:forge:ingots/iron>], [<tag:items:forge:dusts/redstone>, <item:create:shaft>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:ingots/iron>, <item:immersiveengineering:drillhead_iron>, <tag:items:forge:ingots/iron>]]);

//quarryplus replacing module recipe
craftingTable.remove(<item:quarryplus:replacer_module>);
craftingTable.addShaped("replacing_module", <item:quarryplus:replacer_module>, [[<tag:items:forge:ingots/netherite>, <tag:items:forge:glass/colorless>, <tag:items:forge:ingots/netherite>], [<tag:items:forge:dusts/redstone>, <tag:items:forge:glass/colorless>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:ingots/netherite>, <item:cyclic:placer>, <tag:items:forge:ingots/netherite>]]);

//quarryplus pump module recipe
craftingTable.remove(<item:quarryplus:pump_module>);
craftingTable.addShaped("pump_module", <item:quarryplus:pump_module>, [[<tag:items:forge:ingots/iron>, <item:immersiveengineering:fluid_pipe>, <tag:items:forge:ingots/iron>], [<tag:items:forge:dusts/redstone>, <item:immersiveengineering:fluid_pipe>, <tag:items:forge:dusts/redstone>], [<tag:items:forge:ingots/iron>, <item:immersiveengineering:fluid_pump>, <tag:items:forge:ingots/iron>]]);

//dimensional dungeons portal keystone
craftingTable.remove(<item:dimdungeons:block_portal_keyhole>);
craftingTable.addShaped("portal_keystone", <item:dimdungeons:block_portal_keyhole>, [[<item:dimdungeons:block_gilded_portal>, <item:supplementaries:lock_block>, <item:dimdungeons:block_gilded_portal>], [<item:supplementaries:lock_block>, <item:minecraft:ender_eye>, <item:supplementaries:lock_block>], [<item:dimdungeons:block_gilded_portal>, <item:supplementaries:lock_block>, <item:dimdungeons:block_gilded_portal>]]);

//better bundles progression adjustments
craftingTable.removeByName("betterbundles:gold_bundle");
craftingTable.removeByName("betterbundles:iron_bundle");
craftingTable.removeByName("betterbundles:netherite_bundle");
smithing.addRecipe("better_bundles_netherite", <item:betterbundles:netherite_bundle>, <item:betterbundles:diamond_bundle>, <item:minecraft:netherite_ingot>);

//fletching recipes
<recipetype:apotheosis:fletching>.addJsonRecipe("wilden_spike_arrow", {"conditions": [{
		"type": "apotheosis:module",
		"module": "village"
	}],
	"ingredients": [{
			"item": "ars_nouveau:wilden_spike"
		},
		{
			"item": "minecraft:stick"
		},
		{
			"item": "minecraft:feather"
		}
	],
	"result": {
		"item": "minecraft:arrow",
		"count": 48
	}});
	
<recipetype:apotheosis:fletching>.addJsonRecipe("shark_tooth_arrow", {"conditions": [{
		"type": "apotheosis:module",
		"module": "village"
	}],
	"ingredients": [{
			"item": "alexsmobs:shark_tooth"
		},
		{
			"item": "minecraft:stick"
		},
		{
			"item": "minecraft:kelp"
		}
	],
	"result": {
		"item": "alexsmobs:shark_tooth_arrow",
		"count": 12
	}});
	
//removing brass from the create steampowered bronze tag
//<tag:items:steampowered:bronzeplate>.remove(<item:create:brass_sheet>);
//<tag:items:steampowered:bronze>.remove(<item:create:brass_ingot>);

//adding cooked fish tag
val cooked_fish as IItemStack[] = [
	<item:minecraft:cooked_cod>,
	<item:minecraft:cooked_salmon>,
	<item:blue_skies:cooked_grittle_flatfish>,
	<item:blue_skies:cooked_municipal_monkfish>,
	<item:blue_skies:cooked_charscale_moki>,
	<item:blue_skies:cooked_horizofin_tunid>,
	<item:aquaculture:fish_fillet_cooked>,
	<item:alexsmobs:cooked_lobster_tail>,
	<item:undergarden:cooked_gwibling>,
	<item:quark:cooked_crab_leg>,
	<item:quark:cooked_frog_leg>,
	<item:aquaculture:frog_legs_cooked>
];
<tag:items:rosie:cooked_fish>.add(cooked_fish);

//coin conversion recipes
craftingTable.removeByName("createdeco:copper_coin");
craftingTable.removeByName("createdeco:iron_coin");
craftingTable.removeByName("createdeco:gold_coin");
craftingTable.removeByName("createdeco:netherite_coin");

craftingTable.addShapeless("iron_to_copper", <item:createdeco:copper_coin> * 4, [<item:createdeco:iron_coin>]);
craftingTable.addShapeless("copper_to_iron", <item:createdeco:iron_coin>, [<item:createdeco:copper_coin>, <item:createdeco:copper_coin>, <item:createdeco:copper_coin>, <item:createdeco:copper_coin>]);
craftingTable.addShapeless("gold_to_iron", <item:createdeco:iron_coin> * 4, [<item:createdeco:gold_coin>]);
craftingTable.addShapeless("iron_to_gold", <item:createdeco:gold_coin>, [<item:createdeco:iron_coin>, <item:createdeco:iron_coin>, <item:createdeco:iron_coin>, <item:createdeco:iron_coin>]);
craftingTable.addShapeless("netherite_to_gold", <item:createdeco:gold_coin> * 4, [<item:createdeco:netherite_coin>]);
craftingTable.addShapeless("gold_to_netherite", <item:createdeco:netherite_coin>, [<item:createdeco:gold_coin>, <item:createdeco:gold_coin>, <item:createdeco:gold_coin>, <item:createdeco:gold_coin>]);

////updating computercraft recipes
//craftingTable.remove(<item:computercraft:computer_normal>);
//
//craftingTable.addShaped("computercraft_computer_normal", <item:computercraft:computer_normal>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <item:minecraft:comparator>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/iron>]]);
//craftingTable.removeByName("computercraft:computer_advanced");
//
//craftingTable.addShaped("computercraft_computer_advanced", <item:computercraft:computer_advanced>, [[<tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>, <tag:items:forge:ingots/gold>], [<tag:items:forge:ingots/gold>, <item:minecraft:comparator>, <tag:items:forge:ingots/gold>], [<tag:items:forge:ingots/gold>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/gold>]]);
//
//craftingTable.remove(<item:computercraft:pocket_computer_normal>);
//
//craftingTable.addShaped("computercraft_tablet", <item:computercraft:pocket_computer_normal>, [[<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:minecraft:comparator>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:plates/iron>]]);
//
//craftingTable.addShaped("computercraft_tablet_advanced", <item:computercraft:pocket_computer_advanced>, [[<tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <item:minecraft:comparator>, <tag:items:forge:plates/gold>], [<tag:items:forge:plates/gold>, <tag:items:forge:glass_panes>, <tag:items:forge:plates/gold>]]);
//
//craftingTable.remove(<item:computercraft:disk_drive>);
//craftingTable.addShaped("computercraft_disk_drive", <item:computercraft:disk_drive>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>]]);
//
//craftingTable.remove(<item:computercraft:speaker>);
//craftingTable.addShaped("computercraft_speaker", <item:computercraft:speaker>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <item:minecraft:note_block>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>]]);
//
//craftingTable.remove(<item:computercraft:printer>);
//craftingTable.addShaped("computercraft_printer", <item:computercraft:printer>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dyes>, <tag:items:forge:ingots/iron>]]);
//
//craftingTable.remove(<item:computercraft:wireless_modem_normal>);
//craftingTable.addShaped("computercraft_wireless_modem_normal", <item:computercraft:wireless_modem_normal>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ender_pearls>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);
//
//craftingTable.remove(<item:computercraft:monitor_normal>);
//craftingTable.addShaped("computercraft_monitor_normal", <item:computercraft:monitor_normal> * 4, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:glass_panes>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);
//
//craftingTable.remove(<item:computercraft:cable>);
//craftingTable.addShaped("computercraft_cable", <item:computercraft:cable> * 8, [[IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance()], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [IIngredientEmpty.getInstance(), <tag:items:forge:ingots/iron>, IIngredientEmpty.getInstance()]]);
//
//craftingTable.removeByName("computercraft:wired_modem");
//craftingTable.addShaped("computercraft_wired_modem", <item:computercraft:wired_modem>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:dusts/redstone>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]]);

//making Indreb bronze equipment use tags for crafting

val bronze_equipment as IItemStack[] = [
	<item:indreb:bronze_boots>,
	<item:indreb:bronze_leggings>,
	<item:indreb:bronze_chestplate>,
	<item:indreb:bronze_helmet>,
	<item:indreb:bronze_hoe>,
	<item:indreb:bronze_sword>,
	<item:indreb:bronze_axe>,
	<item:indreb:bronze_shovel>,
	<item:indreb:bronze_pickaxe>,
	<item:minecraft:leather_boots>,
	<item:minecraft:leather_leggings>,
	<item:minecraft:leather_chestplate>,
	<item:minecraft:leather_helmet>,
	<item:indreb:lv_transformer>
];

for item in bronze_equipment{
	craftingTable.remove(item);
}

craftingTable.addShaped("indreb_item_tool_bronze_shovel", <item:indreb:bronze_shovel>, [[<tag:items:forge:ingots/bronze>], [<tag:items:forge:rods/wooden>], [<tag:items:forge:rods/wooden>]]);

craftingTable.addShaped("indreb_item_tool_bronze_hoe", <item:indreb:bronze_hoe>, [[<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>]]);

craftingTable.addShaped("indreb_item_tool_bronze_axe", <item:indreb:bronze_axe>, [[<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, <tag:items:forge:rods/wooden>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>]]);

craftingTable.addShaped("indreb_item_tool_bronze_sword", <item:indreb:bronze_sword>, [[<tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>], [<tag:items:forge:rods/wooden>]]);

craftingTable.addShaped("indreb_item_tool_bronze_pickaxe", <item:indreb:bronze_pickaxe>, [[<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance()], [IIngredientEmpty.getInstance(), <tag:items:forge:rods/wooden>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("indreb_item_bronze_boots", <item:indreb:bronze_boots>, [[<tag:items:forge:ingots/bronze>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/bronze>]]);

craftingTable.addShaped("indreb_item_bronze_leggings", <item:indreb:bronze_leggings>, [[<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/bronze>]]);

craftingTable.addShaped("indreb_item_bronze_chestplate", <item:indreb:bronze_chestplate>, [[<tag:items:forge:ingots/bronze>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>]]);

craftingTable.addShaped("indreb_item_bronze_helmet", <item:indreb:bronze_helmet>, [[<tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>, <tag:items:forge:ingots/bronze>], [<tag:items:forge:ingots/bronze>, IIngredientEmpty.getInstance(), <tag:items:forge:ingots/bronze>]]);

craftingTable.addShaped("indreb_transformer_lv_transformer", <item:indreb:lv_transformer>, [[<tag:items:minecraft:planks>, <item:indreb:copper_cable_insulated>, <tag:items:minecraft:planks>], [<tag:items:forge:plates/bronze>, <item:indreb:coil>, <tag:items:forge:plates/bronze>], [<tag:items:minecraft:planks>, <item:indreb:copper_cable_insulated>, <tag:items:minecraft:planks>]]);

//tooltip lucky rabbits foot
<item:apotheosis:lucky_foot>.addTooltip("A rare drop from rabbits.");

//stone variant crafting
craftingTable.removeByName("minecraft:diorite");
craftingTable.addShapedMirrored("minecraft_diorite", MirrorAxis.HORIZONTAL, <item:minecraft:diorite> * 4, [[<item:minecraft:stone>, <item:minecraft:calcite>], [<item:minecraft:calcite>, <item:minecraft:stone>]]);

craftingTable.removeByName("minecraft:granite");
craftingTable.addShapedMirrored("minecraft_granite", MirrorAxis.HORIZONTAL, <item:minecraft:granite> * 4, [[<item:minecraft:stone>, <item:minecraft:terracotta>], [<item:minecraft:terracotta>, <item:minecraft:stone>]]);

craftingTable.removeByName("minecraft:andesite");
craftingTable.addShapedMirrored("minecraft_andesite", MirrorAxis.HORIZONTAL, <item:minecraft:andesite> * 4, [[<item:minecraft:stone>, <item:minecraft:tuff>], [<item:minecraft:tuff>, <item:minecraft:stone>]]);

//advanced machine casing
craftingTable.remove(<item:indreb:advanced_machine_casing>);
craftingTable.addShaped("indreb_block_advanced_machine_casing", <item:indreb:advanced_machine_casing>, [[<tag:items:forge:plates/steel>, <item:indreb:carbon_plate>, <tag:items:forge:plates/steel>], [<item:indreb:advanced_alloy>, <item:indreb:basic_machine_casing>, <item:indreb:advanced_alloy>], [<tag:items:forge:plates/steel>, <item:indreb:carbon_plate>, <tag:items:forge:plates/steel>]]);

//custom ars nouveau crushing recipes

val block_crushed_map as IItemStack[IIngredient] = {
	<tag:items:rosie:malum/soul>.asIIngredient(): <item:malum:soulstone_cluster>,
	<tag:items:forge:ores/iron>.asIIngredient(): <item:minecraft:raw_iron>,
	<tag:items:forge:ores/gold>.asIIngredient(): <item:minecraft:raw_gold>,
	<tag:items:forge:ores/coal>.asIIngredient(): <item:minecraft:coal>,
	<tag:items:forge:ores/tin>.asIIngredient(): <item:indreb:raw_tin>,
	<tag:items:forge:ores/lead>.asIIngredient(): <item:immersiveengineering:raw_lead>,
	<tag:items:forge:ores/silver>.asIIngredient(): <item:immersiveengineering:raw_silver>,
	<tag:items:forge:ores/uranium>.asIIngredient(): <item:immersiveengineering:raw_uranium>,
	<tag:items:forge:ores/nickel>.asIIngredient(): <item:immersiveengineering:raw_nickel>,
	<tag:items:blue_skies:ores/ventium>.asIIngredient(): <item:blue_skies:raw_ventium>,
	<tag:items:blue_skies:ores/pyrope>.asIIngredient(): <item:blue_skies:pyrope_gem>,
	<tag:items:blue_skies:ores/diopside>.asIIngredient(): <item:blue_skies:diopside_gem>,
	<tag:items:blue_skies:ores/falsite>.asIIngredient(): <item:blue_skies:raw_falsite>,
	<tag:items:blue_skies:ores/horizonite>.asIIngredient(): <item:blue_skies:raw_horizonite>,
	<tag:items:forge:ores/zinc>.asIIngredient(): <item:create:raw_zinc>,
	<tag:items:forge:ores/cloggrum>.asIIngredient(): <item:undergarden:raw_cloggrum>,
	<tag:items:forge:ores/utherium>.asIIngredient(): <item:undergarden:utherium_crystal>,
	<tag:items:forge:ores/regalium>.asIIngredient(): <item:undergarden:regalium_crystal>,
	<tag:items:forge:ores/froststeel>.asIIngredient(): <item:undergarden:raw_froststeel>
};

for block, crushed in block_crushed_map {
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + crushed.registryName.path, 
	{
 "input":block,
  "output": [
    {
      "item": crushed.registryName,
      "chance": 1.0,
      "count": 2
    },
	{
      "item": crushed.registryName,
      "chance": 0.25,
      "count": 1
    }
  ]
});
}

val block_crushed_map_rare as IItemStack[IIngredient] = {
	<tag:items:forge:ores/netherite_scrap>.asIIngredient(): <item:minecraft:netherite_scrap>,
	<tag:items:forge:ores/diamond>.asIIngredient(): <item:minecraft:diamond>,
	<tag:items:forge:ores/emerald>.asIIngredient(): <item:minecraft:emerald>,
	<tag:items:forge:ores/quartz>.asIIngredient(): <item:minecraft:quartz>,
	
};

for block, crushed in block_crushed_map_rare {
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + crushed.registryName.path, 
	{
 "input":block,
  "output": [
    {
      "item": crushed.registryName,
      "chance": 1.0,
      "count": 1
    },
	{
      "item": crushed.registryName,
      "chance": 0.5,
      "count": 1
    }
  ]
});
}

val block_crushed_map_many as IItemStack[IIngredient] = {
	<tag:items:forge:ores/redstone>.asIIngredient(): <item:minecraft:redstone>,
	<tag:items:forge:ores/lapis>.asIIngredient(): <item:minecraft:lapis_lazuli>,
	<tag:items:forge:ores_in_ground/netherrack>.asIIngredient(): <item:minecraft:gold_nugget>
};

for block, crushed in block_crushed_map_many {
<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_" + crushed.registryName.path, 
	{
 "input":block,
  "output": [
    {
      "item": crushed.registryName,
      "chance": 1.0,
      "count": 6
    },
	{
      "item": crushed.registryName,
      "chance": 0.5,
      "count": 1
    }
  ]
});
}

<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_wart", 
	{
 "input":{
    "item": "minecraft:nether_wart_block"
  },
  "output": [
    {
      "item": "minecraft:nether_wart",
      "chance": 1.0,
      "count": 6
    },
	{
      "item": "minecraft:nether_wart",
      "chance": 0.5,
      "count": 1
    }
  ]
});

<recipetype:ars_nouveau:crush>.addJsonRecipe("custom_ars_crushed_warped_wart", 
	{
 "input":{
    "item": "minecraft:warped_wart_block"
  },
  "output": [
    {
      "item": "minecraft:nether_wart",
      "chance": 1.0,
      "count": 6
    },
	{
      "item": "minecraft:warped_fungus",
      "chance": 0.5,
      "count": 1
    }
  ]
});

//nether wart block uncrafting
craftingTable.removeByName("cyclic:crafting/nether_wart_reverse");

////Reach upgrade level 1 recipe
//craftingTable.remove(<item:effortlessbuilding:reach_upgrade1>);
//craftingTable.addShaped("effortlessbuilding_reach_upgrade1", <item:effortlessbuilding:reach_upgrade1>, [[IIngredientEmpty.getInstance(), <item:minecraft:honey_bottle>, IIngredientEmpty.getInstance()], [<item:minecraft:honey_bottle>, <item:minecraft:magma_cream>, <item:minecraft:honey_bottle>], [IIngredientEmpty.getInstance(), <item:minecraft:honey_bottle>, IIngredientEmpty.getInstance()]]);
//
////reach upgrade level 2 recipe
//craftingTable.remove(<item:effortlessbuilding:reach_upgrade2>);
//craftingTable.addShaped("effortlessbuilding_reach_upgrade2", <item:effortlessbuilding:reach_upgrade2>, [[IIngredientEmpty.getInstance(), <item:minecraft:emerald>, IIngredientEmpty.getInstance()], [<item:minecraft:emerald>, <item:effortlessbuilding:reach_upgrade1>, <item:minecraft:emerald>], [IIngredientEmpty.getInstance(), <item:minecraft:emerald>, IIngredientEmpty.getInstance()]]);
//
////reach upgrade level 2 recipe
//craftingTable.remove(<item:effortlessbuilding:reach_upgrade3>);
//craftingTable.addShaped("effortlessbuilding_reach_upgrade3", <item:effortlessbuilding:reach_upgrade3>, [[IIngredientEmpty.getInstance(), <item:minecraft:chorus_flower>, IIngredientEmpty.getInstance()], [<item:minecraft:chorus_flower>, <item:effortlessbuilding:reach_upgrade2>, <item:minecraft:chorus_flower>], [IIngredientEmpty.getInstance(), <item:minecraft:chorus_flower>, IIngredientEmpty.getInstance()]]);

//ender carrot fix
<item:cyclic:carrot_ender>.removeTooltip("Stackable hidden shields");
<item:cyclic:carrot_ender>.addTooltip("Gives your horse temporary damage immunity if its health gets too low, can be stacked.");
mods.extendedcrafting.EnderCrafting.addShaped("330a6455-0052-4566-a944-c8a7a51f5919", <item:cyclic:carrot_ender>, [
	[<item:minecraft:ender_eye>, <item:extendedcrafting:ender_ingot>, <item:minecraft:ender_eye>], 
	[<item:extendedcrafting:ender_ingot>, <item:minecraft:golden_carrot>, <item:extendedcrafting:ender_ingot>], 
	[<item:minecraft:ender_eye>, <item:extendedcrafting:ender_ingot>, <item:minecraft:ender_eye>]
]);

//adding indreb diamond dust to forge tags
<tag:items:forge:dusts/diamond>.add(<item:indreb:diamond_dust>);
<tag:items:forge:dusts>.add(<item:indreb:diamond_dust>);
<tag:items:supplementaries:hourglass_dusts>.add(<item:indreb:diamond_dust>);

//furnace tin
furnace.addRecipe("tin_cook", <item:indreb:tin_ingot>, <item:create:crushed_tin_ore>, 0.5, 200);
blastFurnace.addRecipe("tin_blast", <item:indreb:tin_ingot>, <item:create:crushed_tin_ore>, 0.5, 100);

//raw block blasting

<tag:items:forge:storage_blocks/raw_cloggrum>.add(<item:undergarden:raw_cloggrum_block>);
<tag:items:forge:storage_blocks/raw_froststeel>.add(<item:undergarden:raw_froststeel_block>);

val rawblock_block_map as IItemStack[IIngredient] = {
<tag:items:forge:storage_blocks/raw_iron>.asIIngredient(): <item:minecraft:iron_block>,
<tag:items:forge:storage_blocks/raw_copper>.asIIngredient(): <item:minecraft:copper_block>,
<tag:items:forge:storage_blocks/raw_gold>.asIIngredient(): <item:minecraft:gold_block>,
<tag:items:forge:storage_blocks/raw_zinc>.asIIngredient(): <item:create:zinc_block>,
<tag:items:blue_skies:storage_blocks/raw_falsite>.asIIngredient(): <item:blue_skies:falsite_block>,
<tag:items:blue_skies:storage_blocks/raw_ventium>.asIIngredient(): <item:blue_skies:ventium_block>,
<tag:items:blue_skies:storage_blocks/raw_horizonite>.asIIngredient(): <item:blue_skies:horizonite_block>,
<tag:items:blue_skies:storage_blocks/raw_charoite>.asIIngredient(): <item:blue_skies:charoite_block>,
<tag:items:forge:storage_blocks/raw_desh>.asIIngredient(): <item:beyond_earth:desh_block>,
<tag:items:forge:storage_blocks/raw_ostrum>.asIIngredient(): <item:beyond_earth:ostrum_block>,
<tag:items:forge:storage_blocks/raw_calorite>.asIIngredient(): <item:beyond_earth:calorite_block>,
<tag:items:forge:storage_blocks/raw_cloggrum>.asIIngredient(): <item:undergarden:cloggrum_block>,
<tag:items:forge:storage_blocks/raw_froststeel>.asIIngredient(): <item:undergarden:froststeel_block>,
<tag:items:forge:raw_blocks/aluminum>.asIIngredient(): <item:immersiveengineering:storage_aluminum>,
<tag:items:forge:raw_blocks/lead>.asIIngredient(): <item:immersiveengineering:storage_lead>,
<tag:items:forge:raw_blocks/silver>.asIIngredient(): <item:immersiveengineering:storage_silver>,
<tag:items:forge:raw_blocks/nickel>.asIIngredient(): <item:immersiveengineering:storage_nickel>,
<tag:items:forge:raw_blocks/uranium>.asIIngredient(): <item:immersiveengineering:storage_uranium>,
<tag:items:forge:storage_blocks/raw_cobalt>.asIIngredient(): <item:tconstruct:cobalt_block>
};

for rawblock, block in rawblock_block_map {
	blastFurnace.addRecipe("blasting_" + block.registryName.path, block, rawblock, 9.0, 200);
}