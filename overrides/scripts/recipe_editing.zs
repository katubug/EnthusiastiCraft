import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//===Adds in a recipe for Bottles of Enchanting===
//Adds both types of solid exp to oreDict
recipes.addShapeless("EC_Bottleenchantingchix", <minecraft:experience_bottle> * 3, [<morechickens:solidxp>, <minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>]);
recipes.addShapeless("EC_Bottleenchantingaa", <minecraft:experience_bottle>, [<actuallyadditions:item_solidified_experience>,<minecraft:glass_bottle>]);

//===Titan Stew Recipe===
recipes.remove(<erebus:materials:62>);
recipes.addShapeless(<erebus:materials:62>, [<erebus:materials:61>,<ore:cropCabbage>,<ore:cropTurnip>,<erebus:erebus_food:13>,<erebus:erebus_food:13>,<erebus:mandrake_root>,<ore:listAllmushroom>,<ore:listAllmushroom>,<ore:listAllspice>]);

//===Frog Leg Stirfry===
recipes.remove(<harvestcraft:froglegstirfryitem>);
recipes.addShapeless(<harvestcraft:froglegstirfryitem>, [<harvestcraft:skilletitem>,<ore:listAllfrog>,<ore:cropRice>,<harvestcraft:broccoliitem>,<minecraft:carrot>,<harvestcraft:bellpepperitem>]);

//===Mystic Gumbo recipe (Erebus flight)===
recipes.addShapeless(<contenttweaker:mysticgumbo>, [<erebus:erebus_food:16>,<erebus:antlion_egg>,<erebus:tarantula_egg>,<erebus:stag_heart_raw>,<erebus:wand_of_animation>.giveBack()]);

//===Flight item recipe===
recipes.addShapedMirrored("EC_TearsofIcarus", <contenttweaker:tearsicarus>, [[null, <contenttweaker:preciousdoll>, null],[<minecraft:dragon_breath>, <ore:blockDiamond>, <contenttweaker:swampviscera>], [null, <minecraft:nether_star>, null]]);

//===Quark Bark converts to Roots Bark===
//Add knives to OreDict
val listAllknife = <ore:listAllknife>;
listAllknife.add(<mysticalworld:silver_knife:*>);
listAllknife.add(<mysticalworld:copper_knife:*>);
listAllknife.add(<mysticalworld:amethyst_knife:*>);
listAllknife.add(<roots:wood_knife:*>);
listAllknife.add(<roots:gold_knife:*>);
listAllknife.add(<roots:diamond_knife:*>);
listAllknife.add(<roots:iron_knife:*>);
listAllknife.add(<roots:stone_knife:*>);

//Oak
recipes.addShapeless(<roots:bark_oak> * 4, [<quark:bark>,<ore:listAllknife>.giveBack()]);

//Spruce
recipes.addShapeless(<roots:bark_spruce> * 4, [<quark:bark:1>,<ore:listAllknife>.giveBack()]);

//Birch
recipes.addShapeless(<roots:bark_birch> * 4, [<quark:bark:2>,<ore:listAllknife>.giveBack()]);

//Jungle
recipes.addShapeless(<roots:bark_jungle> * 4, [<quark:bark:3>,<ore:listAllknife>.giveBack()]);

//Acacia
recipes.addShapeless(<roots:bark_acacia> * 4, [<quark:bark:4>,<ore:listAllknife>.giveBack()]);

//Dark Oak
recipes.addShapeless(<roots:bark_dark_oak> * 4, [<quark:bark:5>,<ore:listAllknife>.giveBack()]);

//Mob Control Pacification Wand is more expensive
recipes.remove(<micwands:wandpacify>);
val potionLove = <minecraft:potion>.withTag({Potion: "extrautils2:xu2.love"});
recipes.addShaped(<micwands:wandpacify>, [[<cyclicmagic:apple_lapis>, <ore:dyePink>, <cyclicmagic:apple_emerald>],[<bhc:red_heart>, <micwands:wandenfeeble>, <bhc:red_heart>], [<biomesoplenty:terrestrial_artifact>, potionLove, <biomesoplenty:terrestrial_artifact>]]);

//Resonant Rice uses Pam's Rice
recipes.remove(<actuallyadditions:item_resonant_rice>);
recipes.addShapeless("EC_ResonantRiceEdit", <actuallyadditions:item_resonant_rice>, [<ore:cropRice>,<minecraft:gunpowder>,<ore:nuggetEnderium>]);

//Changes Treasure2's Ruby & Sapphire Keys to accept OreDict
recipes.remove(<treasure2:sapphire_key>);
recipes.addShaped("EC_T2SapphireKey", <treasure2:sapphire_key>, [[null, <treasure2:gold_key>, <treasure2:treasure_tool>],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemSapphire>, null]]);

recipes.remove(<treasure2:ruby_key>);
recipes.addShaped("EC_T2RubyKey", <treasure2:ruby_key>, [[null, <treasure2:gold_key>, <treasure2:treasure_tool>],[null, <minecraft:glowstone_dust>, null], [null, <ore:gemRuby>, null]]);

//Replace MoarSign's Oak Sign with Vanilla's
var oakSign = <moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"});
mods.jei.JEI.removeAndHide(oakSign);
recipes.addShaped("EC_MoarSignsOverride", <minecraft:sign> * 3, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [null, <ore:stickWood>, null]]);

