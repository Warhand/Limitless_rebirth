#priority 100

import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootTableIdRegexLootCondition;
import crafttweaker.api.loot.condition.RandomChanceLootCondition;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.resource.ResourceLocation;
import mods.jei.JEI;

//removing all relics runic altar recipes
<recipetype:relics:runic_altar>.removeAll();

val trash as IItemStack[] = [
	<item:cyclic:apple_honey>,
	<item:cyclic:amethyst_shovel>,
	<item:cyclic:netherbrick_shovel>,
	<item:cyclic:emerald_pickaxe>,
	<item:cyclic:inventory_cake>,
	<item:cyclic:solidifier>,
	<item:cyclic:melter>,
	<item:cyclic:emerald_chestplate>,
	<item:cyclic:netherbrick_hoe>,
	<item:cyclic:emerald_hoe>,
	<item:cyclic:sandstone_hoe>,
	<item:cyclic:crystal_helmet>,
	<item:cyclic:mattock_stone>,
	<item:cyclic:amethyst_hoe>,
	<item:cyclic:mattock>,
	<item:cyclic:amethyst_axe>,
	<item:cyclic:amethyst_sword>,
	<item:cyclic:mattock_nether>,
	<item:cyclic:sandstone_sword>,
	<item:cyclic:netherbrick_sword>,
	<item:cyclic:sandstone_axe>,
	<item:cyclic:emerald_axe>,
	<item:cyclic:netherbrick_pickaxe>,
	<item:cyclic:amethyst_pickaxe>,
	<item:cyclic:sandstone_pickaxe>,
	<item:cyclic:emerald_shovel>,
	<item:cyclic:sandstone_shovel>,
	<item:cyclic:crate>,
	<item:cyclic:solidifier>,
	<item:cyclic:generator_item>,
	<item:quark:chute>,
	<item:cyclic:item_pipe>,
	<item:cyclic:gem_obsidian>,
	<item:cyclic:crafter>,
	<item:cyclic:evoker_fang>,
	<item:cyclic:gem_amber>,
	<item:cyclic:heart>,
	<item:cyclic:storage_bag>,
	<item:cyclic:randomize_scepter>,
	<item:cyclic:replace_scepter>,
	<item:constructionwand:iron_wand>.withTag({wand_options: {}}),
	<item:cyclic:ender_pearl_mounted>,
	<item:cyclic:experience_food>,
	<item:cyclic:cable_wrench>,
	<item:cyclic:hopper_gold>,
	<item:cyclic:hopper>,
	<item:cyclic:shears_obsidian>,
	<item:cyclic:lever_remote>,
	<item:cyclic:ender_pearl_reuse>,
	<item:cyclic:ender_item_shelf>,
	<item:cyclic:fluid_pipe>,
	<item:patchouli:guide_book>.withTag({"patchouli:book": "cyclic:cyclic_guide_book" as string}),
	<item:cyclic:dark_glass>,
	<item:cyclic:generator_fluid>,
	<item:cyclic:melter>,
	<item:cyclic:cask>,
	<item:cyclic:apple_lofty_stature>,
	<item:cyclic:apple_honey>,
	<item:cyclic:conveyor>,
	<item:cyclic:ender_book>,
	<item:cyclic:anvil>,
	<item:cyclic:heart_empty>,
	<item:cyclic:spawn_inspector>,
	<item:cyclic:offset_scepter>,
	<item:cyclic:build_scepter>,
	<item:constructionwand:stone_wand>.withTag({wand_options: {}}),
	<item:cyclic:emerald_boots>,
	<item:cyclic:crystal_boots>,
	<item:cyclic:emerald_leggings>,
	<item:cyclic:crystal_leggings>,
	<item:cyclic:crystal_chestplate>,
	<item:cyclic:emerald_helmet>,
	<item:cyclic:netherbrick_axe>,
	<item:cyclic:charm_longfall>,
	<item:schoolsofmagic:letter_ccw>,
	<item:cyclic:crystal_shovel>,
	<item:cyclic:crystal_sword>,
	<item:cyclic:crystal_hoe>,
	<item:cyclic:crystal_axe>,
	<item:cyclic:crystal_pickaxe>,
	<item:cyclic:antigravity>,
	<item:cyclic:charm_void>,
	<item:cyclic:glove_climb>,
	<item:cyclic:charm_wing>,
	<item:cyclic:charm_xp_blocker>,
	<item:cyclic:charm_attack_speed>,
	<item:cyclic:charm_antidote>,
	<item:cyclic:charm_ultimate>,
	<item:cyclic:ice_scepter>,
	<item:cyclic:lightning_scepter>,
	<item:cyclic:charm_home>,
	<item:cyclic:ender_bag>,
	<item:cyclic:fire_scepter>,
	<item:cyclic:charm_wither>,
	<item:cyclic:charm_fire>,
	<item:cyclic:charm_world>,
	<item:cyclic:ender_eye_reuse>,
	<item:cyclic:ender_pearl_reuse>,
	<item:cyclic:ender_pearl_mounted>,
	<item:cyclic:spelunker>,
	<item:cyclic:teleport_wand>,
	<item:cgm:grenade>,
	<item:cgm:stun_grenade>,
	<item:cyclic:flippers>,
	<item:cyclic:spawner_seeker>,
	<item:cyclic:charm_water>,
	<item:cyclic:charm_starvation>,
	<item:cyclic:charm_stone>,
	<item:cyclic:charm_invisible>,
	<item:cyclic:soulstone>,
	<item:cyclic:glowing_helmet>,
	<item:cyclic:quiver_damage>,
	<item:cyclic:quiver_lightning>,
	<item:cyclic:charm_speed>,
	<item:cyclic:charm_luck>,
	<item:cyclic:charm_xp_speed>,
	<item:cyclic:charm_creeper>,
	<item:cyclic:charm_antipotion>,
	<item:cyclic:charm_boostpotion>,
	<item:cyclic:charm_venom>,
	<item:cyclic:charm_knockback_resistance>,
	<item:cyclic:prospector>,
	<item:cyclic:charm_crit>,
	<item:cyclic:charm_stealthpotion>,
	<item:cyclic:charm_magicdefense>,
	<item:cyclic:peat_unbaked>,
	<item:cyclic:peat_baked>,
	<item:cyclic:peat_farm>,
	<item:cyclic:charm_torch>,
	<item:cyclic:charm_torch_cave>,
	<item:cyclic:energy_pipe>,
	<item:quarryplus:flex_marker>,
	<item:quarryplus:workbench>,
	<item:beyond_earth:iron_stick>,
	<item:quarryplus:mover>,
	<item:cyclic:charm_torch>,
	<item:cyclic:charm_torch_cave>,
	<item:cyclic:battery>,
	<item:cyclic:crusher>,
	<item:indreb:bronze_ingot>,
	<item:indreb:bronze_block>,
	<item:indreb:steel_ingot>,
	<item:indreb:steel_block>,
	<item:upgradednetherite:gold_upgraded_netherite_ingot>,
	<item:upgradednetherite:fire_upgraded_netherite_ingot>,
	<item:upgradednetherite:ender_upgraded_netherite_ingot>,
	<item:upgradednetherite:water_upgraded_netherite_ingot>,
	<item:upgradednetherite:wither_upgraded_netherite_ingot>,
	<item:upgradednetherite:poison_upgraded_netherite_ingot>,
	<item:upgradednetherite:phantom_upgraded_netherite_ingot>,
	<item:upgradednetherite:feather_upgraded_netherite_ingot>,
	<item:upgradednetherite:corrupt_upgraded_netherite_ingot>,
	<item:upgradednetherite_ultimate:ultimate_upgraded_netherite_ingot>,
	<item:cyclic:carrot_ender>,
	<item:indreb:crushed_tin>,
	<item:cyclic:anvil>,
	<item:cyclic:dice>,
	<item:cyclic:fisher>,
	<item:createdeco:zinc_coin>,
	<item:createdeco:zinc_coinstack>,
	<item:createdeco:copper_coinstack>,
	<item:createdeco:brass_coin>,
	<item:createdeco:brass_coinstack>,
	<item:createdeco:iron_coinstack>,
	<item:createdeco:gold_coinstack>,
	<item:createdeco:netherite_coinstack>,
	<item:extendedcrafting:ender_ingot>,
	<item:relics:runic_altar>,
	<item:relics:runic_anvil>,
	<item:cyclic:beacon>,
	<item:immersiveengineering:mold_gear>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:immersiveengineering:windmill>,
	<item:immersiveengineering:watermill>,
	<item:cyclic:soundproofing>,
	<item:cyclic:spikes_iron>,
	<item:cyclic:spikes_curse>,
	<item:cyclic:spikes_fire>,
	<item:cyclic:spikes_diamond>,
	<item:cyclic:experience_pylon>,
	<item:buildinggadgets:gadget_building>,
	<item:buildinggadgets:gadget_exchanging>,
	<item:buildinggadgets:gadget_copy_paste>,
	<item:buildinggadgets:gadget_destruction>,
	<item:immersiveengineering:connector_lv>,
	<item:immersiveengineering:connector_lv_relay>,
	<item:immersiveengineering:connector_mv>,
	<item:immersiveengineering:connector_mv_relay>,
	<item:immersiveengineering:connector_hv>,
	<item:immersiveengineering:connector_hv_relay>,
	<item:createaddition:furnace_burner>,
	<item:immersiveposts:stick_gold>,
	<item:immersiveposts:stick_copper>,
	<item:extendedcrafting:crafting_core>,
	<item:prettypipes:medium_extraction_module>,
	<item:prettypipes:medium_crafting_module>,
	<item:prettypipes:medium_filter_module>,
	<item:prettypipes:medium_speed_module>,
	<item:prettypipes:medium_retrieval_module>,
	<item:prettypipes:high_extraction_module>,
	<item:prettypipes:high_filter_module>,
	<item:prettypipes:high_speed_module>,
	<item:prettypipes:high_retrieval_module>,
	<item:prettypipes:high_crafting_module>,
	<item:cyclic:elevation_wand>,
	<item:cyclic:spell_water>,
	<item:cyclic:terra_preta>,
	<item:indreb:basic_machine_casing>
];

