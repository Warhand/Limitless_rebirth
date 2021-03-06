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
import crafttweaker.api.loot.condition.builder.LootTableIdLootConditionBuilder;

//public class lootGroup {
//
//	public var loot as IItemStack : get;
//	public var chance as double : get;
//	public var stack_base as int : get;
//	public var stack_max as int : get;
//
//	public this(loot as IItemStack, chance as double, stack_base as int, stack_max as int) {
//		this.loot = loot;
//		this.chance = chance;
//		this.stack_base = stack_base;
//		this.stack_max = stack_max;
//	}
//}
//
//var groups_cyclic_loot = [
//	new lootGroup(<item:minecraft:oak_sign>, 1.0, 12, 4)
//] as lootGroup[];
//
//for group in groups_cyclic_loot {
//    craftingTable.remove(group.loot);
//    loot.modifiers.register("loot_" + group.loot.registryName.path,
//        LootConditions.allOf([
//            LootTableIdLootCondition.create(<resource:minecraft:chests/abandoned_mineshaft>),
//    ]),
//    (stacks, context) => {
//        if context.random.nextFloat() < group.chance {
//            stacks.add(group.loot * (context.random.nextInt(group.stack_max) + group.stack_base));
//        }
//        return stacks;
//    });
//}

//val cyclic_loot as float[IItemStack] = {
//	<item:minecraft:oak_sign> : 1.0
//};

//<item:minecraft:bone>,
//<item:minecraft:arrow>,
//<item:minecraft:rotten_flesh>,
//<item:minecraft:leather>,
//<item:minecraft:carrot>,
//<item:minecraft:apple>,
//<item:minecraft:rabbit_hide>,
//<item:minecraft:iron_ingot>,
//<item:minecraft:lapis_lazuli>,
//<item:minecraft:melon_seeds>,
//<item:minecraft:coal>,
//<item:minecraft:torch>,
//<item:minecraft:string>,
//<item:minecraft:bread>,
//<item:minecraft:rail>,

public var loot_removal = [
<item:ars_nouveau:wilden_wing>,
<item:minecraft:redstone>,
<item:minecraft:tipped_arrow>,
<item:relics:rune_of_love>,
<item:relics:rune_of_moon>,
<item:relics:rune_of_earth>,
<item:relics:rune_of_luck>,
<item:relics:rune_of_air>,
<item:relics:rune_of_sun>,
<item:relics:rune_of_cold>,
<item:minecraft:iron_nugget>,
<item:ars_nouveau:split_arrow>,
<item:ars_nouveau:wilden_spike>,
<item:minecraft:stone_sword>,
<item:minecraft:activator_rail>,
<item:ars_nouveau:wilden_horn>,
<item:minecraft:glow_berries>,
<item:minecraft:pumpkin_seeds>,
<item:minecraft:beetroot_seeds>,
<item:supplementaries:flax_seeds>,
<item:ars_nouveau:amplify_arrow>,
<item:minecraft:powered_rail>,
<item:relics:rune_of_water>,
<item:supplementaries:rope>,
<item:relics:rune_of_fire>,
<item:relics:rune_of_explosion>,
<item:relics:rune_of_lightning>,
<item:ars_nouveau:pierce_arrow>,
<item:minecraft:wheat>,
<item:relics:rune_of_redstone>,
<item:artifacts:whoopee_cushion>,
<item:artifacts:lucky_scarf>,
<item:relics:drowned_belt>,
<item:artifacts:scarf_of_invisibility>,
<item:relics:blazing_flask>,
<item:relics:holy_locket>,
<item:artifacts:villager_hat>,
<item:artifacts:flippers>,
<item:relics:leather_belt>,
<item:artifacts:flame_pendant>,
<item:relics:infinity_ham>,
<item:artifacts:running_shoes>,
<item:artifacts:thorn_pendant>,
<item:relics:soul_devourer>,
<item:artifacts:antidote_vessel>,
<item:artifacts:golden_hook>,
<item:artifacts:pocket_piston>,
<item:artifacts:plastic_drinking_hat>,
<item:artifacts:crystal_heart>,
<item:relics:magic_mirror>,
<item:relics:elytra_booster>,
<item:artifacts:aqua_dashers>,
<item:artifacts:night_vision_goggles>,
<item:relics:spatial_sign>,
<item:artifacts:everlasting_beef>,
<item:artifacts:eternal_steak>,
<item:relics:jellyfish_necklace>,
<item:artifacts:obsidian_skull>,
<item:artifacts:panic_necklace>,
<item:relics:enders_hand>,
<item:artifacts:power_glove>,
<item:relics:space_dissector>,
<item:artifacts:digging_claws>,
<item:relics:arrow_quiver>,
<item:relics:delay_ring>,
<item:artifacts:novelty_drinking_hat>,
<item:artifacts:umbrella>,
<item:relics:reflection_necklace>,
<item:relics:bastion_ring>,
<item:relics:spider_necklace>,
<item:relics:shadow_glaive>,
<item:relics:ice_skates>,
<item:artifacts:cross_necklace>,
<item:artifacts:charm_of_sinking>,
<item:artifacts:cloud_in_a_bottle>,
<item:relics:wool_mitten>,
<item:artifacts:helium_flamingo>,
<item:relics:lucky_horseshoe>,
<item:artifacts:superstitious_hat>,
<item:relics:out_runner>,
<item:relics:squire_bag>,
<item:artifacts:bunny_hoppers>,
<item:artifacts:steadfast_spikes>,
<item:relics:slime_heart>,
<item:relics:hunter_belt>,
<item:relics:ghost_skin_talisman>,
<item:relics:spore_sack>,
<item:relics:camouflage_ring>,
<item:relics:horse_flute>,
<item:relics:magma_walker>,
<item:artifacts:snorkel>,
<item:artifacts:vampiric_glove>,
<item:relics:chorus_inhibitor>,
<item:relics:ice_breaker>,
<item:relics:midnight_robe>,
<item:relics:scarab_talisman>,
<item:relics:amphibian_boot>,
<item:artifacts:kitty_slippers>,
<item:relics:old_boot>,
<item:artifacts:universal_attractor>,
<item:relics:rage_glove>,
<item:relics:fragrant_flower>,
<item:cyclic:charm_ultimate>,
<item:cyclic:ender_bag>,
<item:cyclic:charm_home>,
<item:cyclic:charm_world>,
<item:cyclic:ender_pearl_reuse>,
<item:cyclic:ender_pearl_mounted>,
<item:cyclic:ender_eye_reuse>,
<item:cyclic:crystal_pickaxe>,
<item:cyclic:crystal_axe>,
<item:cyclic:boomerang_stun>,
<item:cyclic:charm_crit>,
<item:cyclic:quiver_damage>,
<item:cyclic:quiver_lightning>,
<item:cyclic:charm_invisible>,
<item:cyclic:charm_venom>,
<item:cyclic:charm_starvation>,
<item:cyclic:charm_magicdefense>,
<item:cyclic:charm_fire>,
<item:cyclic:charm_antidote>,
<item:cyclic:charm_void>,
<item:cyclic:antigravity>,
<item:cyclic:charm_wing>,
<item:cyclic:charm_speed>,
<item:cyclic:charm_knockback_resistance>,
<item:cyclic:charm_luck>,
<item:cyclic:charm_attack_speed>,
<item:cyclic:charm_xp_speed>,
<item:cyclic:charm_xp_blocker>,
<item:cyclic:prospector>,
<item:cyclic:ender_book>,
<item:cyclic:crystal_shovel>,
<item:cyclic:crystal_hoe>,
<item:cyclic:charm_wither>,
<item:cyclic:flippers>,
<item:cyclic:glove_climb>,
<item:cyclic:spawner_seeker>,
<item:aquaculture:lockbox>,
<item:cyclic:charm_stealthpotion>,
<item:cyclic:charm_longfall>,
<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}),
<item:cyclic:charm_boostpotion>,
<item:cyclic:charm_water>,
<item:cyclic:crystal_sword>,
<item:aquaculture:box>,
<item:cyclic:charm_stone>,
<item:cyclic:charm_creeper>,
<item:schoolsofmagic:letter_ccw>,
<item:artifacts:fire_gauntlet>,
<item:relics:stellar_catalyst>,
<item:artifacts:shock_pendant>,
<item:artifacts:feral_claws>,
<item:quark:diamond_heart>,
<item:paraglider:spirit_orb>,
<item:aquaculture:treasure_chest>,
<item:minecraft:spectral_arrow>,
<item:cyclic:elevation_wand>
]as IIngredient[];



