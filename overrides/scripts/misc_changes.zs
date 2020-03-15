import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//===================Ore Oredicting===================

//Add Ender Shards to OreDict.
<ore:nuggetEnderPearl>.add(<extrautils2:endershard>);

//Add Project Vibrant Journey's Basalt to OreDict
val stoneBasalt = <ore:stoneBasalt>;
stoneBasalt.add(<pvj:basalt>);

//Adds PVJ's Cobblestone Bricks to OreDict
val bricksStone = <ore:bricksStone>;
bricksStone.add(<pvj:cobblestone_brick>);

//Adds PVJ's Limestone to OreDict
val stoneLimestone = <ore:stoneLimestone>;
stoneLimestone.add(<pvj:limestone>);

//Adds PVJ's Marble to OreDict
val stoneMarble = <ore:stoneMarble>;
stoneMarble.add(<pvj:marble>);

//Adds Betweenlands' Limestone to OreDict
stoneLimestone.add(<thebetweenlands:limestone>);

//Adds various Marbles to OreDict
stoneMarble.add(<unlimitedchiselworks:chisel_stonebrick_astralsorcery_blockmarble_1:*>);
stoneMarble.add(<unlimitedchiselworks:chisel_stonebrick1_astralsorcery_blockmarble_1:*>);
stoneMarble.add(<unlimitedchiselworks:chisel_stonebrick2_astralsorcery_blockmarble_1:*>);
stoneMarble.add(<quark:world_stone_pavement:4>);
stoneMarble.add(<quark:world_stone_bricks:4>);
stoneMarble.add(<pvj:marble_brick>);

//===================Misc Oredicting===================

//Add Chicken's Water Egg to OreDict for water
val listAllwater = <ore:listAllwater>;
listAllwater.add(<chickens:liquid_egg>);

//Adds Pixie Dusts to OreDict
val pixieDust = <ore:pixieDust>;
pixieDust.add(<botania:manaresource:8>);
pixieDust.add(<wings:fairy_dust>);

//Adds Chickens' Henhouses to OreDict
val henHouse = <ore:henHouse>;
henHouse.add(<chickens:henhouse>);
henHouse.add(<chickens:henhouse_acacia>);
henHouse.add(<chickens:henhouse_birch>);
henHouse.add(<chickens:henhouse_dark_oak>);
henHouse.add(<chickens:henhouse_jungle>);
henHouse.add(<chickens:henhouse_spruce>);

//Adds BoP dirt types to OreDict
val dirt = <ore:dirt>;

//loamy
dirt.add(<biomesoplenty:dirt:0>);
//loamy coarse
dirt.add(<biomesoplenty:dirt:8>);
//sandy
dirt.add(<biomesoplenty:dirt:1>);
//sandy coarse
dirt.add(<biomesoplenty:dirt:9>);
//silty
dirt.add(<biomesoplenty:dirt:2>);
//silty coarse
dirt.add(<biomesoplenty:dirt:10>);

//Add Quark's Tallow to "wax" OreDict so it'll work in Rustic recipes
val wax = <ore:wax>;
val tallow = <ore:tallow>;
wax.add(<quark:tallow>);

//Add's HC's Beeswax to "wax" and "tallow" OreDict
wax.add(<harvestcraft:beeswaxitem>);
tallow.add(<harvestcraft:beeswaxitem>);

//Adds vanilla Concrete blocks to OreDict
val blockConcrete = <ore:blockConcrete>;

blockConcrete.add(<minecraft:concrete:9>);
blockConcrete.add(<minecraft:concrete:10>);
blockConcrete.add(<minecraft:concrete:11>);
blockConcrete.add(<minecraft:concrete>);
blockConcrete.add(<minecraft:concrete:12>);
blockConcrete.add(<minecraft:concrete:13>);
blockConcrete.add(<minecraft:concrete:14>);
blockConcrete.add(<minecraft:concrete:15>);
blockConcrete.add(<minecraft:concrete:1>);
blockConcrete.add(<minecraft:concrete:2>);
blockConcrete.add(<minecraft:concrete:3>);
blockConcrete.add(<minecraft:concrete:4>);
blockConcrete.add(<minecraft:concrete:5>);
blockConcrete.add(<minecraft:concrete:6>);
blockConcrete.add(<minecraft:concrete:7>);
blockConcrete.add(<minecraft:concrete:8>);