//Lava Egg Recipe testing
<ore:listAllLava>.add(<minecraft:lava_bucket>);
<ore:listAllLava>.add(<chickens:liquid_egg:1>);
recipes.addShaped(<industrialforegoing:fluid_pump>, [[<industrialforegoing:plastic>, <minecraft:bucket>, <industrialforegoing:plastic>],[<ore:listAllwater>, <enderio:item_material>, <ore:listAllLava>], [<industrialforegoing:plastic>, <ore:gearGold>, <industrialforegoing:plastic>]]);

//Adds recipes for ZAWA stone types
recipes.addShapeless("EC_ZawaRiverStone", <zawa:river_stone>, [<ore:listAllwater>,<minecraft:cobblestone>]);
recipes.addShapeless("EC_ZawaMixedStone", <zawa:mixed_stone>, [<minecraft:cobblestone>,<minecraft:gravel>]);
recipes.addShapeless("EC_ZawaMixedStoneMossy", <zawa:mixed_stone_mossy>, [<minecraft:mossy_cobblestone>,<minecraft:gravel>]);

//======================Adds recipes for AgriCraft flower seeds======================
//Oxeye Daisy
val oDaisySeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:daisy_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_DaisySeed", oDaisySeed * 2, [[<minecraft:red_flower:8>, <minecraft:red_flower:8>, null],[null, null, null], [null, null, null]]);

//Pink Tulip
val pTulipSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:pink_tulip_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_PTulipSeed", pTulipSeed * 2, [[<minecraft:red_flower:7>, <minecraft:red_flower:7>, null],[null, null, null], [null, null, null]]);

//White Tulip
val wTulipSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:white_tulip_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_WTulipSeed", wTulipSeed * 2, [[<minecraft:red_flower:6>, <minecraft:red_flower:6>, null],[null, null, null], [null, null, null]]);

//Red Tulip
val rTulipSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:red_tulip_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_RTulipSeed", rTulipSeed * 2, [[<minecraft:red_flower:4>, <minecraft:red_flower:4>, null],[null, null, null], [null, null, null]]);

//Orange Tulip
val oTulipSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:orange_tulip_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_OTulipSeed", oTulipSeed * 2, [[<minecraft:red_flower:5>, <minecraft:red_flower:5>, null],[null, null, null], [null, null, null]]);

//Dandelion
val dandelionSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:dandelion_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_DandelionSeed", dandelionSeed * 2, [[<minecraft:yellow_flower>, <minecraft:yellow_flower>, null],[null, null, null], [null, null, null]]);

//Poppy
val poppySeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:poppy_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_PoppySeed", poppySeed * 2, [[<minecraft:red_flower>, <minecraft:red_flower>, null],[null, null, null], [null, null, null]]);

//Blue Orchid
val blueOrchidSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:orchid_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_BlueOrchidSeed", blueOrchidSeed * 2, [[<minecraft:red_flower:1>, <minecraft:red_flower:1>, null],[null, null, null], [null, null, null]]);

//Allium
val alliumSeed = <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:allium_plant", agri_growth: 1 as byte});

recipes.addShaped("EC_AlliumSeed", alliumSeed * 2, [[<minecraft:red_flower:2>, <minecraft:red_flower:2>, null],[null, null, null], [null, null, null]]);

//======================Add recipe for Name Tag======================
recipes.addShapeless("EC_NameTag", <minecraft:name_tag>, [<ore:paper>,<ore:string>,<ore:slimeball>]);

//======================Biomes O'Plenty's Mud uses OreDict======================
recipes.remove(<biomesoplenty:mud>);
recipes.addShapeless("EC_BoPMudfromBalls", <biomesoplenty:mud>, [<biomesoplenty:mudball>, <biomesoplenty:mudball>, <biomesoplenty:mudball>, <biomesoplenty:mudball>]);

//======================Animania Mud Uses OreDict======================
recipes.remove(<animania:block_mud>);
recipes.addShapeless(<animania:block_mud> *2, [<ore:listAllwater>, <ore:dirt>]);

//===Animania Mud from Other Muds===
recipes.addShapeless(<animania:block_mud>, [<biomesoplenty:mud>]);
recipes.addShapeless(<animania:block_mud>, [<pvj:mud>]);
recipes.addShapeless(<animania:block_mud>, [<thebetweenlands:mud>]);

//======================Craftable Ender Dragon Egg======================
recipes.addShapedMirrored("EC_DragonEgg", <minecraft:dragon_egg>, [[<minecraft:dragon_breath>, <thermalfoundation:storage_alloy:7>, <minecraft:dragon_breath>],[<iceandfire:fire_dragon_heart>, <bhc:green_heart_canister>, <iceandfire:ice_dragon_heart>], [<minecraft:dragon_breath>, <thermalfoundation:storage_alloy:7>, <minecraft:dragon_breath>]]);

//======================Mega Torch Recipes======================
recipes.remove(<torchmaster:mega_torch>);
recipes.addShaped("EC_MegaTorch", <torchmaster:mega_torch>, [[<xreliquary:interdiction_torch>, <xreliquary:interdiction_torch>, <xreliquary:interdiction_torch>], [<minecraft:iron_nugget>, <ore:logWood>, <minecraft:iron_nugget>], [<minecraft:gold_block>, <ore:logWood>, <minecraft:gold_block>]]);