loot.modifiers.register(
  "removing_various_curios_from_chests",
  LootConditions.only(LootTableIdRegexLootCondition.create(".*chests/.*")),
  CommonLootModifiers.removeAll(loot_removal)
);

public var all_chests = [

]as ResourceLocation[];

//ocean

val ocean_loot as float[IItemStack] = {
	<item:artifacts:umbrella>               :0.04,
	<item:artifacts:novelty_drinking_hat>   :0.04,
	<item:artifacts:snorkel>                :0.04,
	<item:artifacts:charm_of_sinking>       :0.04,
	<item:artifacts:antidote_vessel>        :0.04,
	<item:artifacts:helium_flamingo>        :0.04,
	<item:artifacts:golden_hook>            :0.04,
	<item:artifacts:aqua_dashers>           :0.04,
	<item:cyclic:charm_stealthpotion>       :0.04,
	<item:cyclic:charm_water>               :0.04,
	<item:cyclic:charm_venom>               :0.04,
	<item:relics:old_boot>                  :0.04,
	<item:minecraft:potion>                 :0.04,
	<item:paraglider:spirit_orb>            :0.04,
	<item:schoolsofmagic:letter_ccw>        :0.04,
	<item:relics:reflection_necklace>       :0.04,
	<item:relics:drowned_belt>              :0.04,
	<item:relics:jellyfish_necklace>        :0.04,
	<item:relics:hunter_belt>               :0.04,
	<item:relics:arrow_quiver>              :0.04,
	<item:relics:spider_necklace>           :0.04,
	<item:cyclic:charm_speed>               :0.04,
	<item:cyclic:charm_starvation>          :0.04,
	<item:cyclic:charm_magicdefense>        :0.04,
	<item:relics:leather_belt>              :0.04,
	<item:relics:amphibian_boot>            :0.04,
	<item:artifacts:running_shoes>          :0.04,
	<item:artifacts:whoopee_cushion>        :0.04,
	<item:aquaculture:lockbox>              :0.04,
	<item:aquaculture:treasure_chest>       :0.04,
	<item:aquaculture:box>                  :0.04,
	<item:cyclic:spell_water>               :0.04,
	<item:artifacts:flippers>               :0.04
};