//Add Animania Peacock Feathers to OreDict
val peacockFeather = <ore:peacockFeather>;
peacockFeather.add(<animania:blue_peacock_feather>);
peacockFeather.add(<animania:white_peacock_feather>);
peacockFeather.add(<animania:charcoal_peacock_feather>);
peacockFeather.add(<animania:opal_peacock_feather>);
peacockFeather.add(<animania:peach_peacock_feather>);
peacockFeather.add(<animania:purple_peacock_feather>);
peacockFeather.add(<animania:taupe_peacock_feather>);

//Add Wither Tree stuff to OreDict
<ore:plankWood>.add(<treasure2:wither_planks>);
<ore:logWood>.add(<treasure2:wither_log>);
<ore:logWood>.add(<treasure2:wither_log_soul>);

//===================Food Oredicting===================

//Declare OreDict Values
val listAllMeatRaw = <ore:listAllMeatRaw>;
val listAllMeatCooked = <ore:listAllMeatCooked>;
val listAllchickenraw = <ore:listAllchickenraw>;
val listAllchickencooked = <ore:listAllchickencooked>;
val listAllfruit = <ore:listAllfruit>;
val listAllberry = <ore:listAllberry>;
val cropRaspberry = <ore:cropRaspberry>;

//Adds Fossils Revival Dodo to Meat and Chicken OreDict
listAllMeatRaw.add(<fossil:dodo_meat>);
listAllMeatCooked.add(<fossil:dodo_cooked>);
listAllchickenraw.add(<fossil:dodo_meat>);
listAllchickencooked.add(<fossil:dodo_cooked>);

//Adds Betweenlands Frog Legs to OreDict
<ore:foodFrogRaw>.add(<thebetweenlands:frog_legs_raw>);
<ore:foodFrogCooked>.add(<thebetweenlands:frog_legs_cooked>);

//Adds BetterAnimalsPlus's Pheasant Meat to Chicken OreDict
listAllchickenraw.add(<betteranimalsplus:pheasantraw>);
listAllchickencooked.add(<betteranimalsplus:pheasantcooked>);

//Adds Vibrant Journey's duck to OreDict
val foodDuckraw = <ore:foodDuckraw>;
val foodDuckcooked = <ore:foodDuckcooked>;
val listAllduckraw = <ore:listAllduckraw>;
val listAllduckcooked = <ore:listAllduckcooked>;
foodDuckraw.add(<pvj:raw_duck>);
foodDuckcooked.add(<pvj:cooked_duck>);
listAllduckraw.add(<pvj:raw_duck>);
listAllduckcooked.add(<pvj:cooked_duck>);

//Adds Vibrant Journey's Juniper Berries to OreDict
<ore:cropJuniperberry>.add(<pvj:juniper_berries>);
listAllberry.add(<pvj:juniper_berries>);
listAllfruit.add(<pvj:juniper_berries>);

//Adds MrCrayfish's Toast to OreDict
val foodToast = <ore:foodToast>;
foodToast.add(<cfm:item_toast>);

//Adds Biomes O Plenty's Kelp to OreDict
val listAllveggie = <ore:listAllveggie>;
val listAllgreenveggie = <ore:listAllgreenveggie>;
val cropSeaweed = <ore:cropSeaweed>;
cropSeaweed.add(<biomesoplenty:seaweed>);
listAllgreenveggie.add(<biomesoplenty:seaweed>);
listAllveggie.add(<biomesoplenty:seaweed>);

//Adds Biomes O Plenty's Rice to OreDict
val cropRice = <ore:cropRice>;
cropRice.add(<biomesoplenty:plant_1:3>);

//Adds Biomes O Plenty's Berry to OreDict
listAllberry.add(<biomesoplenty:berries>);

//Adds Erebus Cabbage to OreDict
listAllveggie.add(<erebus:erebus_food:15>);
listAllgreenveggie.add(<erebus:erebus_food:15>);
<ore:cropCabbage>.add(<erebus:erebus_food:15>);

//Adds Erebus Turnips to OreDict
listAllveggie.add(<erebus:turnip>);
<ore:listAllrootveggie>.add(<erebus:turnip>);
<ore:cropTurnip>.add(<erebus:turnip>);

//Adds Cactus Fruit to OreDict
var cactusFruit = [
<erebus:erebus_food:17>,
<erebus:erebus_food:18>
] as IItemStack[];

