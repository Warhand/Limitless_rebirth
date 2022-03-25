import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;

//pipez infinite pipe upgrade
craftingTable.remove(<item:pipez:infinity_upgrade>);
mods.extendedcrafting.TableCrafting.addShaped("aed61643-0077-477b-bdf7-06203844c4d8", 0, <item:pipez:infinity_upgrade> * 4, [
	[<item:extendedcrafting:black_iron_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:pipez:universal_pipe>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:black_iron_block>], 
	[<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:luminessence_block>, <item:pipez:universal_pipe>, <item:extendedcrafting:luminessence_block>, <item:pipez:ultimate_upgrade>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>], 
	[<item:extendedcrafting:black_iron_block>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:enhanced_ender_ingot>, <item:pipez:ultimate_upgrade>, <item:pipez:universal_pipe>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:enhanced_ender_ingot>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:luminessence_block>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:luminessence_block>, <item:pipez:universal_pipe>, <item:extendedcrafting:luminessence_block>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:luminessence_block>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:paraglider:anti_vessel>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>, <item:pipez:universal_pipe>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:luminessence_block>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:luminessence_block>, <item:pipez:universal_pipe>, <item:extendedcrafting:luminessence_block>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:luminessence_block>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:enhanced_ender_ingot>, <item:pipez:ultimate_upgrade>, <item:pipez:universal_pipe>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:enhanced_ender_ingot>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:black_iron_block>], 
	[<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:pipez:ultimate_upgrade>, <item:extendedcrafting:luminessence_block>, <item:pipez:universal_pipe>, <item:extendedcrafting:luminessence_block>, <item:pipez:ultimate_upgrade>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>], 
	[<item:extendedcrafting:black_iron_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:pipez:universal_pipe>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:black_iron_block>]
]);

//paraglider antivessel
mods.extendedcrafting.TableCrafting.addShaped("0b0940ec-7f35-463a-95b2-87c15add6671", 0, <item:paraglider:anti_vessel>, [
	[<item:extendedcrafting:crystaltine_ingot>, <item:paraglider:essence>, <item:paraglider:essence>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:paraglider:essence>, <item:paraglider:essence>, <item:extendedcrafting:crystaltine_ingot>], 
	[<item:paraglider:essence>, <item:extendedcrafting:ender_star>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:extendedcrafting:ender_star>, <item:paraglider:essence>], 
	[<item:paraglider:essence>, <item:minecraft:nether_star>, <item:minecraft:totem_of_undying>, <item:minecraft:heart_of_the_sea>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:minecraft:heart_of_the_sea>, <item:minecraft:totem_of_undying>, <item:minecraft:nether_star>, <item:paraglider:essence>], 
	[<item:extendedcrafting:ultimate_catalyst>, <item:minecraft:nether_star>, <item:minecraft:heart_of_the_sea>, <item:extendedcrafting:ender_ingot_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:ender_ingot_block>, <item:minecraft:heart_of_the_sea>, <item:minecraft:nether_star>, <item:extendedcrafting:ultimate_catalyst>], 
	[<item:extendedcrafting:ultimate_catalyst>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:graveyard:corruption>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:ultimate_catalyst>], 
	[<item:extendedcrafting:ultimate_catalyst>, <item:minecraft:nether_star>, <item:minecraft:heart_of_the_sea>, <item:extendedcrafting:ender_ingot_block>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:extendedcrafting:ender_ingot_block>, <item:minecraft:heart_of_the_sea>, <item:minecraft:nether_star>, <item:extendedcrafting:ultimate_catalyst>], 
	[<item:paraglider:essence>, <item:minecraft:nether_star>, <item:minecraft:totem_of_undying>, <item:minecraft:heart_of_the_sea>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:minecraft:heart_of_the_sea>, <item:minecraft:totem_of_undying>, <item:minecraft:nether_star>, <item:paraglider:essence>], 
	[<item:paraglider:essence>, <item:extendedcrafting:ender_star>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:extendedcrafting:ender_star>, <item:paraglider:essence>], 
	[<item:extendedcrafting:crystaltine_ingot>, <item:paraglider:essence>, <item:paraglider:essence>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:paraglider:essence>, <item:paraglider:essence>, <item:extendedcrafting:crystaltine_ingot>]
]);