recipes.addShaped("EC_MegaTorch2", <torchmaster:mega_torch>, [[null, <randomthings:peacecandle>, null], [null, <ore:logWood>, null], [<minecraft:gold_block>, <ore:logWood>, <minecraft:gold_block>]]);

recipes.addShaped("EC_MegaTorch3", <torchmaster:mega_torch>, [[<ore:torch>, <ore:torch>, <ore:torch>], [<ore:gemDiamond>, <ore:logWood>, <ore:gemDiamond>], [<minecraft:gold_block>, <ore:logWood>, <minecraft:gold_block>]]);

//======================Astral Sorcery Marble Bricks to Stairs recipe======================
recipes.addShaped("EC_ASMarbleStairs", <astralsorcery:blockmarblestairs> * 6, [[<astralsorcery:blockmarble:1>, null, null], [<astralsorcery:blockmarble:1>, <astralsorcery:blockmarble:1>, null], [<astralsorcery:blockmarble:1>, <astralsorcery:blockmarble:1>, <astralsorcery:blockmarble:1>]]);

//======================Change recipe for Diaphanous Blocks so it doesn't require disabled items.======================
recipes.remove(<randomthings:diaphanousblock> * 4);
recipes.addShaped("EC_Diaphanous", <randomthings:diaphanousblock> * 4, [[null, <ore:blockGlassGreen>, null], [<ore:blockGlassYellow>, <ore:blockGlassColorless>, <ore:blockGlassRed>], [null, <ore:blockGlassBlue>, null]]);

//======================Change Recipe for Trigger Glass so it doesn't require disabled items.======================
recipes.remove(<randomthings:triggerglass>);
recipes.addShaped("EC_TriggerGlass", <randomthings:triggerglass> * 4, [[null, <ore:blockGlassColorless>, null], [<extrautils2:ineffableglass>, <minecraft:redstone>, <extrautils2:ineffableglass>], [null, <minecraft:glass>, null]]);

//======================Changes Roost Collector Recipe to require Henhouses======================
//recipes.addShaped("EC_RoostCollector", <roost:collector>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:henHouse>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);

//======================Changes Ender Shards Recipe======================
recipes.remove(<extrautils2:endershard>);
recipes.addShapeless("EC_EnderPearl", <extrautils2:endershard> * 9, [<minecraft:ender_pearl>]);

//======================Muffler to Super Sound Muffler recipe======================
recipes.addShaped("EC_MufflerConversion", <supersoundmuffler:sound_muffler>, [[<ore:woolBlock>, <extrautils2:soundmuffler>, <ore:woolBlock>]]);

//======================Honey Buckets Craftable to Honey======================
var vanHoney = <forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000});
var blweedHoney = <thebetweenlands:bl_bucket>.withTag({Fluid: {FluidName: "honey", Amount: 1000}});
var blsyrHoney = <thebetweenlands:bl_bucket:1>.withTag({Fluid: {FluidName: "honey", Amount: 1000}});
var clayHoney = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "honey", Amount: 1000}});
var vanHoneyAnimania = <forge:bucketfilled>.withTag({FluidName: "animania_honey", Amount: 1000});
var clayHoneyAnimania = <ceramics:clay_bucket>.withTag({fluids: {FluidName: "animania_honey", Amount: 1000}});

recipes.addShapeless("EC_HCHoneyVanilla", <harvestcraft:honeyitem> * 4, [vanHoney]);
recipes.addShapeless("EC_HCHoneyBLWeed", <harvestcraft:honeyitem> * 4, [blweedHoney]);
recipes.addShapeless("EC_HCHoneyBLSyr", <harvestcraft:honeyitem> * 4, [blsyrHoney]);
recipes.addShapeless("EC_HCHoneyClay", <harvestcraft:honeyitem> * 4, [clayHoney]);
recipes.addShapeless(<harvestcraft:honeyitem> * 4, [vanHoneyAnimania]);
recipes.addShapeless(<harvestcraft:honeyitem> * 4, [clayHoneyAnimania]);

//======================Pig Slop Recipes======================
var pigSlop = <forge:bucketfilled>.withTag({FluidName: "slop", Amount: 1000});

recipes.addShapeless(pigSlop, [<ore:listAllveggie>, <ore:listAllveggie>, <minecraft:bucket>, <harvestcraft:freshmilkitem>, <harvestcraft:freshmilkitem>, <harvestcraft:freshmilkitem>, <harvestcraft:freshmilkitem>]);

//======================Fertilized Dirt and Fertile Soil use OreDict======================
//First, remove original recipes so they can be added back in
recipes.remove(<rustic:fertile_soil>);
recipes.remove(<randomthings:fertilizeddirt>);

//===Fertilized Dirt Recipes===
//Original
recipes.addShaped(<randomthings:fertilizeddirt> * 2, [[<ore:dyeWhite>, <minecraft:rotten_flesh>, <ore:dyeWhite>], [<minecraft:rotten_flesh>, <ore:dirt>, <minecraft:rotten_flesh>], [<ore:dyeWhite>, <minecraft:rotten_flesh>, <ore:dyeWhite>]]);

