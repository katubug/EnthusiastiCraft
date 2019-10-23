import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//===================Recipe Conflicts================

//===Removes EnderIO's 4x chest recipe in favor of Quark's===
recipes.removeByRecipeName("extrautils2:shortcut_chest");

//===Removes useless Royal Jelly recipe to allow bee conversion===
mods.jei.JEI.removeAndHide(<harvestcraft:royaljellyitem>);

//The following have been disabled due to turning off Quark's walls etc in 1.7.0
//===Removes and hides NetherEx Red Nether Brick Stairs & Slab identical to Quark's===
//mods.jei.JEI.removeAndHide(<netherex:red_nether_brick_stairs>);
//mods.jei.JEI.removeAndHide(<netherex:red_nether_brick_slab>);

//===Removes and hides NetherEx Quartz Wall identical to Quark's===
//mods.jei.JEI.removeAndHide(<netherex:quartz_wall>);

//I commented this out in 1.6.0 but not sure why
//===Fixes NetherEx Netherbrick Wall + Fiery Netherbrick Wall Overlap===
//recipes.remove(<netherex:vanilla_wall:1>);
//recipes.addShaped(<netherex:vanilla_wall:1> * 6, [[null, null, null],[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>], [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]]);

//===Fixes Conflict between oak Henhouse and others======
//Spruce Wood
recipes.removeShaped(<chickens:henhouse>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],[<minecraft:planks:1>, <minecraft:hay_block>, <minecraft:planks:1>], [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);
//Jungle Wood
recipes.removeShaped(<chickens:henhouse>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],[<minecraft:planks:3>, <minecraft:hay_block>, <minecraft:planks:3>], [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]);
//Dark Oak
recipes.removeShaped(<chickens:henhouse>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],[<minecraft:planks:5>, <minecraft:hay_block>, <minecraft:planks:5>], [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]);
//Birch
recipes.removeShaped(<chickens:henhouse>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],[<minecraft:planks:2>, <minecraft:hay_block>, <minecraft:planks:2>], [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]);
//Acacia
recipes.removeShaped(<chickens:henhouse>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],[<minecraft:planks:4>, <minecraft:hay_block>, <minecraft:planks:4>], [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]);

//===Adds in Glass Pane Compat recipe from EnderIO===
//recipes.addShaped("EC_GlassPane_Compat", <minecraft:glass_pane> * 16, [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>]]);

//===Removes WhiteGlass OreDict from Quite Clear Glass so QCG only makes clear panes===
<ore:blockGlassWhite>.remove(<enderio:block_fused_glass>);

//===Removes ColorlessGlass OreDict from Silt Glass so it will only craft Silt Panes===
<ore:blockGlassColorless>.remove(<thebetweenlands:silt_glass>);

//===Fixes conflict between Fossils' Obsidian Spikes and ActuallyAdditions Obsidian Boots===
recipes.remove(<fossil:obsidian_spikes>);
recipes.addShaped("EC_ObsidianSpikes", <fossil:obsidian_spikes> * 3, [[null, null, null],[<minecraft:obsidian>, null, <minecraft:obsidian>], [null, <minecraft:obsidian>, null]]);

//===Remove Tinkers' Fallback recipe for SlimeSlings & Boots===
recipes.removeByRecipeName("tconstruct:gadgets/slimesling_fallback");
recipes.removeByRecipeName("tconstruct:gadgets/slime_boots_fallback");