//antivessel tooltip fixes
<item:paraglider:anti_vessel>.removeTooltip("Retrieves all Heart Containers and Stamina Vessels you consumed.");
<item:paraglider:anti_vessel>.removeTooltip("§5§k§oasdfasdfasdfas dfasdfasdfasfd sfn §c§k§o가나다§5§k§ofdadff§r");
<item:paraglider:anti_vessel>.addTooltip("A cursed artifact that can be used to instantly remove all the heart and stamina vessels from an individual, or that can be used in profane rituals to create objects of immense power...");

//Aquasteel recipe
mods.extendedcrafting.CombinationCrafting.addRecipe("950c4b17-378d-4ced-96cd-9b82690d58f8", <item:relics:aquasteel_ingot>, 5000, [
	<tag:items:forge:ingots/steel>, <item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>, <item:minecraft:lapis_lazuli>, <item:minecraft:lapis_lazuli>, <item:minecraft:sea_lantern>, <item:minecraft:sea_lantern>
]);

//Ultimate catalyst fix
mods.extendedcrafting.TableCrafting.remove(<item:extendedcrafting:ultimate_singularity>);
mods.extendedcrafting.CombinationCrafting.addRecipe("b9bc0beb-7569-4697-97ee-8fc895ed431d", <item:extendedcrafting:ultimate_singularity>, 100000, [
	<item:extendedcrafting:ender_star>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:silver" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:tin" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:diamond" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:lead" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:nickel" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:glowstone" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:bronze" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:lapis_lazuli" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:steel" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:iron" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:redstone" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:electrum" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:emerald" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:coal" as string}),
<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:aluminum" as string})
]);

//Heart of the sea recipe
mods.extendedcrafting.TableCrafting.addShaped("aa64fb9f-f888-4abc-bc6c-1ec17ceddd3a", 0, <item:minecraft:heart_of_the_sea>, [
	[<item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>], 
	[<item:relics:aquasteel_ingot>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>, <item:minecraft:blue_ice>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>, <item:relics:aquasteel_ingot>], 
	[<item:relics:aquasteel_ingot>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_shard>, <item:relics:aquasteel_ingot>], 
	[<item:relics:aquasteel_ingot>, <item:minecraft:blue_ice>, <item:minecraft:prismarine_crystals>, <item:quark:diamond_heart>, <item:minecraft:prismarine_crystals>, <item:minecraft:blue_ice>, <item:relics:aquasteel_ingot>], 
	[<item:relics:aquasteel_ingot>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_shard>, <item:relics:aquasteel_ingot>], 
	[<item:relics:aquasteel_ingot>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>, <item:minecraft:blue_ice>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_shard>, <item:relics:aquasteel_ingot>], 
	[<item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>, <item:relics:aquasteel_ingot>]
]);

//create recipes

//create creative engine
mods.extendedcrafting.TableCrafting.addShaped("bef7a0c4-f297-4eca-9605-be627388f66b", 0, <item:create:creative_motor>, [
	[<item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:create:flywheel>, <item:extendedcrafting:black_iron_block>, <item:create:sequenced_gearshift>, <item:extendedcrafting:black_iron_block>, <item:create:flywheel>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:speedometer>, <item:create:electron_tube>, <item:create:precision_mechanism>, <item:create:shaft>, <item:create:precision_mechanism>, <item:create:electron_tube>, <item:create:speedometer>, <item:extendedcrafting:black_iron_block>], 
	[<item:create:flywheel>, <item:create:electron_tube>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:electron_tube>, <item:create:shaft>, <item:create:electron_tube>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:electron_tube>, <item:create:flywheel>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:precision_mechanism>, <item:create:electron_tube>, <item:create:speedometer>, <item:create:furnace_engine>, <item:create:speedometer>, <item:create:electron_tube>, <item:create:precision_mechanism>, <item:extendedcrafting:black_iron_block>], 
	[<item:create:sequenced_gearshift>, <item:create:shaft>, <item:create:shaft>, <item:create:furnace_engine>, <item:paraglider:anti_vessel>, <item:create:furnace_engine>, <item:create:shaft>, <item:create:shaft>, <item:create:sequenced_gearshift>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:precision_mechanism>, <item:create:electron_tube>, <item:create:speedometer>, <item:create:furnace_engine>, <item:create:speedometer>, <item:create:electron_tube>, <item:create:precision_mechanism>, <item:extendedcrafting:black_iron_block>], 
	[<item:create:flywheel>, <item:create:electron_tube>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:electron_tube>, <item:create:shaft>, <item:create:electron_tube>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:electron_tube>, <item:create:flywheel>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:speedometer>, <item:create:electron_tube>, <item:create:precision_mechanism>, <item:create:shaft>, <item:create:precision_mechanism>, <item:create:electron_tube>, <item:create:speedometer>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:create:flywheel>, <item:extendedcrafting:black_iron_block>, <item:create:sequenced_gearshift>, <item:extendedcrafting:black_iron_block>, <item:create:flywheel>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>]
]);