for fruit in cactusFruit {
    <ore:cropCactusfruit>.add(fruit);
    listAllfruit.add(fruit);
}

//Adds a bunch of frog foods to OreDict (why are there so many)
val froggies = [
<animania:raw_frog_legs>,
<quark:frog_leg>,
<thebetweenlands:frog_legs_raw>,
<harvestcraft:frograwitem>,
<animania:cooked_frog_legs>,
<harvestcraft:frogcookeditem>,
<quark:cooked_frog_leg>,
<thebetweenlands:frog_legs_cooked>
] as IItemStack[];

for froggy in froggies {
    <ore:listAllfrog>.add(froggy);
}

var rawFrog =[
<animania:raw_frog_legs>,
<quark:frog_leg>,
<thebetweenlands:frog_legs_raw>,
<harvestcraft:frograwitem>
] as IItemStack[];

for frog in rawFrog {
    <ore:foodFrograw>.add(frog);
}

var cookedFrog = [
<animania:cooked_frog_legs>,
<harvestcraft:frogcookeditem>,
<quark:cooked_frog_leg>,
<thebetweenlands:frog_legs_cooked>
] as IItemStack[];

for freg in cookedFrog {
    <ore:foodFrogcooked>.add(freg);
}

//Adds a bunch of mushrooms to OreDict
var mushrooms = [
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>,
    <biomesoplenty:mushroom:1>,
    <biomesoplenty:mushroom:2>,
    <biomesoplenty:mushroom:4>,
    <erebus:sarcastic_czech_mushroom>,
    <erebus:dutch_cap_mushroom>,
    <erebus:grandmas_shoes_mushroom>,
    <pvj:orange_mushroom>,
    <thebetweenlands:flat_head_mushroom_item>,
    <thebetweenlands:black_hat_mushroom_item>,
    <thebetweenlands:bulb_capped_mushroom_item>,
    <erebus:kaizers_fingers_mushroom>,
    <erebus:dark_capped_mushroom>,
    <harvestcraft:whitemushroomitem>,
    <rustic:mooncap_mushroom>
] as IItemStack[];

for mushroom in mushrooms {
    <ore:listAllmushroom>.add(mushroom);
    <ore:foodMushroom>.add(mushroom);
}

//Adds Biomes O Plenty's Portobella and Rustic's Mooncap to OreDict
<ore:cropWhitemushroom>.add(<biomesoplenty:mushroom:1>);
<ore:cropWhitemushroom>.add(<rustic:mooncap_mushroom>);

//Adds Biomes O Plenty's Sea Oats (I googled it, they're edible) to OreDict
val listAllgrain = <ore:listAllgrain>;
val cropOats = <ore:cropOats>;
listAllgrain.add(<biomesoplenty:double_plant:3>);
cropOats.add(<biomesoplenty:double_plant:3>);

//Adds Project Vibrant Journey's Sea Oats to OreDict
listAllgrain.add(<pvj:sea_oats>);
cropOats.add(<pvj:sea_oats>);

//Makes more Roots edible
val cropEdibleRoot = <ore:cropEdibleRoot>;
cropEdibleRoot.add(<quark:root>);
cropEdibleRoot.add(<biomesoplenty:plant_1:9>);

//===================Adds OreDict support for Unlimited Chisel Works===================
<ore:plankTreatedWood>.add(<unlimitedchiselworks:chisel_planks_oak_immersiveengineering_treated_wood_0:*>);

val plankWood = <ore:plankWood>;
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_immersiveengineering_treated_wood_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_planks_1:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_planks_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_white_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_orange_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_magenta_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_light_blue_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_yellow_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_lime_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_pink_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_gray_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_silver_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_cyan_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_purple_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_blue_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_brown_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_green_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_red_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_rustic_painted_wood_black_0:*>);

plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_15:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_14:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_13:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_12:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_11:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_10:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_9:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_8:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_7:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_6:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_5:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_4:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_3:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_2:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_1:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_quark_stained_planks_0:*>);

bricksStone.add(<unlimitedchiselworks:chisel_stonebrick_quark_world_stone_bricks_7:*>);
bricksStone.add(<unlimitedchiselworks:chisel_stonebrick1_quark_world_stone_bricks_7:*>);
bricksStone.add(<unlimitedchiselworks:chisel_stonebrick2_quark_world_stone_bricks_7:*>);
bricksStone.add(<unlimitedchiselworks:chisel_stonebrick_quark_world_stone_bricks_6:*>);
bricksStone.add(<unlimitedchiselworks:chisel_stonebrick1_quark_world_stone_bricks_6:*>);
bricksStone.add(<unlimitedchiselworks:chisel_stonebrick2_quark_world_stone_bricks_6:*>);