//With Fertilizer
recipes.addShaped(<randomthings:fertilizeddirt> * 2, [[null, <industrialforegoing:fertilizer>, null], [<industrialforegoing:fertilizer>, <ore:dirt>, <industrialforegoing:fertilizer>], [null, <industrialforegoing:fertilizer>, null]]);

//Fertile Soil Upgrade Flesh
recipes.addShaped(<randomthings:fertilizeddirt> * 2, [[null, <minecraft:rotten_flesh>, null], [<minecraft:rotten_flesh>, <rustic:fertile_soil>, <minecraft:rotten_flesh>], [null, <minecraft:rotten_flesh>, null]]);

//Fertile Soil Upgrade Fertilizer
recipes.addShaped(<randomthings:fertilizeddirt> * 3, [[null, <industrialforegoing:fertilizer>, null], [<industrialforegoing:fertilizer>, <rustic:fertile_soil>, <industrialforegoing:fertilizer>], [null, <industrialforegoing:fertilizer>, null]]);

//===Fertile Soil Recipe===
recipes.addShapeless(<rustic:fertile_soil>, [<ore:dirt>, <ore:dyeWhite>]);

//======================Storage Drawers Upgrading Recipes======================

var sdSingleOak = <storagedrawers:basicdrawers>.withTag({material: "oak"});
var sdDoubleOak = <storagedrawers:basicdrawers:1>.withTag({material: "oak"});
var sdQuadOak = <storagedrawers:basicdrawers:2>.withTag({material: "oak"});

var sdSingleSpruce = <storagedrawers:basicdrawers>.withTag({material: "spruce"});
var sdDoubleSpruce = <storagedrawers:basicdrawers:1>.withTag({material: "spruce"});
var sdQuadSpruce = <storagedrawers:basicdrawers:2>.withTag({material: "spruce"});

var sdSingleBirch = <storagedrawers:basicdrawers>.withTag({material: "birch"});
var sdDoubleBirch = <storagedrawers:basicdrawers:1>.withTag({material: "birch"});
var sdQuadBirch = <storagedrawers:basicdrawers:2>.withTag({material: "birch"});

var sdSingleJungle = <storagedrawers:basicdrawers>.withTag({material: "jungle"});
var sdDoubleJungle = <storagedrawers:basicdrawers:1>.withTag({material: "jungle"});
var sdQuadJungle = <storagedrawers:basicdrawers:2>.withTag({material: "jungle"});

var sdSingleDarkOak = <storagedrawers:basicdrawers>.withTag({material: "dark_oak"});
var sdDoubleDarkOak = <storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"});
var sdQuadDarkOak = <storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"});

var sdSingleAcacia = <storagedrawers:basicdrawers>.withTag({material: "acacia"});
var sdDoubleAcacia = <storagedrawers:basicdrawers:1>.withTag({material: "acacia"});
var sdQuadAcacia = <storagedrawers:basicdrawers:2>.withTag({material: "acacia"});

//Framed Drawers 1 to 2
recipes.addShapeless(<storagedrawers:customdrawers:1>, [<storagedrawers:customdrawers>, <storagedrawers:customdrawers>]);
//Framed Drawers 1 to 4
recipes.addShapeless(<storagedrawers:customdrawers:2>, [<storagedrawers:customdrawers>, <storagedrawers:customdrawers>, <storagedrawers:customdrawers>, <storagedrawers:customdrawers>]);
//Framed Drawers 2 to 4
recipes.addShapeless(<storagedrawers:customdrawers:2>, [<storagedrawers:customdrawers:1>, <storagedrawers:customdrawers:1>]);

//Oak Drawers 1 to 2
recipes.addShapeless(sdDoubleOak, [sdSingleOak, sdSingleOak]);
//Oak Drawers 1 to 4
recipes.addShapeless(sdQuadOak, [sdSingleOak, sdSingleOak, sdSingleOak, sdSingleOak]);
//Oak Drawers 2 to 4
recipes.addShapeless(sdQuadOak, [sdDoubleOak, sdDoubleOak]);

//Spruce Drawers 1 to 2
recipes.addShapeless(sdDoubleSpruce, [sdSingleSpruce, sdSingleSpruce]);
//Spruce Drawers 1 to 4
recipes.addShapeless(sdQuadSpruce, [sdSingleSpruce, sdSingleSpruce, sdSingleSpruce, sdSingleSpruce]);
//Spruce Drawers 2 to 4
recipes.addShapeless(sdQuadSpruce, [sdDoubleSpruce, sdDoubleSpruce]);

//Birch Drawers 1 to 2
recipes.addShapeless(sdDoubleBirch, [sdSingleBirch, sdSingleBirch]);
//Birch Drawers 1 to 4
recipes.addShapeless(sdQuadBirch, [sdSingleBirch, sdSingleBirch, sdSingleBirch, sdSingleBirch]);
//Birch Drawers 2 to 4
recipes.addShapeless(sdQuadBirch, [sdDoubleBirch, sdDoubleBirch]);