//create creative fluid tank
mods.extendedcrafting.TableCrafting.addShaped("9504902c-8e02-4f37-bc9f-8afe6e10dc51", 0, <item:create:creative_fluid_tank>, [
	[<item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:create:smart_fluid_pipe>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:create:mechanical_pump>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:fluid_pipe>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:fluid_pipe>, <item:minecraft:heart_of_the_sea>, <item:create:fluid_pipe>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:fluid_pipe>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:trashcans:liquid_trash_can>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:create:smart_fluid_pipe>, <item:create:mechanical_pump>, <item:minecraft:heart_of_the_sea>, <item:trashcans:liquid_trash_can>, <item:paraglider:anti_vessel>, <item:trashcans:liquid_trash_can>, <item:minecraft:heart_of_the_sea>, <item:create:mechanical_pump>, <item:create:smart_fluid_pipe>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:trashcans:liquid_trash_can>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:fluid_pipe>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:fluid_pipe>, <item:minecraft:heart_of_the_sea>, <item:create:fluid_pipe>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:fluid_pipe>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:create:mechanical_pump>, <item:create:fluid_tank>, <item:create:fluid_pipe>, <item:create:fluid_tank>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:create:smart_fluid_pipe>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>]
]);

//create creative crate
mods.extendedcrafting.TableCrafting.addShaped("edbcd717-ef42-4c38-b54a-37c6f17b5113", 0, <item:create:creative_crate>, [
	[<item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:create:smart_chute>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:electron_tube>, <item:create:item_vault>, <item:create:brass_casing>, <item:create:chute>, <item:create:brass_casing>, <item:create:item_vault>, <item:create:electron_tube>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:create:item_vault>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:portable_storage_interface>, <item:create:brass_tunnel>, <item:create:portable_storage_interface>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:item_vault>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:brass_casing>, <item:create:portable_storage_interface>, <item:create:precision_mechanism>, <item:create:chute>, <item:create:precision_mechanism>, <item:create:portable_storage_interface>, <item:create:brass_casing>, <item:extendedcrafting:black_iron_block>], 
	[<item:create:smart_chute>, <item:create:chute>, <item:create:brass_tunnel>, <item:create:chute>, <item:paraglider:anti_vessel>, <item:create:chute>, <item:create:brass_tunnel>, <item:create:chute>, <item:create:smart_chute>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:brass_casing>, <item:create:portable_storage_interface>, <item:create:precision_mechanism>, <item:create:chute>, <item:create:precision_mechanism>, <item:create:portable_storage_interface>, <item:create:brass_casing>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:create:item_vault>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:portable_storage_interface>, <item:create:brass_tunnel>, <item:create:portable_storage_interface>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:item_vault>, <item:betteramethyst:amethyst_crystal_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:create:electron_tube>, <item:create:item_vault>, <item:create:brass_casing>, <item:create:chute>, <item:create:brass_casing>, <item:create:item_vault>, <item:create:electron_tube>, <item:extendedcrafting:black_iron_block>], 
	[<item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:create:smart_chute>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>, <item:extendedcrafting:black_iron_block>, <item:betteramethyst:amethyst_crystal_block>]
]);