loot.modifiers.register("loot_name_in_oceans",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/ocean>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_map>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_supply>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/underwater_ruin_big>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/underwater_ruin_small>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/buried_treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/ocean>)
	]),
	(stacks, context) => {
		for item, chance in ocean_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//underground

val underground_loot as float[IItemStack] = {
	<item:relics:infinity_ham>.withTag({charge: 0 as int})                  :0.015,
	<item:cyclic:crystal_pickaxe>                                           :0.015,
	<item:cyclic:crystal_shovel>                                            :0.015,
	<item:cyclic:crystal_sword>                                             :0.015,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})   :0.015,
	<item:blue_skies:poison_key>                                            :0.015,
	<item:paraglider:spirit_orb>                                            :0.1,
	<item:schoolsofmagic:letter_ccw>                                        :0.015,
	<item:relics:rage_glove>                                                :0.015,
	<item:cyclic:charm_antidote>                                            :0.015,
	<item:cyclic:charm_fire>                                                :0.015,
	<item:cyclic:glove_climb>                                               :0.015,
	<item:cyclic:charm_magicdefense>                                        :0.015,
	<item:cyclic:charm_speed>                                               :0.015,
	<item:cyclic:charm_luck>                                                :0.015,
	<item:cyclic:charm_xp_blocker>                                          :0.015,
	<item:cyclic:prospector>                                                :0.015,
	<item:cyclic:charm_wing>                                                :0.015,
	<item:cyclic:charm_xp_speed>                                            :0.015,
	<item:cyclic:charm_attack_speed>                                        :0.015,
	<item:cyclic:charm_knockback_resistance>                                :0.015,
	<item:cyclic:charm_venom>                                               :0.015,
	<item:relics:magic_mirror>                                              :0.015,
	<item:relics:old_boot>                                                  :0.015,
	<item:relics:slime_heart>                                               :0.015,
	<item:relics:squire_bag>                                                :0.015,
	<item:cyclic:charm_longfall>                                            :0.015,
	<item:cyclic:charm_stealthpotion>                                       :0.015,
	<item:cyclic:quiver_damage>                                             :0.015,
	<item:cyclic:charm_invisible>                                           :0.015,
	<item:cyclic:charm_crit>                                                :0.015,
	<item:cyclic:charm_creeper>                                             :0.015,
	<item:relics:ghost_skin_talisman>                                       :0.015,
	<item:relics:leather_belt>                                              :0.015,
	<item:relics:shadow_glaive>                                             :0.015,
	<item:relics:spider_necklace>                                           :0.015,
	<item:artifacts:antidote_vessel>                                        :0.015,
	<item:artifacts:obsidian_skull>                                         :0.015,
	<item:quark:diamond_heart>                                              :0.015,
	<item:artifacts:whoopee_cushion>                                        :0.015,
	<item:artifacts:vampiric_glove>                                         :0.015,
	<item:artifacts:pocket_piston>                                          :0.015,
	<item:artifacts:digging_claws>                                          :0.015,
	<item:aquaculture:lockbox>                                              :0.015,
	<item:aquaculture:treasure_chest>                                       :0.015,
	<item:cyclic:ender_eye_reuse>                                           :0.015,
	<item:cyclic:ender_pearl_mounted>                                       :0.015,
	<item:artifacts:lucky_scarf>                                            :0.015,
	<item:artifacts:steadfast_spikes>                                       :0.015,
	<item:artifacts:novelty_drinking_hat>                                   :0.015,
	<item:artifacts:umbrella>                                               :0.015,
	<item:cyclic:ender_pearl_reuse>                                         :0.015,
	<item:cyclic:charm_world>                                               :0.015,
	<item:aquaculture:box>                                                  :0.015,
	<item:cyclic:spawner_seeker>                                            :0.015,
	<item:cyclic:ender_bag>                                                 :0.015,
	<item:artifacts:scarf_of_invisibility>                                  :0.015,
	<item:artifacts:night_vision_goggles>                                   :0.015,
	<item:artifacts:cross_necklace>                                         :0.015,
	<item:artifacts:panic_necklace>                                         :0.015,
	<item:artifacts:shock_pendant>                                          :0.015,
	<item:artifacts:universal_attractor>                                    :0.015,
	<item:artifacts:power_glove>                                            :0.015,
	<item:artifacts:running_shoes>                                          :0.015
};