//Jungle Drawers 1 to 2
recipes.addShapeless(sdDoubleJungle, [sdSingleJungle, sdSingleJungle]);
//Jungle Drawers 1 to 4
recipes.addShapeless(sdQuadJungle, [sdSingleJungle, sdSingleJungle, sdSingleJungle, sdSingleJungle]);
//Jungle Drawers 2 to 4
recipes.addShapeless(sdQuadJungle, [sdDoubleJungle, sdDoubleJungle]);

//Dark Oak Drawers 1 to 2
recipes.addShapeless(sdDoubleDarkOak, [sdSingleDarkOak, sdSingleDarkOak]);
//Dark Oak Drawers 1 to 4
recipes.addShapeless(sdQuadDarkOak, [sdSingleDarkOak, sdSingleDarkOak, sdSingleDarkOak, sdSingleDarkOak]);
//Dark Oak Drawers 2 to 4
recipes.addShapeless(sdQuadDarkOak, [sdDoubleDarkOak, sdDoubleDarkOak]);

//Acacia Drawers 1 to 2
recipes.addShapeless(sdDoubleAcacia, [sdSingleAcacia, sdSingleAcacia]);
//Acacia Drawers 1 to 4
recipes.addShapeless(sdQuadAcacia, [sdSingleAcacia, sdSingleAcacia, sdSingleAcacia, sdSingleAcacia]);
//Acacia Drawers 2 to 4
recipes.addShapeless(sdQuadAcacia, [sdDoubleAcacia, sdDoubleAcacia]);

//===================Make Colored Eggs take any Dye & any Egg===================
//Ink Black
recipes.remove(<chickens:colored_egg:0>);
recipes.addShapeless(<chickens:colored_egg:0>, [<ore:listAllegg>, <ore:dyeBlack>]);

//Lapis Blue
recipes.remove(<chickens:colored_egg:4>);
recipes.addShapeless(<chickens:colored_egg:4>, [<ore:listAllegg>, <ore:dyeBlue>]);

//Cyan
recipes.remove(<chickens:colored_egg:6>);
recipes.addShapeless(<chickens:colored_egg:6>, [<ore:listAllegg>, <ore:dyeCyan>]);

//Brown
recipes.remove(<chickens:colored_egg:3>);
recipes.addShapeless(<chickens:colored_egg:3>, [<ore:listAllegg>, <ore:dyeBrown>]);

//Cactus Green
recipes.remove(<chickens:colored_egg:2>);
recipes.addShapeless(<chickens:colored_egg:2>, [<ore:listAllegg>, <ore:dyeGreen>]);

//Light Gray
recipes.remove(<chickens:colored_egg:7>);
recipes.addShapeless(<chickens:colored_egg:7>, [<ore:listAllegg>, <ore:dyeLightGray>]);

//Light Blue
recipes.remove(<chickens:colored_egg:12>);
recipes.addShapeless(<chickens:colored_egg:12>, [<ore:listAllegg>, <ore:dyeLightBlue>]);

//Pink
recipes.remove(<chickens:colored_egg:9>);
recipes.addShapeless(<chickens:colored_egg:9>, [<ore:listAllegg>, <ore:dyePink>]);

//Orange
recipes.remove(<chickens:colored_egg:14>);
recipes.addShapeless(<chickens:colored_egg:14>, [<ore:listAllegg>, <ore:dyeOrange>]);

//Bone White
recipes.remove(<chickens:colored_egg:15>);
recipes.addShapeless(<chickens:colored_egg:15>, [<ore:listAllegg>, <ore:dyeWhite>]);

//Yellow
recipes.remove(<chickens:colored_egg:11>);
recipes.addShapeless(<chickens:colored_egg:11>, [<ore:listAllegg>, <ore:dyeYellow>]);

//Gray
recipes.remove(<chickens:colored_egg:8>);
recipes.addShapeless(<chickens:colored_egg:8>, [<ore:listAllegg>, <ore:dyeGray>]);

//Magenta
recipes.remove(<chickens:colored_egg:13>);
recipes.addShapeless(<chickens:colored_egg:13>, [<ore:listAllegg>, <ore:dyeMagenta>]);

//Lime
recipes.remove(<chickens:colored_egg:10>);
recipes.addShapeless(<chickens:colored_egg:10>, [<ore:listAllegg>, <ore:dyeLime>]);

//Purple
recipes.remove(<chickens:colored_egg:5>);
recipes.addShapeless(<chickens:colored_egg:5>, [<ore:listAllegg>, <ore:dyePurple>]);

//Red
recipes.remove(<chickens:colored_egg:1>);
recipes.addShapeless(<chickens:colored_egg:1>, [<ore:listAllegg>, <ore:dyeRed>]);

//===================Add Recipes for Inscriber Presses===================

//Silicon Press
recipes.addShaped(<appliedenergistics2:material:19>, [[<appliedenergistics2:material:3>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:2>],[<enderio:item_alloy_ingot>, <appliedenergistics2:material:5>, <enderio:item_alloy_ingot>], [<appliedenergistics2:material:2>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:3>]]);

//Logic Press
recipes.addShaped(<appliedenergistics2:material:15>, [[<appliedenergistics2:material:3>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:2>],[<enderio:item_alloy_ingot>, <minecraft:gold_block>, <enderio:item_alloy_ingot>], [<appliedenergistics2:material:2>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:3>]]);