val cobblestone = <ore:cobblestone>;
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone_quark_biome_cobblestone_2:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone_quark_biome_cobblestone_1:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone_quark_biome_cobblestone_0:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone1_quark_biome_cobblestone_2:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone1_quark_biome_cobblestone_1:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone1_quark_biome_cobblestone_0:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone2_quark_biome_cobblestone_2:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone2_quark_biome_cobblestone_1:*>);
cobblestone.add(<unlimitedchiselworks:chisel_cobblestone2_quark_biome_cobblestone_0:*>);

val purpur = <ore:purpur>;
val sandstone = <ore:sandstone>;
val prismarine = <ore:prismarine>;
purpur.add(<unlimitedchiselworks:chisel_purpur_quark_midori_block_0:*>);
purpur.add(<unlimitedchiselworks:chisel_purpur1_quark_midori_block_0:*>);
purpur.add(<unlimitedchiselworks:chisel_purpur2_quark_midori_block_0:*>);
purpur.add(<unlimitedchiselworks:chisel_purpur_quark_duskbound_block_0:*>);
purpur.add(<unlimitedchiselworks:chisel_purpur1_quark_duskbound_block_0:*>);
purpur.add(<unlimitedchiselworks:chisel_purpur2_quark_duskbound_block_0:*>);
sandstone.add(<unlimitedchiselworks:chisel_sandstoneyellow_quark_soul_sandstone_0:*>);
sandstone.add(<unlimitedchiselworks:chisel_sandstoneyellow1_quark_soul_sandstone_0:*>);
sandstone.add(<unlimitedchiselworks:chisel_sandstoneyellow2_quark_soul_sandstone_0:*>);
prismarine.add(<unlimitedchiselworks:chisel_prismarine_quark_elder_prismarine_0:*>);
prismarine.add(<unlimitedchiselworks:chisel_prismarine1_quark_elder_prismarine_0:*>);
prismarine.add(<unlimitedchiselworks:chisel_prismarine2_quark_elder_prismarine_0:*>);

plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_15:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_14:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_13:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_12:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_11:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_10:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_9:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_8:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_7:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_6:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_5:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_4:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_3:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_2:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_1:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_biomesoplenty_planks_0_0:*>);

plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_redwood_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_willow_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_mangrove_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_palm_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_fir_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_aspen_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_maple_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_baobab_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_cottonwood_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_juniper_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_cherry_blossom_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_jacaranda_0:*>);
plankWood.add(<unlimitedchiselworks:chisel_planks_oak_pvj_planks_pine_0:*>);


val metaStone = <ore:metamorphicStone>;
val livingrock = <ore:livingrock>;
livingrock.add(<unlimitedchiselworks:chisel_stonebrick_botania_livingrock_1:*>);
livingrock.add(<unlimitedchiselworks:chisel_stonebrick1_botania_livingrock_1:*>);
livingrock.add(<unlimitedchiselworks:chisel_stonebrick2_botania_livingrock_1:*>);
<ore:dreamwood>.add(<unlimitedchiselworks:chisel_planks_oak_botania_dreamwood_1:*>);
<ore:livingwood>.add(<unlimitedchiselworks:chisel_planks_oak_botania_livingwood_1:*>);

metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_7:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_6:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_5:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_4:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_3:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_2:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick_botania_biomestoneb_1:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_7:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_6:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_4:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_3:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_2:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_1:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick1_botania_biomestoneb_0:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_7:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_6:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_5:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_4:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_3:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_2:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_1:*>);
metaStone.add(<unlimitedchiselworks:chisel_stonebrick2_botania_biomestoneb_0:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_15:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_14:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_13:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_12:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_11:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_10:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_9:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone_botania_biomestonea_8:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_15:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_14:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_13:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_12:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_11:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_10:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_9:*>);
metaStone.add(<unlimitedchiselworks:chisel_cobblestone2_botania_biomestonea_8:*>);

val skyStone = <ore:skyStone>;
skyStone.add(<unlimitedchiselworks:chisel_stonebrick_appliedenergistics2_sky_stone_brick_0:*>);
skyStone.add(<unlimitedchiselworks:chisel_stonebrick1_appliedenergistics2_sky_stone_brick_0:*>);
skyStone.add(<unlimitedchiselworks:chisel_stonebrick2_appliedenergistics2_sky_stone_brick_0:*>);