loot.modifiers.register("loot_name_in_underground",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:minecraft:chests/abandoned_mineshaft>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/simple_dungeon>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/swamp>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/deep>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/spawner_dungeon>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/castle_ruin>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/bridge>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/other>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/skeleton_horse_stable>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/bastions/underground/treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/birch>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/dark_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/savanna>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/stone>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/swamp>)
	]),
	(stacks, context) => {
		for item, chance in underground_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//overworld

val overworld_loot as float[IItemStack] = {
	<item:relics:camouflage_ring>                          :0.03,
	<item:artifacts:helium_flamingo>                       :0.03,
	<item:artifacts:cross_necklace>                        :0.03,
	<item:artifacts:scarf_of_invisibility>                 :0.03,
	<item:artifacts:running_shoes>                         :0.03,
	<item:artifacts:whoopee_cushion>                       :0.03,
	<item:aquaculture:box>                                 :0.03,
	<item:aquaculture:lockbox>                             :0.03,
	<item:aquaculture:treasure_chest>                      :0.03,
	<item:relics:hunter_belt>                              :0.03,
	<item:schoolsofmagic:letter_ccw>                       :0.03,
	<item:blue_skies:blinding_key>                         :0.03,
	<item:relics:delay_ring>                               :0.03,
	<item:relics:fragrant_flower>                          :0.03,
	<item:relics:spore_sack>                               :0.03,
	<item:relics:leather_belt>                             :0.03,
	<item:cyclic:charm_stealthpotion>                      :0.03,
	<item:relics:slime_heart>                              :0.03,
	<item:relics:old_boot>                                 :0.03,
	<item:relics:out_runner>                               :0.03,
	<item:relics:lucky_horseshoe>                          :0.03,
	<item:relics:arrow_quiver>                             :0.03,
	<item:cyclic:charm_speed>                              :0.03,
	<item:artifacts:thorn_pendant>                         :0.03,
	<item:artifacts:umbrella>                              :0.03,
	<item:cyclic:charm_xp_blocker>                         :0.03,
	<item:cyclic:quiver_damage>                            :0.03,
	<item:relics:squire_bag>                               :0.03,
	<item:relics:horse_flute>                              :0.03,
	<item:artifacts:power_glove>                           :0.03,
	<item:artifacts:bunny_hoppers>                         :0.03,
	<item:artifacts:novelty_drinking_hat>                  :0.03,
	<item:artifacts:villager_hat>                          :0.03,
	<item:artifacts:kitty_slippers>                        :0.03,
	<item:artifacts:pocket_piston>                         :0.03,
	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :0.03,
	<item:cyclic:crystal_shovel>                           :0.03,
	<item:cyclic:crystal_axe>                              :0.03,
	<item:cyclic:crystal_hoe>                              :0.03,
	<item:cyclic:spell_water>							   :0.03,
	<item:paraglider:spirit_orb>                           :0.1
};

loot.modifiers.register("loot_name_in_overworld",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/cities/overworld>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/igloos/grassy>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/pillager_outpost>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/witch_hut>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/player_house>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/forge>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/castle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/igloos/stone>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/igloos/mushroom>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/mushroom>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_warm/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/mushroom>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_2>)
	]),
	(stacks, context) => {
		for item, chance in underground_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//villages

val village_loot as float[IItemStack] = {
	<item:artifacts:thorn_pendant>                         :0.025,
	<item:artifacts:panic_necklace>                        :0.025,
	<item:artifacts:lucky_scarf>                           :0.025,
	<item:artifacts:kitty_slippers>                        :0.025,
	<item:artifacts:running_shoes>                         :0.025,
	<item:artifacts:whoopee_cushion>                       :0.025,
	<item:aquaculture:box>                                 :0.025,
	<item:aquaculture:lockbox>                             :0.025,
	<item:aquaculture:treasure_chest>                      :0.025,
	<item:cyclic:crystal_hoe>                              :0.025,
	<item:schoolsofmagic:letter_ccw>                       :0.025,
	<item:relics:arrow_quiver>                             :0.025,
	<item:relics:lucky_horseshoe>                          :0.025,
	<item:relics:horse_flute>                              :0.025,
	<item:artifacts:cross_necklace>                        :0.025,
	<item:artifacts:antidote_vessel>                       :0.025,
	<item:artifacts:bunny_hoppers>                         :0.025,
	<item:artifacts:cloud_in_a_bottle>                     :0.025,
	<item:artifacts:superstitious_hat>                     :0.025,
	<item:relics:magic_mirror>                             :0.025,
	<item:relics:camouflage_ring>                          :0.025,
	<item:relics:hunter_belt>                              :0.025,
	<item:paraglider:spirit_orb>                           :0.1,
	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :0.025,
	<item:relics:squire_bag>                               :0.025,
	<item:relics:old_boot>                                 :0.025,
	<item:relics:leather_belt>                             :0.025,
	<item:cyclic:charm_stealthpotion>                      :0.025,
	<item:artifacts:umbrella>                              :0.025,
	<item:artifacts:novelty_drinking_hat>                  :0.025,
	<item:artifacts:villager_hat>                          :0.025,
	<item:artifacts:vampiric_glove>                        :0.025,
	<item:artifacts:universal_attractor>                   :0.025
};

public var villages = [

]as ResourceLocation[];

loot.modifiers.register("loot_name_in_villages",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_armorer>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_butcher>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_cartographer>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_desert_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_fisher>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_fletcher>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_mason>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_plains_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_savanna_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_shepherd>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_snowy_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_taiga_house>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_tannery>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_temple>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_toolsmith>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_weaponsmith>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/birch_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/desert_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/jungle_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/oak_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/savanna_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/snowy_storage>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/badlands_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_cartographer>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_fisher>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_tannery>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/crimson_weaponsmith>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/dark_forest_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/giant_taiga_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/jungle_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/mountains_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/mushroom_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/oak_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/swamp_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_cartographer>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_fisher>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_tannery>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/villages/warped_weaponsmith>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/forge>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/library>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/supply>)
	]),
	(stacks, context) => {
		for item, chance in village_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//desert

val desert_loot as float[IItemStack] = {
	<item:cyclic:crystal_pickaxe>                                         :0.02,
	<item:cyclic:crystal_shovel>                                          :0.02,
	<item:relics:holy_locket>                                             :0.02,
	<item:relics:magic_mirror>                                            :0.02,
	<item:relics:blazing_flask>                                           :0.02,
	<item:relics:spider_necklace>                                         :0.02,
	<item:relics:out_runner>                                              :0.02,
	<item:relics:leather_belt>                                            :0.02,
	<item:cyclic:charm_speed>                                             :0.02,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}) :0.02,
	<item:paraglider:spirit_orb>                                          :0.1,
	<item:relics:lucky_horseshoe>                                         :0.02,
	<item:relics:squire_bag>                                              :0.02,
	<item:cyclic:charm_stealthpotion>                                     :0.02,
	<item:cyclic:charm_invisible>                                         :0.02,
	<item:artifacts:power_glove>                                          :0.02,
	<item:artifacts:feral_claws>                                          :0.02,
	<item:artifacts:flame_pendant>                                        :0.02,
	<item:artifacts:panic_necklace>                                       :0.02,
	<item:artifacts:scarf_of_invisibility>                                :0.02,
	<item:cyclic:ender_eye_reuse>                                         :0.02,
	<item:artifacts:novelty_drinking_hat>                                 :0.02,
	<item:schoolsofmagic:letter_ccw>                                      :0.02,
	<item:relics:magma_walker>                                            :0.02,
	<item:relics:scarab_talisman>                                         :0.08,
	<item:relics:rage_glove>                                              :0.02,
	<item:cyclic:charm_world>                                             :0.02,
	<item:cyclic:spawner_seeker>                                          :0.02,
	<item:cyclic:charm_wing>                                              :0.02,
	<item:cyclic:charm_xp_blocker>                                        :0.02,
	<item:cyclic:charm_venom>                                             :0.02,
	<item:cyclic:charm_magicdefense>                                      :0.02,
	<item:cyclic:charm_creeper>                                           :0.02,
	<item:cyclic:charm_longfall>                                          :0.02,
	<item:relics:infinity_ham>.withTag({charge: 0 as int})                :0.02,
	<item:cyclic:crystal_sword>                                           :0.02,
	<item:artifacts:pocket_piston>                                        :0.02,
	<item:artifacts:vampiric_glove>                                       :0.02,
	<item:artifacts:bunny_hoppers>                                        :0.02,
	<item:artifacts:running_shoes>                                        :0.02,
	<item:artifacts:steadfast_spikes>                                     :0.02,
	<item:aquaculture:box>                                                :0.02,
	<item:aquaculture:lockbox>                                            :0.02,
	<item:aquaculture:treasure_chest>                                     :0.02,
	<item:cyclic:charm_xp_speed>                                          :0.02,
	<item:cyclic:charm_fire>                                              :0.02,
	<item:artifacts:obsidian_skull>                                       :0.02,
	<item:artifacts:digging_claws>                                        :0.02,
	<item:artifacts:fire_gauntlet>                                        :0.02,
	<item:artifacts:cross_necklace>                                       :0.02,
	<item:artifacts:lucky_scarf>                                          :0.02,
	<item:cyclic:charm_knockback_resistance>                              :0.02
};