//===Remove Quark's any-wood-to-trapdoor recipe and adds oak back in.===
recipes.remove(<minecraft:trapdoor:0> * 6);
recipes.addShaped("EC_QuarkTrapdoor", <minecraft:trapdoor:0> * 6, [[null, null, null], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);

//===Remove Petrotheum + Ore recipes for Crushed Gems===
//Black Quartz
recipes.remove(<actuallyadditions:item_dust:7> * 2);
//Quartz
recipes.remove(<actuallyadditions:item_dust:5> * 2);
//Lapis
recipes.remove(<actuallyadditions:item_dust:4> * 2);
//Emerald
recipes.remove(<actuallyadditions:item_dust:3> * 2);
//Diamond
recipes.remove(<actuallyadditions:item_dust:2> * 2);
//Resonating Redstone Crystal
recipes.remove(<extrautils2:ingredients> * 2);

//===Removes the recipe to get 3 slices of pizza from a vegetable, wtf Pam===
recipes.removeShapeless(<harvestcraft:pizzasliceitem>, [<harvestcraft:cuttingboarditem>, <ore:listAllgreenveggie>]);

//===Remove Extra Utils' and EnderIO's Logs to Sticks recipes to avoid overlaps===
recipes.remove(<minecraft:stick> * 16);

//===Fix a conflict between different Sapphire Blocks by making Ice and Fire not accept OreDict===
recipes.remove(<iceandfire:sapphire_block>);
recipes.addShapeless("EC_IFSapphire", <iceandfire:sapphire_block>, [<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>,<iceandfire:sapphire_gem>]);

//===Fix a conflict between ZAWA's Steel Bars and Quark's Iron Ladders===
recipes.remove(<zawa:steel_bars>);
recipes.addShaped("EC_ZawaSteelBar", <zawa:steel_bars> * 4, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);

//===Fix conflict between RandomThings' Sound Block and [??? I forget]===
recipes.remove(<randomthings:soundbox>);
recipes.addShapeless(<randomthings:soundbox>, [<minecraft:noteblock>,<ore:dyeBlue>]);

//===Fix an issue with all woods crafting into Moarsign's Oak Sign===
val oakSign = <moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"});
recipes.remove(oakSign);
recipes.addShaped("EC_OakSign", oakSign * 3, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [null, <ore:stickWood>, null]]);

//===Remove crafting recipes for money===
recipes.remove(<modcurrency:banknote:1>);
recipes.remove(<modcurrency:banknote:2>);
recipes.remove(<modcurrency:banknote:3>);
recipes.remove(<modcurrency:banknote:4>);
recipes.remove(<modcurrency:banknote:5>);
recipes.remove(<modcurrency:banknote>);
recipes.remove(<modcurrency:coin:1>);
recipes.remove(<modcurrency:coin:2>);
recipes.remove(<modcurrency:coin:3>);
recipes.remove(<modcurrency:coin>);
recipes.remove(<modcurrency:coin:5>);
recipes.remove(<modcurrency:coin:4>);

//===Remove the recipe for IE's Coal Coke Block and make it not use OreDict===
recipes.remove(<immersiveengineering:stone_decoration:3>);
recipes.addShapeless("EC_CoalCoke", <immersiveengineering:stone_decoration:3>, [<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>,<immersiveengineering:material:6>]);

//===Remove recipes related to Ice and Fire's Silver===
recipes.remove(<iceandfire:silver_nugget:0>);
recipes.remove(<iceandfire:silver_ingot:0>);
recipes.remove(<iceandfire:silver_block>);

//===Changes Rustic's Crop Stake to avoid Quark Vertical Planks conflict===
recipes.remove(<rustic:crop_stake>);
recipes.addShaped("EC_CropStake", <rustic:crop_stake>, [[null, <ore:stickWood>, null],[null, <ore:plankWood>, null], [null, <ore:stickWood>, null]]);

//===Changes Blindfold recipe to avoid conflict===
recipes.remove(<iceandfire:blindfold>);
recipes.addShaped("EC_IFBlindfold", <iceandfire:blindfold>, [[<ore:leather>, <ore:leather>, <ore:leather>]]);

//===Removes the Flax tag from string to avoid conflict between Rustic and HarvestCraft===
val cropFlax = <ore:cropFlax>;
cropFlax.remove(<minecraft:string>);

//===HarvestCraft Cotton Crafts into itself for some reason?===
recipes.remove(<harvestcraft:cottonitem>);

//===Fossil's Tar Drops===
recipes.remove(<fossil:tardrop>);
val tarBucket = <forge:bucketfilled>.withTag({FluidName: "tar", Amount: 1000});
recipes.addShapeless("EC_FossilTardrop", <fossil:tardrop> * 4, [tarBucket]);

//===Removes ActuallyAdditions Charcoal Block in favor of Thermal Foundation's===
mods.jei.JEI.removeAndHide(<actuallyadditions:block_misc:5>);

//===Gear Recipes===

