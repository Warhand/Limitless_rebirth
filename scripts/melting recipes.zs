import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.type.IIngredientAny;
import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.recipe.SmithingRecipeManager;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;


//removing default dust melting recipe
<recipetype:tconstruct:melting>.removeByRegex("tconstruct:smeltery.*melting.*metal.*dust");

val dust_to_molten_map as IFluidStack[IIngredient] = {
	<tag:items:forge:dusts/iron>.asIIngredient(): <fluid:tconstruct:molten_iron>
};

for input, output in dust_to_molten_map{
<recipetype:tconstruct:melting>.addJsonRecipe("custom_melting_dust_to_" + output.registryName.path, {
  "ingredient": input,
  "result": {
    "fluid": output.registryName,
    "amount": 120
  },
  "temperature": 700,
  "time": 43
});
}