loot.modifiers.register("loot_name_in_deserts",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/badlands>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/desert>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/desert_pyramid>),
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/desert_house>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/desert>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/badlands>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/desert>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_hot/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_hot/small>)
	]),
	(stacks, context) => {
		for item, chance in desert_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//forest

val forest_loot as float[IItemStack] = {
	<item:artifacts:thorn_pendant>                                         :0.025,
	<item:artifacts:antidote_vessel>                                       :0.025,
	<item:artifacts:feral_claws>                                           :0.025,
	<item:artifacts:pocket_piston>                                         :0.025,
	<item:artifacts:running_shoes>                                         :0.025,
	<item:artifacts:steadfast_spikes>                                      :0.025,
	<item:aquaculture:box>                                                 :0.025,
	<item:aquaculture:lockbox>                                             :0.025,
	<item:aquaculture:treasure_chest>                                      :0.025,
	<item:relics:old_boot>                                                 :0.025,
	<item:artifacts:superstitious_hat>                                     :0.025,
	<item:artifacts:lucky_scarf>                                           :0.025,
	<item:artifacts:panic_necklace>                                        :0.025,
	<item:cyclic:charm_attack_speed>                                       :0.025,
	<item:cyclic:charm_speed>                                              :0.025,
	<item:cyclic:charm_longfall>                                           :0.025,
	<item:relics:out_runner>                                               :0.025,
	<item:relics:camouflage_ring>                                          :0.025,
	<item:relics:arrow_quiver>                                             :0.025,
	<item:relics:lucky_horseshoe>                                          :0.025,
	<item:relics:fragrant_flower>                                          :0.025,
	<item:relics:magic_mirror>                                             :0.025,
	<item:relics:spider_necklace>                                          :0.025,
	<item:relics:spore_sack>                                               :0.025,
	<item:artifacts:villager_hat>                                          :0.025,
	<item:cyclic:spawner_seeker>                                           :0.025,
	<item:cyclic:charm_wing>                                               :0.025,
	<item:relics:leather_belt>                                             :0.025,
	<item:relics:horse_flute>                                              :0.025,
	<item:relics:squire_bag>                                               :0.025,
	<item:cyclic:charm_creeper>                                            :0.025,
	<item:cyclic:charm_stealthpotion>                                      :0.025,
	<item:cyclic:quiver_damage>                                            :0.025,
	<item:artifacts:umbrella>                                              :0.025,
	<item:cyclic:charm_home>                                               :0.025,
	<item:cyclic:charm_antidote>                                           :0.025,
	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :0.025,
	<item:cyclic:crystal_shovel>                                           :0.025,
	<item:cyclic:crystal_axe>                                              :0.025,
	<item:cyclic:crystal_hoe>                                              :0.025,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :0.025,
	<item:blue_skies:nature_key>                                           :0.025,
	<item:paraglider:spirit_orb>                                           :0.1,
	<item:schoolsofmagic:letter_ccw>                                       :0.025,
	<item:relics:hunter_belt>                                              :0.025
};

loot.modifiers.register("loot_name_in_forests",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/dark_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/fortresses/jungle_center>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/fortresses/jungle_hallway>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/fortresses/jungle_shrine>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/jungle_temple>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/birch>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/giant_tree_taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/oak>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/dark_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/flower_forest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/giant_tree_taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/jungle>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_3>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_4>)		
	]),
	(stacks, context) => {
		for item, chance in forest_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});


//frozen

val frozen_loot as float[IItemStack] = {
	<item:artifacts:feral_claws>                           :0.03,
	<item:artifacts:digging_claws>                         :0.03,
	<item:artifacts:charm_of_sinking>                      :0.03,
	<item:artifacts:shock_pendant>                         :0.03,
	<item:artifacts:steadfast_spikes>                      :0.03,
	<item:artifacts:flippers>                              :0.03,
	<item:aquaculture:box>                                 :0.03,
	<item:aquaculture:lockbox>                             :0.03,
	<item:aquaculture:treasure_chest>                      :0.03,
	<item:cyclic:crystal_shovel>                           :0.03,
	<item:cyclic:crystal_axe>                              :0.03,
	<item:blue_skies:blinding_key>                         :0.03,
	<item:paraglider:spirit_orb>                           :0.1,
	<item:relics:hunter_belt>                              :0.03,
	<item:relics:ice_skates>                               :0.03,
	<item:relics:lucky_horseshoe>                          :0.03,
	<item:cyclic:charm_stealthpotion>                      :0.03,
	<item:relics:amphibian_boot>                           :0.03,
	<item:relics:magic_mirror>                             :0.03,
	<item:relics:ice_breaker>                              :0.03,
	<item:relics:wool_mitten>                              :0.03,
	<item:cyclic:glove_climb>                              :0.03,
	<item:cyclic:charm_water>                              :0.03,
	<item:artifacts:bunny_hoppers>                         :0.03,
	<item:artifacts:helium_flamingo>                       :0.03,
	<item:artifacts:universal_attractor>                   :0.03,
	<item:artifacts:umbrella>                              :0.03,
	<item:cyclic:spawner_seeker>                           :0.03,
	<item:cyclic:charm_speed>                              :0.03,
	<item:artifacts:snorkel>                               :0.03,
	<item:artifacts:scarf_of_invisibility>                 :0.03,
	<item:artifacts:cross_necklace>                        :0.03,
	<item:artifacts:panic_necklace>                        :0.03,
	<item:artifacts:aqua_dashers>                          :0.03,
	<item:artifacts:golden_hook>                           :0.03,
	<item:relics:infinity_ham>.withTag({charge: 0 as int}) :0.03,
	<item:cyclic:crystal_pickaxe>                          :0.03,
	<item:schoolsofmagic:letter_ccw>                       :0.03,
	<item:relics:drowned_belt>                             :0.03,
	<item:relics:jellyfish_necklace>                       :0.03
};

