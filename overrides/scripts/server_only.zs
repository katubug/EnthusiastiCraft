import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Disable clear ItemDucts
recipes.remove(<thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}));

recipes.remove(<thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}));

recipes.remove(<thermaldynamics:duct_32>);

recipes.remove(<thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}));

recipes.remove(<thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}));

recipes.remove(<thermaldynamics:duct_32:2>);

recipes.remove(<thermaldynamics:duct_32:4>.withTag({DenseType: 2 as byte}));

recipes.remove(<thermaldynamics:duct_32:4>.withTag({DenseType: 1 as byte}));

recipes.remove(<thermaldynamics:duct_32:4>);

recipes.remove(<thermaldynamics:duct_32:6>.withTag({DenseType: 2 as byte}));

recipes.remove(<thermaldynamics:duct_32:6>.withTag({DenseType: 1 as byte}));

recipes.remove(<thermaldynamics:duct_32:6>);

//Disable Roost Collectors
recipes.remove(<roost:collector>);

//Disables Fuzzy Cards
recipes.remove(<appliedenergistics2:material:29>);

//Disable Cyclic's Hydrator
recipes.remove(<cyclicmagic:block_hydrator>);

//Disable Cyclics Dehydrator
recipes.remove(<cyclicmagic:dehydrator>);

//Disable Feral Flare Lantern
recipes.remove(<torchmaster:feral_flare_lantern>);

//Disable various Auto-Crafters (except AE2)
recipes.remove(<cyclicmagic:auto_crafter>);

recipes.remove(<enderio:block_simple_crafter>);

recipes.remove(<enderio:block_crafter>);

recipes.remove(<extrautils2:crafter>);

recipes.remove(<extrautils2:analogcrafter>);