for item in trash{
	craftingTable.remove(item);
}

val jei_removal as IItemStack[] = [
	<item:indreb:bronze_ingot>,
	<item:indreb:bronze_block>,
	<item:cyclic:apple_honey>,
	<item:indreb:steel_ingot>,
	<item:indreb:steel_block>,
	<item:cyclic:energy_pipe>,
	<item:cyclic:item_pipe>,
	<item:cyclic:fluid_pipe>,
	<item:quarryplus:solid_fuel_quarry>,
	<item:quarryplus:workbench>,
	<item:quarryplus:book_mover>,
	<item:quarryplus:pump_plus>,
	<item:quarryplus:replacer>,
	<item:quarryplus:exp_pump>,
	<item:quarryplus:adv_pump>,
	<item:quarryplus:adv_quarry>,
	<item:quarryplus:mini_quarry>,
	<item:quarryplus:filler>,
	<item:quarryplus:flex_marker>,
	<item:quarryplus:spawner_controller>,
	<item:quarryplus:fuel_module_normal>,
	<item:quarryplus:filler_module>,
	<item:quarryplus:mover>,
	<item:quarryplus:placer_plus>,
	<item:quarryplus:exp_module>,
	<item:cyclic:hopper_gold>,
	<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:platinum" as string}),
	<item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:invar" as string}),
	<item:cyclic:anvil>,
	<item:cyclic:gem_obsidian>,
	<item:cyclic:gem_amber>,
	<item:cyclic:dice>,
	<item:cyclic:fisher>,
	<item:createdeco:zinc_coin>,
	<item:createdeco:zinc_coinstack>,
	<item:createdeco:copper_coinstack>,
	<item:createdeco:brass_coin>,
	<item:createdeco:brass_coinstack>,
	<item:createdeco:iron_coinstack>,
	<item:createdeco:gold_coinstack>,
	<item:createdeco:netherite_coinstack>,
	<item:cyclic:generator_item>,
	<item:relics:runic_altar>,
	<item:relics:runic_anvil>,
	<item:immersiveengineering:mold_gear>,
	<item:tconstruct:gear_cast>,
	<item:tconstruct:gear_sand_cast>,
	<item:tconstruct:gear_red_sand_cast>,
	<item:indreb:iron_plate>,
	<item:cyclic:spikes_iron>,
	<item:cyclic:spikes_curse>,
	<item:cyclic:spikes_fire>,
	<item:cyclic:spikes_diamond>,
	<item:cyclic:experience_pylon>,
	<item:cyclic:crusher>
];

for item in jei_removal{
	JEI.hideIngredient(item);
}

//utter eradication (removing something from every recipe and JEI at once)

val utter_eradication as IItemStack[] = [
	<item:beyond_earth:cheese>
];

for item in utter_eradication{
	JEI.hideIngredient(item);
	recipes.remove(item);
}