loot.modifiers.register("loot_name_in_frozen",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/snow>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/igloo_chest>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/taiga>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/snowy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/icy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/snowy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_cold/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_icy/large>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_icy/small>)
	]),
	(stacks, context) => {
		for item, chance in frozen_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//nether

val nether_loot as float[IItemStack] = {
	<item:cyclic:crystal_pickaxe>                                          :0.02,
	<item:cyclic:crystal_axe>                                              :0.02,
	<item:cyclic:crystal_sword>                                            :0.02,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :0.02,
	<item:blue_skies:poison_key>                                           :0.02,
	<item:paraglider:spirit_orb>                                           :0.1,
	<item:schoolsofmagic:letter_ccw>                                       :0.02,
	<item:relics:spatial_sign>                                             :0.02,
	<item:cyclic:charm_wither>                                             :0.02,
	<item:cyclic:charm_fire>                                               :0.02,
	<item:cyclic:charm_wing>                                               :0.02,
	<item:cyclic:charm_attack_speed>                                       :0.02,
	<item:relics:magic_mirror>                                             :0.02,
	<item:cyclic:quiver_lightning>                                         :0.02,
	<item:cyclic:charm_magicdefense>                                       :0.02,
	<item:cyclic:charm_speed>                                              :0.02,
	<item:cyclic:charm_knockback_resistance>                               :0.02,
	<item:cyclic:charm_boostpotion>                                        :0.02,
	<item:cyclic:charm_stealthpotion>                                      :0.02,
	<item:cyclic:charm_creeper>                                            :0.02,
	<item:relics:reflection_necklace>                                      :0.02,
	<item:relics:midnight_robe>                                            :0.02,
	<item:relics:soul_devourer>                                            :0.02,
	<item:relics:lucky_horseshoe>                                          :0.02,
	<item:relics:arrow_quiver>                                             :0.02,
	<item:relics:magma_walker>                                             :0.02,
	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :0.02,
	<item:relics:rage_glove>                                               :0.02,
	<item:relics:bastion_ring>                                             :0.02,
	<item:cyclic:charm_invisible>                                          :0.02,
	<item:cyclic:charm_crit>                                               :0.02,
	<item:cyclic:charm_longfall>                                           :0.02,
	<item:relics:ghost_skin_talisman>                                      :0.02,
	<item:relics:blazing_flask>                                            :0.02,
	<item:relics:holy_locket>                                              :0.02,
	<item:artifacts:cloud_in_a_bottle>                                     :0.02,
	<item:artifacts:panic_necklace>                                        :0.02,
	<item:artifacts:scarf_of_invisibility>                                 :0.02,
	<item:artifacts:vampiric_glove>                                        :0.02,
	<item:artifacts:running_shoes>                                         :0.02,
	<item:artifacts:steadfast_spikes>                                      :0.02,
	<item:aquaculture:box>                                                 :0.02,
	<item:aquaculture:lockbox>                                             :0.02,
	<item:aquaculture:treasure_chest>                                      :0.02,
	<item:artifacts:cross_necklace>                                        :0.02,
	<item:artifacts:universal_attractor>                                   :0.02,
	<item:artifacts:power_glove>                                           :0.02,
	<item:artifacts:flame_pendant>                                         :0.02,
	<item:cyclic:spawner_seeker>                                           :0.02,
	<item:cyclic:glove_climb>                                              :0.02,
	<item:cyclic:charm_ultimate>                                           :0.02,
	<item:cyclic:charm_world>                                              :0.02,
	<item:cyclic:ender_eye_reuse>                                          :0.02,
	<item:cyclic:ender_pearl_reuse>                                        :0.02,
	<item:artifacts:umbrella>                                              :0.02,
	<item:artifacts:lucky_scarf>                                           :0.02,
	<item:artifacts:fire_gauntlet>                                         :0.02,
	<item:artifacts:obsidian_skull>                                        :0.02
};

loot.modifiers.register("loot_name_in_nether",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/cities/nether>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/nether>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_bridge>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_hoglin_stable>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_other>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_treasure>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/nether_bridge>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/ruined_portal>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/crimson>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/nether>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/warped>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/crimson>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/supply>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/map>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/nether>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/nether_brick>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/outposts/warped>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/map>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/supply>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/strongholds/nether_hallway>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/strongholds/nether_library>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/strongholds/nether_storage_room>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/basalt>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/crimson>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/soul>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/warped>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/temples/wasteland>)
	]),
	(stacks, context) => {
		for item, chance in nether_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});


//end