//Engineering Press
recipes.addShaped(<appliedenergistics2:material:14>, [[<appliedenergistics2:material:3>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:2>],[<enderio:item_alloy_ingot>, <minecraft:diamond_block>, <enderio:item_alloy_ingot>], [<appliedenergistics2:material:2>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:3>]]);

//Calculation
recipes.addShaped(<appliedenergistics2:material:13>, [[<appliedenergistics2:material:3>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:2>],[<enderio:item_alloy_ingot>, <appliedenergistics2:quartz_block>, <enderio:item_alloy_ingot>], [<appliedenergistics2:material:2>, <enderio:item_alloy_ingot>, <appliedenergistics2:material:3>]]);

//===================Angel Rings===================

var shapedRing = <extrautils2:angelring:*>;
var lassoBat = <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}).onlyWithTag({Animal: {id: "minecraft:bat"}});
var lassoGhast = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}}).onlyWithTag({Animal: {id: "minecraft:ghast"}});

//Remove the Shaped Ring Recipes
recipes.removeShaped(shapedRing);

//Add in Recipe for the Basic Ring
recipes.addShaped(<extrautils2:angelring>, [[<ore:pixieDust>, <botania:flighttiara>, <twilightforest:raven_feather>], [lassoBat, <extrautils2:chickenring:1>, lassoGhast], [<iceandfire:stymphalian_bird_feather>, <actuallyadditions:item_wings_of_the_bats>, <minecraft:feather>]]);

//Add Expensive but Reliable Recipe for the Basic Ring
recipes.addShaped(<extrautils2:angelring>, [[<xreliquary:angelic_feather>, <botania:flighttiara>, <xreliquary:angelic_feather>], [lassoBat, <extrautils2:chickenring:1>, lassoGhast], [<xreliquary:angelic_feather>, <actuallyadditions:item_wings_of_the_bats>, <xreliquary:angelic_feather>]]);

//===================Bat Wing Recipes Use OreDict===================

//Wings of the Bats
recipes.remove(<actuallyadditions:item_wings_of_the_bats>);
recipes.addShaped(<actuallyadditions:item_wings_of_the_bats>, [[<ore:batWing>, <actuallyadditions:block_crystal_empowered:2>, <ore:batWing>], [<ore:batWing>, <actuallyadditions:item_misc:19>, <ore:batWing>], [<ore:batWing>, <actuallyadditions:block_crystal_empowered:2>, <ore:batWing>]]);

//Interdiction Torch
recipes.remove(<xreliquary:interdiction_torch>);
recipes.addShapeless(<xreliquary:interdiction_torch> * 4, [<ore:batWing>, <xreliquary:mob_ingredient:7>, <xreliquary:mob_ingredient:11>, <ore:rodBlaze>]);

//Angelic Feather
recipes.remove(<xreliquary:angelic_feather>);
recipes.addShapeless(<xreliquary:angelic_feather>, [<ore:feather>, <xreliquary:mob_ingredient:9>, <ore:batWing>, <xreliquary:mob_ingredient:11>]);

//Ender Staff
recipes.remove(<xreliquary:ender_staff>);
recipes.addShaped(<xreliquary:ender_staff>, [[null, <ore:batWing>, <ore:pearlEnderEye>], [<xreliquary:mob_ingredient:11>, <xreliquary:void_tear>, <ore:batWing>], [<minecraft:stick>, <xreliquary:mob_ingredient:11>, null]]);

//Rod of Lyssa
recipes.remove(<xreliquary:rod_of_lyssa>);
recipes.addShapeless(<xreliquary:rod_of_lyssa>, [<ore:batWing>, <xreliquary:mob_ingredient:13>, <minecraft:fishing_rod>, <xreliquary:mob_ingredient:11>]);

//Rending Gale
recipes.remove(<xreliquary:rending_gale>);
recipes.addShaped(<xreliquary:rending_gale>, [[null, <ore:batWing>, <xreliquary:mob_ingredient:8>], [<ore:ingotGold>, <xreliquary:void_tear>, <ore:batWing>], [<minecraft:stick>, <ore:ingotGold>, null]]);

//Coin of Fortune
recipes.remove(<xreliquary:fortune_coin>);
recipes.addShapeless(<xreliquary:fortune_coin>, [<xreliquary:mob_ingredient:11>, <xreliquary:mob_ingredient:4>, <ore:batWing>, <ore:nuggetGold>]);

//==================HarvestCraft Recipe Fixes======================

//Remove incorrect recipes
recipes.remove(<harvestcraft:gourmetvenisonpattyitem>);
recipes.remove(<harvestcraft:gourmetporkpattyitem>);
recipes.remove(<harvestcraft:gourmetmuttonpattyitem>);
recipes.remove(<harvestcraft:gourmetbeefpattyitem>);

//Changes Gourmet Patty recipes to require the correct Mustard Seed*s*, not Mustard Seed.
recipes.addShapeless(<harvestcraft:gourmetvenisonpattyitem>, [<ore:toolMixingbowl>, <harvestcraft:groundvenisonitem>, <ore:foodBlackpepper>, <harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:dustSalt>]);
recipes.addShapeless(<harvestcraft:gourmetporkpattyitem>, [<ore:toolMixingbowl>, <harvestcraft:groundporkitem>, <ore:foodBlackpepper>, <harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:dustSalt>]);
recipes.addShapeless(<harvestcraft:gourmetmuttonpattyitem>, [<ore:toolMixingbowl>, <harvestcraft:groundmuttonitem>, <ore:foodBlackpepper>, <harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:dustSalt>]);
recipes.addShapeless(<harvestcraft:gourmetbeefpattyitem>, [<ore:toolMixingbowl>, <harvestcraft:groundbeefitem>, <ore:foodBlackpepper>, <harvestcraft:spiceleafitem>, <harvestcraft:mustardseedsitem>, <ore:dustSalt>]);