stoneMarble.add(<unlimitedchiselworks:chisel_stonebrick_astralsorcery_blockblackmarble_1:*>);
stoneMarble.add(<unlimitedchiselworks:chisel_stonebrick1_astralsorcery_blockblackmarble_1:*>);
stoneMarble.add(<unlimitedchiselworks:chisel_stonebrick2_astralsorcery_blockblackmarble_1:*>);


//===================JEI & Recipe Removal===================

//Removes Nether Star recipe
recipes.remove(<minecraft:nether_star>);

//Removes Pam's Market
mods.jei.JEI.removeAndHide(<harvestcraft:market>);

//Removes cable washing recipes for disabled AE2 cables
recipes.remove(<appliedenergistics2:part:516>);
recipes.remove(<appliedenergistics2:part:56>);
recipes.remove(<appliedenergistics2:part:76>);

//Removes other Venison from JEI
mods.jei.JEI.removeAndHide(<twilightforest:raw_venison>);
mods.jei.JEI.removeAndHide(<twilightforest:cooked_venison>);
mods.jei.JEI.removeAndHide(<betteranimalsplus:venisonraw>);
mods.jei.JEI.removeAndHide(<betteranimalsplus:venisoncooked>);

//Removes MrCrayfish Sausage.
furnace.remove(<cfm:item_sausage_cooked>);
mods.jei.JEI.removeAndHide(<cfm:item_sausage>);
mods.jei.JEI.removeAndHide(<cfm:item_sausage_cooked>);

//Removes Actually Additions Fishing Net
mods.jei.JEI.removeAndHide(<actuallyadditions:block_fishing_net>);

//Removes BetterAnimalsPlus' Goat Cheese
mods.jei.JEI.removeAndHide(<betteranimalsplus:goatcheese>);

//Remove Industrial Foregoing's Meat Feeder
mods.jei.JEI.removeAndHide(<industrialforegoing:meat_feeder>);

//Remove Biome Finding things in favor of Nature's Compass
mods.jei.JEI.removeAndHide(<randomthings:biomecrystal>);
mods.jei.JEI.removeAndHide(<randomthings:biomeradar>);
mods.jei.JEI.removeAndHide(<biomesoplenty:biome_finder>);

//Remove Lapis and Quartz Glass
mods.jei.JEI.removeAndHide(<randomthings:lapisglass>);
mods.jei.JEI.removeAndHide(<randomthings:quartzglass>);

//Remove MoarSign's duplicate Diamond and Emerald nuggets
mods.jei.JEI.removeAndHide(<moarsigns:nugget:1>);
mods.jei.JEI.removeAndHide(<moarsigns:nugget:2>);

//Remove Quark's Wither Ash
mods.jei.JEI.removeAndHide(<quark:black_ash>);

//Remove NetherEx's Wither Dust
mods.jei.JEI.removeAndHide(<netherex:wither_dust>);

//Remove RandomThings' Golden Compass
mods.jei.JEI.removeAndHide(<randomthings:goldencompass>);

//Remove Treasure2's Ruby and Sapphire
mods.jei.JEI.removeAndHide(<treasure2:sapphire>);
mods.jei.JEI.removeAndHide(<treasure2:ruby>);
mods.jei.JEI.removeAndHide(<treasure2:sapphire_ore>);
mods.jei.JEI.removeAndHide(<treasure2:ruby_ore>);

//Remove the disabled water bowl
mods.jei.JEI.removeAndHide(<actuallyadditions:item_water_bowl>);

//Remove Actually Additions Coffee-Related things
mods.jei.JEI.removeAndHide(<actuallyadditions:block_coffee_machine>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_coffee>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_coffee_beans>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_coffee_seed>);
//Empty Cup
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:14>);

//Remove Actually Additions Rice-Related things
//Rice Dough
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:9>);
//Rice Slimeball
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:12>);
//Rice
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:16>);
//Rice Bread
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:17>);
//Rice Seed
mods.jei.JEI.removeAndHide(<actuallyadditions:item_rice_seed>);

//Remove ActuallyAdditions' Toast And Recipes
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:10>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:19>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:13>);