val end_loot as float[IItemStack] = {
	<item:relics:shadow_glaive>.withTag({time: 0 as int})                 :0.02,
	<item:cyclic:crystal_sword>                                           :0.02,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string}) :0.02,
	<item:blue_skies:poison_key>                                          :0.02,
	<item:paraglider:spirit_orb>                                          :0.1,
	<item:schoolsofmagic:letter_ccw>                                      :0.02,
	<item:relics:spatial_sign>                                            :0.02,
	<item:relics:reflection_necklace>                                     :0.02,
	<item:relics:midnight_robe>                                           :0.02,
	<item:cyclic:charm_void>                                              :0.02,
	<item:cyclic:antigravity>                                             :0.02,
	<item:cyclic:ender_book>                                              :0.02,
	<item:cyclic:charm_speed>                                             :0.02,
	<item:cyclic:charm_attack_speed>                                      :0.02,
	<item:cyclic:charm_knockback_resistance>                              :0.02,
	<item:relics:enders_hand>                                             :0.02,
	<item:relics:soul_devourer>                                           :0.02,
	<item:cyclic:crystal_pickaxe>                                         :0.02,
	<item:relics:stellar_catalyst>                                        :0.02,
	<item:relics:rage_glove>                                              :0.02,
	<item:relics:arrow_quiver>                                            :0.02,
	<item:relics:lucky_horseshoe>                                         :0.02,
	<item:relics:chorus_inhibitor>                                        :0.02,
	<item:cyclic:charm_venom>                                             :0.02,
	<item:cyclic:charm_starvation>                                        :0.02,
	<item:relics:elytra_booster>                                          :0.02,
	<item:relics:magic_mirror>                                            :0.02,
	<item:relics:ghost_skin_talisman>                                     :0.02,
	<item:cyclic:charm_stone>                                             :0.02,
	<item:cyclic:charm_stealthpotion>                                     :0.02,
	<item:cyclic:charm_invisible>                                         :0.02,
	<item:cyclic:charm_crit>                                              :0.02,
	<item:cyclic:charm_boostpotion>                                       :0.02,
	<item:cyclic:charm_creeper>                                           :0.02,
	<item:cyclic:charm_longfall>                                          :0.02,
	<item:cyclic:charm_world>                                             :0.02,
	<item:cyclic:ender_pearl_reuse>                                       :0.02,
	<item:aquaculture:box>                                                :0.02,
	<item:artifacts:feral_claws>                                          :0.02,
	<item:artifacts:universal_attractor>                                  :0.02,
	<item:artifacts:scarf_of_invisibility>                                :0.02,
	<item:cyclic:ender_pearl_mounted>                                     :0.02,
	<item:aquaculture:lockbox>                                            :0.02,
	<item:aquaculture:treasure_chest>                                     :0.02,
	<item:cyclic:charm_home>                                              :0.02,
	<item:artifacts:shock_pendant>                                        :0.02,
	<item:quark:diamond_heart>                                            :0.02,
	<item:artifacts:power_glove>                                          :0.02,
	<item:artifacts:lucky_scarf>                                          :0.02,
	<item:relics:space_dissector>                                         :0.02,
	<item:cyclic:charm_magicdefense>                                      :0.02,
	<item:cyclic:charm_xp_speed>                                          :0.02,
	<item:cyclic:charm_wing>                                              :0.02,
	<item:cyclic:charm_ultimate>                                          :0.02,
	<item:cyclic:ender_bag>                                               :0.02,
	<item:cyclic:elevation_wand>                                          :0.02
};

loot.modifiers.register("loot_name_in_ender",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:minecraft:chests/end_city_treasure>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_corridor>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_crossing>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mineshafts/end>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/pyramids/end>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/end/map>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/end/supply>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruined_portals/end/large_portal>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruined_portals/end/small_portal>)
	]),
	(stacks, context) => {
		for item, chance in end_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});

//treasures