//Removes EnderIO's Wooden Gear recipe in favor of Blockcraftery's Framed Blocks recipe
//Then adds it back in even though it gets overwritten by UniDict. :D
recipes.remove(<enderio:item_material:9>);
recipes.addShaped("EC_EnderIO_Gear", <enderio:item_material:9>, [[null, <minecraft:stick>, null], [<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

//Ditto for AE2
recipes.remove(<appliedenergistics2:material:40>);
recipes.addShaped("EC_AE2Gear", <appliedenergistics2:material:40>, [[null, <ore:stickWood>, null], [<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

//And again for Thermal Foundation
recipes.remove(<thermalfoundation:material:22>);
recipes.addShaped("EC_ThermalGear", <thermalfoundation:material:22>, [[null, <ore:stickWood>, null], [<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);

//Other gear recipes need doing?

//======================Painted Planks Recipes======================

//White
recipes.remove(<rustic:painted_wood_white>);
recipes.addShaped("EC_PaintedPlanksWhite", <rustic:painted_wood_white> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 15790320}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Orange
recipes.remove(<rustic:painted_wood_orange>);
recipes.addShaped("EC_PaintedPlanksOrange", <rustic:painted_wood_orange> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 15435844}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);


//Magenta
recipes.remove(<rustic:painted_wood_magenta>);
recipes.addShaped("EC_PaintedPlanksMagenta", <rustic:painted_wood_magenta> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 12801229}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Light Blue
recipes.remove(<rustic:painted_wood_light_blue>);
recipes.addShaped("EC_PaintedPlanksLBlue", <rustic:painted_wood_light_blue> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 6719955}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Yellow
recipes.remove(<rustic:painted_wood_yellow>);
recipes.addShaped("EC_PaintedPlanksYellow", <rustic:painted_wood_yellow> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 14602026}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Lime
recipes.remove(<rustic:painted_wood_lime>);
recipes.addShaped("EC_PaintedPlanksLime", <rustic:painted_wood_lime> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 4312372}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Pink
recipes.remove(<rustic:painted_wood_pink>);
recipes.addShaped("EC_PaintedPlanksPink", <rustic:painted_wood_pink> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 14188952}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Gray
recipes.remove(<rustic:painted_wood_gray>);
recipes.addShaped("EC_PaintedPlanksGray", <rustic:painted_wood_gray> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 4408131}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Light Gray
recipes.remove(<rustic:painted_wood_silver>);
recipes.addShaped("EC_PaintedPlanksSilver", <rustic:painted_wood_silver> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 11250603}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Cyan
recipes.remove(<rustic:painted_wood_cyan>);
recipes.addShaped("EC_PaintedPlanksCyan", <rustic:painted_wood_cyan> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 2651799}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Purple
recipes.remove(<rustic:painted_wood_purple>);
recipes.addShaped("EC_PaintedPlanksPurple", <rustic:painted_wood_purple> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 8073150}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Blue
recipes.remove(<rustic:painted_wood_blue>);
recipes.addShaped("EC_PaintedPlanksBlue", <rustic:painted_wood_blue> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 2437522}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Brown
recipes.remove(<rustic:painted_wood_brown>);
recipes.addShaped("EC_PaintedPlanksBrown", <rustic:painted_wood_brown> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 5320730}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Green
recipes.remove(<rustic:painted_wood_green>);
recipes.addShaped("EC_PaintedPlanksGreen", <rustic:painted_wood_green> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 3887386}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Red
recipes.remove(<rustic:painted_wood_red>);
recipes.addShaped("EC_PaintedPlanksRed", <rustic:painted_wood_red> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 11743532}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Black
recipes.remove(<rustic:painted_wood_black>);
recipes.addShaped("EC_PaintedPlanksBlack", <rustic:painted_wood_black> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <openblocks:paintbrush>.withTag({color: 1973019}).giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//======================Remove Unnecessary Scaffolding with Overlapping Recipes======================
mods.jei.JEI.removeAndHide(<randomthings:blockofsticks>);
mods.jei.JEI.removeAndHide(<openblocks:scaffolding>);

//======================Change Returning Block of Sticks to use Sticks instead of Blocks of Sticks======================
recipes.remove(<randomthings:blockofsticks:1>);
recipes.addShaped("EC_ReturningBlockofSticks", <randomthings:blockofsticks:1>, [[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],[<minecraft:stick>, <minecraft:ender_pearl>, <minecraft:stick>], [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);

//======================LittleTiles Colored Blocks Conflicts======================

//Colored Wooden Planks
recipes.remove(<littletiles:ltcoloredblock:13>);
recipes.addShaped("EC_LTColorBlockPlanks", <littletiles:ltcoloredblock:13> * 8, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:plankWood>, <cyclicmagic:sign_editor>.giveBack(), <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Colored Block Clay
recipes.remove(<littletiles:ltcoloredblock:10>);
recipes.addShaped("EC_LTColorBlockClay", <littletiles:ltcoloredblock:10> * 8, [[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],[<minecraft:hardened_clay>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

//Colored Block Grainy
recipes.remove(<littletiles:ltcoloredblock:3>);
recipes.addShaped("EC_LTColorBlockDirt", <littletiles:ltcoloredblock:3> * 8, [[<ore:dirt>, <ore:dirt>, <ore:dirt>],[<ore:dirt>, <cyclicmagic:sign_editor>.giveBack(), <ore:dirt>], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

//Colored Block Grainy Low
recipes.remove(<littletiles:ltcoloredblock:4>);
recipes.addShaped("EC_LTColorBlockGravel", <littletiles:ltcoloredblock:4> * 8, [[<ore:gravel>, <ore:gravel>, <ore:gravel>],[<ore:gravel>, <cyclicmagic:sign_editor>.giveBack(), <ore:gravel>], [<ore:gravel>, <ore:gravel>, <ore:gravel>]]);

//Colored Block Border
recipes.remove(<littletiles:ltcoloredblock:6>);
recipes.addShaped("EC_LTColorBlockStone", <littletiles:ltcoloredblock:6> * 8, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

//Colored Block Brick Big
recipes.remove(<littletiles:ltcoloredblock:7>);
recipes.addShaped("EC_LTColorBlockStoneBrick", <littletiles:ltcoloredblock:7> * 8, [[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>],[<minecraft:stonebrick>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:stonebrick>], [<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]]);

//Colored Block Brick
recipes.remove(<littletiles:ltcoloredblock:5>);
recipes.addShaped("EC_LTColorBlockBrick", <littletiles:ltcoloredblock:5> * 8, [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],[<minecraft:brick_block>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:brick_block>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);

//Colored Block Grainy Big
recipes.remove(<littletiles:ltcoloredblock:2>);
recipes.addShaped("EC_LTColorBlockCobble", <littletiles:ltcoloredblock:2> * 8, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],[<minecraft:cobblestone>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:cobblestone>], [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);

//Colored Block Floor
recipes.remove(<littletiles:ltcoloredblock:1>);
recipes.addShaped("EC_LTColorBlockSandStone", <littletiles:ltcoloredblock:1> * 8, [[<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>],[<minecraft:sandstone>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:sandstone>], [<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>]]);

//Colored Block Clean
recipes.remove(<littletiles:ltcoloredblock>);
recipes.addShaped("EC_LTColorBlockQuartz", <littletiles:ltcoloredblock> * 8, [[<minecraft:quartz_block>, <minecraft:quartz_block>, <minecraft:quartz_block>],[<minecraft:quartz_block>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:quartz_block>], [<minecraft:quartz_block>, <minecraft:quartz_block>, <minecraft:quartz_block>]]);

//Colored Block Broken Brick Big
recipes.remove(<littletiles:ltcoloredblock:9>);
recipes.addShaped("EC_LTColorBlockStoneBrick2", <littletiles:ltcoloredblock:9> * 8, [[<minecraft:stonebrick:2>, <minecraft:stonebrick:2>, <minecraft:stonebrick:2>],[<minecraft:stonebrick:2>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:stonebrick:2>], [<minecraft:stonebrick:2>, <minecraft:stonebrick:2>, <minecraft:stonebrick:2>]]);

//Colored Block Structured
recipes.remove(<littletiles:ltcoloredblock:8>);
recipes.addShaped("EC_LTColorBlockStoneBrick3", <littletiles:ltcoloredblock:8> * 8, [[<minecraft:stonebrick:3>, <minecraft:stonebrick:3>, <minecraft:stonebrick:3>],[<minecraft:stonebrick:3>, <cyclicmagic:sign_editor>.giveBack(), <minecraft:stonebrick:3>], [<minecraft:stonebrick:3>, <minecraft:stonebrick:3>, <minecraft:stonebrick:3>]]);