//Removes some ActuallyAdditions foods.
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:20>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:19>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:13>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:10>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_misc:4>);
//Chocolate Cake
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:8>);
//Chocolate Bar
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:9>);
//Pizza
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:14>);
//Baguette
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:15>);
//Submarine Sandwich
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:11>);
//Big Cookie
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:12>);
//Doughnut
mods.jei.JEI.removeAndHide(<actuallyadditions:item_food:18>);

//===================Various Changes===================

//Bonsai Trees Hellbark grows on Netherrack only
mods.bonsaitrees.SoilCompatibility.addCompatibleTagToTree("biomesoplenty:hellbark", "netherrack");
mods.bonsaitrees.SoilCompatibility.removeCompatibleTagFromTree("biomesoplenty:hellbark", "dirt");
mods.bonsaitrees.SoilCompatibility.removeCompatibleTagFromTree("biomesoplenty:hellbark", "grass");

//===Stack Sizes===
//Cake
<minecraft:cake>.maxStackSize = 16;

//EFLNs
<tconstruct:throwball:1>.maxStackSize = 32;

//Terrestrial Artifacts
<biomesoplenty:terrestrial_artifact>.maxStackSize = 16;

//Potions
<minecraft:potion>.maxStackSize = 16;

//Splash Potions
<minecraft:splash_potion>.maxStackSize = 16;

//Lingering Potions
<minecraft:lingering_potion>.maxStackSize = 16;

//Chickens
<roost:chicken>.maxStackSize = 8;

//===================Tooltips===================

//Hopefully makes "Crescent Hammer" searchable with "wrench" ffs
<thermalfoundation:wrench>.addTooltip(format.aqua("Calls itself a hammer, but it's really a wrench."));
<ore:toolWrench>.add(<thermalfoundation:wrench>);

//===Adds Tooltips to high-level foods from other mods===
//Animania Super Omelette, Prime Roasted Beef/Pork
//Erebus Cooked Titan Stew (16), Heart of the Stag
//Mystical World Epic Squid
//Actually Additions Fish N Chips
//Betweenlands Kraken Calamari
//Quark Golden Frog Leg

var topTierFoods = [
    <animania:super_omelette>,
    <animania:cooked_prime_pork>,
    <animania:cooked_prime_beef>,
    <erebus:erebus_food:16>,
    <erebus:stag_heart_cooked>,
    <actuallyadditions:item_food:3>,
    <thebetweenlands:kraken_calamari>,
    <quark:golden_frog_leg>
] as IItemStack[];

for item in topTierFoods {
	item.addTooltip(format.gold("Top Tier Food."));
}

//Adds tooltip warning players about laggy items
var laggy = [
    <thermaldynamics:duct_32>.withTag({DenseType: 2 as byte}),
    <thermaldynamics:duct_32>.withTag({DenseType: 1 as byte}),
    <thermaldynamics:duct_32>,
    <thermaldynamics:duct_32:2>.withTag({DenseType: 2 as byte}),
    <thermaldynamics:duct_32:2>.withTag({DenseType: 1 as byte}),
    <thermaldynamics:duct_32:2>,
    <thermaldynamics:duct_32:4>.withTag({DenseType: 2 as byte}),
    <thermaldynamics:duct_32:4>.withTag({DenseType: 1 as byte}),
    <thermaldynamics:duct_32:4>,
    <thermaldynamics:duct_32:6>.withTag({DenseType: 2 as byte}),
    <thermaldynamics:duct_32:6>.withTag({DenseType: 1 as byte}),
    <thermaldynamics:duct_32:6>,
    <roost:collector>,
    <appliedenergistics2:material:29>,
    <cyclicmagic:block_hydrator>,
    <cyclicmagic:dehydrator>,
    <torchmaster:feral_flare_lantern>,
    <cyclicmagic:auto_crafter>,
    <enderio:block_simple_crafter>,
    <enderio:block_crafter>,
    <extrautils2:crafter>,
    <extrautils2:analogcrafter>
]  as IItemStack[];

for item in laggy {
	item.addTooltip(format.red("Warning:"));
    item.addTooltip(format.gold("Use of this item could cause your world to lag. Server owners may disable crafting of this item."));
}

//Custom Tooltip for Crafting Cards
<appliedenergistics2:material:53>.addTooltip(format.red("Warning:"));
<appliedenergistics2:material:53>.addTooltip(format.gold("Overuse of this item WILL cause major lag issues in your world. Please use autocrafting in moderation."));