val treasure_loot as float[IItemStack] = {
	<item:relics:infinity_ham>.withTag({charge: 0 as int})                 :0.005,
	<item:cyclic:crystal_pickaxe>                                          :0.005,
	<item:cyclic:crystal_shovel>                                           :0.005,
	<item:cyclic:crystal_axe>                                              :0.005,
	<item:cyclic:crystal_sword>                                            :0.005,
	<item:cyclic:crystal_hoe>                                              :0.005,
	<item:minecraft:potion>.withTag({Potion: "minecraft:luck" as string})  :0.005,
	<item:blue_skies:blinding_key>                                         :0.005,
	<item:blue_skies:nature_key>                                           :0.005,
	<item:relics:elytra_booster>                                           :0.005,
	<item:relics:fragrant_flower>                                          :0.005,
	<item:relics:magic_mirror>                                             :0.005,
	<item:relics:ice_breaker>                                              :0.005,
	<item:relics:blazing_flask>                                            :0.005,
	<item:relics:enders_hand>                                              :0.005,
	<item:relics:holy_locket>                                              :0.005,
	<item:relics:soul_devourer>                                            :0.005,
	<item:relics:space_dissector>                                          :0.005,
	<item:relics:hunter_belt>                                              :0.005,
	<item:relics:delay_ring>                                               :0.005,
	<item:relics:bastion_ring>                                             :0.005,
	<item:relics:chorus_inhibitor>                                         :0.005,
	<item:relics:arrow_quiver>                                             :0.005,
	<item:relics:camouflage_ring>                                          :0.005,
	<item:relics:ice_skates>                                               :0.005,
	<item:relics:rage_glove>                                               :0.005,
	<item:relics:jellyfish_necklace>                                       :0.005,
	<item:paraglider:spirit_orb>                                           :0.1,
	<item:relics:magma_walker>                                             :0.005,
	<item:relics:midnight_robe>                                            :0.005,
	<item:relics:scarab_talisman>                                          :0.005,
	<item:relics:stellar_catalyst>                                         :0.005,
	<item:relics:reflection_necklace>                                      :0.005,
	<item:relics:spatial_sign>                                             :0.005,
	<item:schoolsofmagic:letter_ccw>                                       :0.005,
	<item:blue_skies:poison_key>                                           :0.005,
	<item:relics:horse_flute>                                              :0.005,
	<item:relics:lucky_horseshoe>                                          :0.005,
	<item:relics:spider_necklace>                                          :0.005,
	<item:relics:spore_sack>                                               :0.005,
	<item:relics:shadow_glaive>.withTag({time: 0 as int})                  :0.005,
	<item:relics:out_runner>                                               :0.005,
	<item:relics:amphibian_boot>                                           :0.005,
	<item:relics:old_boot>                                                 :0.005,
	<item:relics:slime_heart>                                              :0.005,
	<item:cyclic:charm_magicdefense>                                       :0.005,
	<item:cyclic:charm_starvation>                                         :0.005,
	<item:cyclic:charm_home>                                               :0.005,
	<item:cyclic:charm_world>                                              :0.005,
	<item:cyclic:charm_ultimate>                                           :0.001,
	<item:cyclic:charm_wither>                                             :0.005,
	<item:cyclic:charm_void>                                               :0.005,
	<item:cyclic:antigravity>                                              :0.005,
	<item:cyclic:charm_attack_speed>                                       :0.005,
	<item:cyclic:charm_xp_blocker>                                         :0.005,
	<item:cyclic:prospector>                                               :0.005,
	<item:cyclic:spawner_seeker>                                           :0.005,
	<item:cyclic:glove_climb>                                              :0.005,
	<item:cyclic:boomerang_stun>                                           :0.005,
	<item:cyclic:charm_wing>                                               :0.005,
	<item:cyclic:ender_book>                                               :0.005,
	<item:cyclic:charm_xp_speed>                                           :0.005,
	<item:cyclic:quiver_damage>                                            :0.005,
	<item:cyclic:charm_boostpotion>                                        :0.005,
	<item:relics:drowned_belt>                                             :0.005,
	<item:relics:leather_belt>                                             :0.005,
	<item:relics:squire_bag>                                               :0.005,
	<item:cyclic:charm_longfall>                                           :0.005,
	<item:cyclic:charm_creeper>                                            :0.005,
	<item:cyclic:charm_stone>                                              :0.005,
	<item:relics:ghost_skin_talisman>                                      :0.005,
	<item:relics:wool_mitten>                                              :0.005,
	<item:artifacts:digging_claws>                                         :0.005,
	<item:artifacts:feral_claws>                                           :0.005,
	<item:artifacts:power_glove>                                           :0.005,
	<item:artifacts:fire_gauntlet>                                         :0.005,
	<item:artifacts:pocket_piston>                                         :0.005,
	<item:artifacts:vampiric_glove>                                        :0.005,
	<item:aquaculture:box>                                                 :0.005,
	<item:aquaculture:lockbox>                                             :0.005,
	<item:aquaculture:treasure_chest>                                      :0.005,
	<item:cyclic:ender_bag>                                                :0.005,
	<item:artifacts:plastic_drinking_hat>                                  :0.005,
	<item:artifacts:novelty_drinking_hat>                                  :0.005,
	<item:artifacts:snorkel>                                               :0.005,
	<item:artifacts:night_vision_goggles>                                  :0.005,
	<item:artifacts:villager_hat>                                          :0.005,
	<item:artifacts:superstitious_hat>                                     :0.005,
	<item:quark:diamond_heart>                                             :0.005,
	<item:artifacts:running_shoes>                                         :0.005,
	<item:artifacts:kitty_slippers>                                        :0.005,
	<item:artifacts:bunny_hoppers>                                         :0.005,
	<item:artifacts:obsidian_skull>                                        :0.005,
	<item:cyclic:ender_eye_reuse>                                          :0.005,
	<item:cyclic:ender_pearl_reuse>                                        :0.005,
	<item:cyclic:ender_pearl_mounted>                                      :0.005,
	<item:artifacts:umbrella>                                              :0.005,
	<item:artifacts:shock_pendant>                                         :0.005,
	<item:artifacts:panic_necklace>                                        :0.005,
	<item:artifacts:cross_necklace>                                        :0.005,
	<item:artifacts:aqua_dashers>                                          :0.005,
	<item:artifacts:helium_flamingo>                                       :0.005,
	<item:artifacts:universal_attractor>                                   :0.005,
	<item:artifacts:cloud_in_a_bottle>                                     :0.005,
	<item:artifacts:charm_of_sinking>                                      :0.005,
	<item:artifacts:flame_pendant>                                         :0.005,
	<item:artifacts:golden_hook>                                           :0.005,
	<item:cyclic:charm_antidote>                                           :0.005,
	<item:cyclic:charm_fire>                                               :0.005,
	<item:artifacts:lucky_scarf>                                           :0.005,
	<item:artifacts:scarf_of_invisibility>                                 :0.005,
	<item:artifacts:thorn_pendant>                                         :0.005,
	<item:artifacts:antidote_vessel>                                       :0.005,
	<item:artifacts:steadfast_spikes>                                      :0.005,
	<item:artifacts:flippers>                                              :0.005,
	<item:artifacts:whoopee_cushion>                                       :0.005,
	<item:cyclic:quiver_lightning>                                         :0.005,
	<item:cyclic:charm_venom>                                              :0.005,
	<item:cyclic:charm_knockback_resistance>                               :0.005,
	<item:cyclic:charm_speed>                                              :0.005,
	<item:cyclic:charm_water>                                              :0.005,
	<item:cyclic:charm_invisible>                                          :0.005,
	<item:cyclic:charm_crit>                                               :0.005,
	<item:cyclic:charm_stealthpotion>                                      :0.005,
	<item:cyclic:elevation_wand>										   :0.005
};

loot.modifiers.register("loot_name_in_treasure",
	LootConditions.anyOf([
		LootTableIdLootCondition.create(<resource:valhelsia_structures:chests/treasure>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/treasure>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/secret_room>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/nether_bricks/treasure>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/end/treasure>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/treasure>),
		LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_5>),
		LootTableIdLootCondition.create(<resource:minecraft:chests/woodland_mansion>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/birch>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/desert>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/jungle>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/oak>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/savanna>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/snowy>),
		LootTableIdLootCondition.create(<resource:repurposed_structures:chests/mansions/taiga>)
	]),
	(stacks, context) => {
		for item, chance in treasure_loot {
			if context.random.nextFloat() < chance {
				stacks.add(item);
			}
		}
		return stacks;
	});