//create creative blaze cake
mods.extendedcrafting.TableCrafting.addShaped("efd1f5c2-02b4-4be0-b9a7-1a621507ecc0", 0, <item:create:creative_blaze_cake>, [
	[<item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>], 
	[<item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>, <item:minecraft:purple_dye>], 
	[<item:create:experience_nugget>, <item:create:rose_quartz>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:rose_quartz>, <item:create:experience_nugget>], 
	[<item:create:experience_nugget>, <item:create:rose_quartz>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:rose_quartz>, <item:create:experience_nugget>], 
	[<item:create:experience_nugget>, <item:create:honeyed_apple>, <item:createaddition:honey_cake>, <item:createaddition:honey_cake>, <item:paraglider:anti_vessel>, <item:createaddition:honey_cake>, <item:createaddition:honey_cake>, <item:create:honeyed_apple>, <item:create:experience_nugget>], 
	[<item:create:cinder_flour>, <item:create:sweet_roll>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:create:blaze_cake>, <item:create:sweet_roll>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:sweet_roll>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:blaze_cake>, <item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:copper" as string}), <item:create:sweet_roll>, <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:honey_bucket>.transformReplace(<item:minecraft:bucket>), <item:create:sweet_roll>, <item:create:sweet_roll>, <item:minecraft:cake>, <item:create:sweet_roll>, <item:create:sweet_roll>, <item:create:honey_bucket>.transformReplace(<item:minecraft:bucket>), <item:create:cinder_flour>], 
	[<item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>, <item:create:cinder_flour>]
]);

//create recipes end

//ultimate ingots
mods.extendedcrafting.CombinationCrafting.addRecipe("2626dbb9-e950-4ed2-8064-a32a95b2de7b", <item:extendedcrafting:the_ultimate_ingot> * 4, 100000, [
	<item:extendedcrafting:ultimate_singularity>, <item:minecraft:nether_star>, <item:extendedcrafting:ultimate_catalyst>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:minecraft:nether_star>, <item:extendedcrafting:ultimate_catalyst>, <item:extendedcrafting:ultimate_catalyst>, <item:minecraft:nether_star>, <item:extendedcrafting:crystaltine_ingot>, <item:extendedcrafting:crystaltine_ingot>, <item:minecraft:nether_star>, <item:minecraft:nether_star>, <item:extendedcrafting:ultimate_catalyst>, <item:minecraft:nether_star>
]);

//botania recipes

//everlasting guilty pool
mods.extendedcrafting.TableCrafting.addShaped("00bb93eb-1a7f-4886-90e4-39af28f51dd6", 0, <item:botania:creative_pool>, [
	[<item:botania:rune_winter>, <item:botania:rune_air>, <item:botania:rune_spring>, <item:botania:rune_gluttony>, <item:botania:rune_fire>, <item:botania:rune_gluttony>, <item:botania:rune_spring>, <item:botania:rune_air>, <item:botania:rune_winter>], 
	[<item:botania:rune_winter>, <item:botania:rune_air>, <item:botania:rune_summer>, <item:botania:rune_gluttony>, <item:botania:rune_fire>, <item:botania:rune_gluttony>, <item:botania:rune_summer>, <item:botania:rune_air>, <item:botania:rune_winter>], 
	[<item:botania:rune_earth>, <item:botania:rune_air>, <item:botania:rune_air>, <item:botania:rune_fire>, <item:botania:rune_wrath>, <item:botania:rune_fire>, <item:botania:rune_air>, <item:botania:rune_air>, <item:botania:rune_earth>], 
	[<item:botania:rune_earth>, <item:botania:rune_air>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_pride>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_air>, <item:botania:rune_earth>], 
	[<item:botania:rune_earth>, <item:botania:rune_earth>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:paraglider:anti_vessel>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_earth>, <item:botania:rune_earth>], 
	[<item:botania:gaia_ingot>, <item:botania:rune_greed>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_pride>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_greed>, <item:botania:gaia_ingot>], 
	[<item:botania:gaia_ingot>, <item:botania:rune_water>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:gaia_head>, <item:botania:rune_mana>, <item:botania:rune_mana>, <item:botania:rune_water>, <item:botania:gaia_ingot>], 
	[<item:botania:gaia_ingot>, <item:botania:gaia_spreader>, <item:botania:rune_water>, <item:botania:rune_greed>, <item:botania:mana_void>, <item:botania:rune_greed>, <item:botania:rune_water>, <item:botania:gaia_spreader>, <item:botania:gaia_ingot>], 
	[<item:botania:gaia_pylon>, <item:botania:gaia_ingot>, <item:botania:fabulous_pool>, <item:botania:gaia_ingot>, <item:botania:fabulous_pool>, <item:botania:gaia_ingot>, <item:botania:fabulous_pool>, <item:botania:gaia_ingot>, <item:botania:gaia_pylon>]
]);

//botania recipes end

//applied energistics 2 recipes start

//creative energy cell
mods.extendedcrafting.TableCrafting.addShaped("15cc5e6d-16cc-4a81-af4e-81ce5aff558c", 0, <item:ae2:creative_energy_cell>, [
	[<item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_block>, <item:ae2:energy_acceptor>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:energy_acceptor>, <item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:extendedcrafting:frame>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_smart_dense_cable>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_block>], 
	[<item:ae2:energy_acceptor>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:engineering_processor>, <item:ae2:singularity>, <item:ae2:engineering_processor>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:energy_acceptor>], 
	[<item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>, <item:ae2:engineering_processor>, <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:engineering_processor>, <item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>], 
	[<item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>, <item:ae2:singularity>, <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:paraglider:anti_vessel>, <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:singularity>, <item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>], 
	[<item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>, <item:ae2:engineering_processor>, <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:ae2:engineering_processor>, <item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>], 
	[<item:ae2:energy_acceptor>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:engineering_processor>, <item:ae2:singularity>, <item:ae2:engineering_processor>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:energy_acceptor>], 
	[<item:extendedcrafting:black_iron_block>, <item:extendedcrafting:frame>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_smart_dense_cable>, <item:extendedcrafting:frame>, <item:extendedcrafting:black_iron_block>], 
	[<item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_block>, <item:ae2:energy_acceptor>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:energy_acceptor>, <item:extendedcrafting:black_iron_block>, <item:extendedcrafting:black_iron_block>]
]);

//creative item cell
mods.extendedcrafting.TableCrafting.addShaped("ee70bbbe-2c8e-4781-922c-f93cc2f416f3", 0, <item:ae2:creative_item_cell>, [
	[<item:extendedcrafting:frame>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:extendedcrafting:frame>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:extendedcrafting:frame>], 
	[<item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:fluix_pearl>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_pearl>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>], 
	[<item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:fluix_pearl>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_pearl>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>], 
	[<item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_pearl>, <item:ae2:fluix_pearl>, <item:ae2:singularity>, <item:ae2:engineering_processor>, <item:ae2:singularity>, <item:ae2:fluix_pearl>, <item:ae2:fluix_pearl>, <item:ae2:quartz_vibrant_glass>], 
	[<item:extendedcrafting:frame>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:engineering_processor>, <item:paraglider:anti_vessel>, <item:ae2:engineering_processor>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:extendedcrafting:frame>], 
	[<item:immersiveengineering:sheetmetal_iron>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:singularity>, <item:ae2:engineering_processor>, <item:ae2:singularity>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:immersiveengineering:sheetmetal_iron>], 
	[<item:immersiveengineering:sheetmetal_iron>, <item:ae2:cell_component_64k>, <item:ae2:item_storage_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:item_storage_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:item_storage_cell_64k>, <item:ae2:cell_component_64k>, <item:immersiveengineering:sheetmetal_iron>], 
	[<item:immersiveengineering:sheetmetal_iron>, <item:ae2:cell_component_64k>, <item:ae2:item_storage_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:item_storage_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:item_storage_cell_64k>, <item:ae2:cell_component_64k>, <item:immersiveengineering:sheetmetal_iron>], 
	[<item:ae2:energy_acceptor>, <item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:sheetmetal_iron>, <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:sheetmetal_iron>, <item:immersiveengineering:sheetmetal_iron>, <item:ae2:energy_acceptor>]
]);

//creative fluid cell
mods.extendedcrafting.TableCrafting.addShaped("98ab38fd-73d9-4ae3-876d-1fb1e9bf100d", 0, <item:ae2:creative_fluid_cell>, [
	[<item:extendedcrafting:frame>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:extendedcrafting:frame>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:ae2:quartz_vibrant_glass>, <item:extendedcrafting:frame>], 
	[<item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:fluix_pearl>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_pearl>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>], 
	[<item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:fluix_pearl>, <item:ae2:fluix_smart_dense_cable>, <item:ae2:fluix_pearl>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:quartz_vibrant_glass>], 
	[<item:ae2:quartz_vibrant_glass>, <item:ae2:fluix_pearl>, <item:ae2:fluix_pearl>, <item:ae2:singularity>, <item:ae2:engineering_processor>, <item:ae2:singularity>, <item:ae2:fluix_pearl>, <item:ae2:fluix_pearl>, <item:ae2:quartz_vibrant_glass>], 
	[<item:extendedcrafting:frame>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:engineering_processor>, <item:paraglider:anti_vessel>, <item:ae2:engineering_processor>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:extendedcrafting:frame>], 
	[<item:immersiveengineering:sheetmetal_copper>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:ae2:singularity>, <item:ae2:engineering_processor>, <item:ae2:singularity>, <item:ae2:fluix_block>, <item:ae2:fluix_block>, <item:immersiveengineering:sheetmetal_copper>], 
	[<item:immersiveengineering:sheetmetal_copper>, <item:ae2:cell_component_64k>, <item:ae2:portable_fluid_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:portable_fluid_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:portable_fluid_cell_64k>, <item:ae2:cell_component_64k>, <item:immersiveengineering:sheetmetal_copper>], 
	[<item:immersiveengineering:sheetmetal_copper>, <item:ae2:cell_component_64k>, <item:ae2:portable_fluid_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:portable_fluid_cell_64k>, <item:ae2:fluix_pearl>, <item:ae2:portable_fluid_cell_64k>, <item:ae2:cell_component_64k>, <item:immersiveengineering:sheetmetal_copper>], 
	[<item:ae2:energy_acceptor>, <item:immersiveengineering:sheetmetal_copper>, <item:immersiveengineering:sheetmetal_copper>, <item:immersiveengineering:sheetmetal_copper>, <item:ae2:dense_energy_cell>.withTag({internalMaxPower: 1600000.0 as double, internalCurrentPower: 1600000.0 as double}), <item:immersiveengineering:sheetmetal_copper>, <item:immersiveengineering:sheetmetal_copper>, <item:immersiveengineering:sheetmetal_copper>, <item:ae2:energy_acceptor>]
]);

//immersive engineering creative energy cell
mods.extendedcrafting.TableCrafting.addShaped("770f4ccb-a3f9-442b-9446-74b562a03011", 0, <item:immersiveengineering:capacitor_creative>, [
	[<item:immersiveengineering:connector_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv_relay>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:transformer_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv_relay>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv>], 
	[<item:immersiveengineering:rs_engineering>, <item:immersiveengineering:rs_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:rs_engineering>, <item:immersiveengineering:rs_engineering>], 
	[<item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:electron_tube>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:steel" as string}), <item:immersiveengineering:light_engineering>, <item:immersiveengineering:transformer_hv>, <item:immersiveengineering:light_engineering>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:steel" as string}), <item:immersiveengineering:electron_tube>, <item:immersiveengineering:heavy_engineering>], 
	[<item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>], 
	[<item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:generator>, <item:immersiveengineering:generator>, <item:immersiveengineering:generator>, <item:paraglider:anti_vessel>, <item:immersiveengineering:generator>, <item:immersiveengineering:generator>, <item:immersiveengineering:generator>, <item:immersiveengineering:capacitor_hv>], 
	[<item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:capacitor_hv>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:heavy_engineering>], 
	[<item:immersiveengineering:heavy_engineering>, <item:immersiveengineering:electron_tube>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:steel" as string}), <item:immersiveengineering:light_engineering>, <item:immersiveengineering:transformer_hv>, <item:immersiveengineering:light_engineering>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:steel" as string}), <item:immersiveengineering:electron_tube>, <item:immersiveengineering:heavy_engineering>], 
	[<item:immersiveengineering:rs_engineering>, <item:immersiveengineering:rs_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:rs_engineering>, <item:immersiveengineering:rs_engineering>], 
	[<item:immersiveengineering:connector_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv_relay>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:transformer_hv>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv_relay>, <item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:connector_hv>]
]);