//==================Allow Gigapickles to be crafted into their seeds==================
recipes.addShapeless(<harvestcraft:gigapickleseeditem>, [<harvestcraft:gigapickleitem>]);

//==================Make Ethereal and Sacred Oak[?] Saplings craftable==================
//Sacred Oak
recipes.addShapeless(<biomesoplenty:sapling_1:7> * 2, [<ore:treeSapling>, <biomesoplenty:log_0:4>]);

//Ethereal
recipes.addShapeless(<biomesoplenty:sapling_0:7> * 2, [<ore:treeSapling>, <biomesoplenty:log_1:4>]);

//======================General Conversion Recipes======================

//===Bees===
recipes.addShapeless(<rustic:bee> * 4, [<harvestcraft:queenbeeitem>]);
recipes.addShaped(<harvestcraft:queenbeeitem>, [[<harvestcraft:grubitem>, <harvestcraft:grubitem>, <harvestcraft:grubitem>],[<harvestcraft:grubitem>, <rustic:bee>, <harvestcraft:grubitem>], [<harvestcraft:grubitem>, <harvestcraft:grubitem>, <harvestcraft:grubitem>]]);

//===Bamboo Thatching to Bamboo===
recipes.remove(<biomesoplenty:bamboo>);
recipes.remove(<biomesoplenty:bamboo_thatching>);
recipes.addShapeless(<biomesoplenty:bamboo> * 9, [<biomesoplenty:bamboo_thatching>]);
recipes.addShapeless(<biomesoplenty:bamboo_thatching>, [<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>]);

//===Other Bamboo Stuff===
//Convert BoP to Zawa
recipes.addShapeless("EC_BambooConvert", <zawa:bamboo>, [<biomesoplenty:bamboo>]);

//Change ZAWA Bamboo Blocks to match BoP ones
recipes.remove(<zawa:bamboo_decortation>);
recipes.remove(<zawa:dried_bamboo_decortation>);

recipes.addShapeless("EC_ZawaBambooBlock", <zawa:bamboo_decortation>, [<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>,<zawa:bamboo>]);
recipes.addShapeless("EC_ZawaDriedBambooBlock", <zawa:dried_bamboo_decortation>, [<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>,<zawa:dried_bamboo>]);

recipes.addShapeless("EC_ZawaBambooStick", <zawa:bamboo> * 9, [<zawa:bamboo_decortation>]);
recipes.addShapeless("EC_ZawaDriedBambooStick", <zawa:dried_bamboo> * 9, [<zawa:dried_bamboo_decortation>]);


//===Eucalyptus leaves conversion===
//Adds Eucalyptus Leaves to OreDict
<ore:leavesEucalyptus>.add(<natura:overworld_leaves2:1>);
<ore:leavesEucalyptus>.add(<biomesoplenty:leaves_5:11>);
//Creates Recipe to convert to Koala food
recipes.addShapeless("EU_EucalyptusLeaves", <zawa:eucalyptus> * 4, [<ore:leavesEucalyptus>]);

//===Industrial Foregoing Rubber > Tiny Rubber for Compacting Drawers support.===
recipes.addShapeless(<industrialforegoing:tinydryrubber> * 9, [<industrialforegoing:dryrubber>]);

//===Quark Crystals Colors===
//Add all crystals to OreDict
val blockCrystal = <ore:blockCrystal>;
blockCrystal.add(<quark:crystal>);
blockCrystal.add(<quark:crystal:1>);
blockCrystal.add(<quark:crystal:2>);
blockCrystal.add(<quark:crystal:3>);
blockCrystal.add(<quark:crystal:4>);
blockCrystal.add(<quark:crystal:5>);
blockCrystal.add(<quark:crystal:6>);
blockCrystal.add(<quark:crystal:7>);
blockCrystal.add(<quark:crystal:8>);
//Add conversion recipes
recipes.addShapeless(<quark:crystal:0>, [<ore:dyeWhite>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:1>, [<ore:dyeRed>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:2>, [<ore:dyeOrange>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:3>, [<ore:dyeYellow>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:4>, [<ore:dyeLime>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:5>, [<ore:dyeCyan>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:6>, [<ore:dyeBlue>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:7>, [<ore:dyeMagenta>, <ore:blockCrystal>]);
recipes.addShapeless(<quark:crystal:8>, [<ore:dyeBlack>, <ore:blockCrystal>]);

//===Allows Ender Shards to be crafted back into Pearls===
recipes.addShapeless(<minecraft:ender_pearl>, [<extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>, <extrautils2:endershard>]);

//===Mushroom Blocks into Mushroom Food===
recipes.addShapeless(<minecraft:brown_mushroom> * 4, [<minecraft:brown_mushroom_block>]);
recipes.addShapeless(<minecraft:red_mushroom> * 4, [<minecraft:red_mushroom_block>]);

//===Dragon Bones to regular Bones===
recipes.addShapeless(<minecraft:bone> * 4, [<ore:bonedragon>]);

//===Silicon conversion===
recipes.addShapeless(<appliedenergistics2:material:5>, [<enderio:item_material:5>]);
recipes.addShapeless(<enderio:item_material:5>, [<appliedenergistics2:material:5>]);

//===Sausage and Toast conversion===
recipes.addShapeless(<harvestcraft:sausageitem>, [<cfm:item_sausage_cooked>]);
recipes.addShapeless(<harvestcraft:toastitem>, [<cfm:item_toast>]);

//===Tar Conversion Recipes===
recipes.addShapeless(<thebetweenlands:tar_solid>, [<thermalfoundation:material:833>, <thermalfoundation:material:833>, <thermalfoundation:material:833>, <thermalfoundation:material:833>]);
recipes.addShapeless(<thebetweenlands:tar_solid>, [<fossil:tardrop>, <fossil:tardrop>, <fossil:tardrop>, <fossil:tardrop>]);
recipes.addShapeless(<thermalfoundation:material:833>, [<fossil:tardrop>]);
recipes.addShapeless(<fossil:tardrop>, [<thermalfoundation:material:833>]);
recipes.addShapeless(<fossil:tardrop> * 4, [<thebetweenlands:tar_solid>]);

//===Basalts===
//"n" shape = NetherEx's Basalt
recipes.addShaped(<netherex:basalt> * 3, [[<ore:stoneBasalt>, null, <ore:stoneBasalt>], [null, <ore:stoneBasalt>, null]]);

//"v" Shape = Chisel's Basalt
recipes.addShaped(<chisel:basalt2:7> * 3, [[null, <ore:stoneBasalt>, null], [<ore:stoneBasalt>, null, <ore:stoneBasalt>]]);

//"\" Shape = Quark's Basalt
recipes.addShaped(<quark:basalt> * 3, [[<ore:stoneBasalt>, null, null], [null, <ore:stoneBasalt>, null], [null, null, <ore:stoneBasalt>]]);

//"/" Shape = Project: Vibrant Journey's Basalt
recipes.addShaped(<pvj:basalt> * 3, [[null, null, <ore:stoneBasalt>], [null, <ore:stoneBasalt>, null], [<ore:stoneBasalt>, null, null]]);

//===Limestones===
//"n" shape = Betweenlands' Limestone
recipes.addShaped(<thebetweenlands:limestone> * 3, [[null, <ore:stoneLimestone>, null], [<ore:stoneLimestone>, null, <ore:stoneLimestone>]]);

//"v" Shape = Chisel's Limestone
recipes.addShaped(<chisel:limestone2:7> * 3, [[<ore:stoneLimestone>, null, <ore:stoneLimestone>], [null, <ore:stoneLimestone>, null]]);

//"/" Shape = Project: Vibrant Journey's Limestone
recipes.addShaped(<pvj:limestone> * 3, [[null, null, <ore:stoneLimestone>], [null, <ore:stoneLimestone>, null], [<ore:stoneLimestone>, null, null]]);

//"\" Shape = Quark's Limestone
recipes.addShaped(<quark:limestone> * 3, [[<ore:stoneLimestone>, null, null], [null, <ore:stoneLimestone>, null], [null, null, <ore:stoneLimestone>]]);

//===Marbles===
//"n" shape = Astral Sorcery's Marble
recipes.addShaped(<astralsorcery:blockmarble> * 3, [[null, <ore:stoneMarble>, null], [<ore:stoneMarble>, null, <ore:stoneMarble>]]);

//"/" Shape = Project: Vibrant Journey's Marble
recipes.addShaped(<pvj:marble> * 3, [[null, null, <ore:stoneMarble>], [null, <ore:stoneMarble>, null], [<ore:stoneMarble>, null, null]]);

//"\" Shape = Quark's Marble
recipes.addShaped(<quark:marble> * 3, [[<ore:stoneMarble>, null, null], [null, <ore:stoneMarble>, null], [null, null, <ore:stoneMarble>]]);

//"v" Shape = Chisel's Marble
recipes.addShaped(<chisel:marble2:7> * 3, [[<ore:stoneMarble>, null, <ore:stoneMarble>], [null, <ore:stoneMarble>, null]]);

//===Wither Bones===
//"v" Shape = Tinker's
recipes.addShaped(<tconstruct:materials:17> * 3, [[<ore:boneWithered>, null, <ore:boneWithered>], [null, <ore:boneWithered>, null]]);

//"n" Shape = NetherEx's
recipes.addShaped(<netherex:wither_bone> * 3, [[null, <ore:boneWithered>, null], [<ore:boneWithered>, null, <ore:boneWithered>]]);

//"/" Shape = IceandFire's
recipes.addShaped(<iceandfire:witherbone> * 3, [[null, null, <ore:boneWithered>], [null, <ore:boneWithered>, null], [<ore:boneWithered>, null, null]]);

//Horizontal Line = Baubley Heart Canister's
recipes.addShaped(<bhc:wither_bone> * 3, [[<ore:boneWithered>], [<ore:boneWithered>], [<ore:boneWithered>]]);