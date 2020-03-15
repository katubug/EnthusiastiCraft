import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.data.IData;

//Remove Venison Drops from BetterAnimalsPlus
val bapDeer = LootTables.getTable("betteranimalsplus:deer");
val bapDeerMain = bapDeer.getPool("deer-venison");
bapDeerMain.removeEntry("betteranimalsplus:venisonraw");

//Add Pam's Venison to BetterAnimalsPlus
bapDeerMain.addItemEntry(<harvestcraft:venisonrawitem>, 5);

//Remove Venison Drops from Twilight Forest
val tfDeer = LootTables.getTable("twilightforest:entities/deer");
val tfDeerMain = tfDeer.getPool("meat");
tfDeerMain.removeEntry("twilightforest:raw_venison");

//Add Pam's Venison to Twilight Forest
tfDeerMain.addItemEntry(<harvestcraft:venisonrawitem>, 5);

//Add Truffles to piggie drop tables
val aniPig = LootTables.getTable("animania:pig_regular");
val aniPigPrime = LootTables.getTable("animania:pig_prime");
val aniPigPool = aniPig.getPool("meat");
val aniPigPrimePool = aniPigPrime.getPool("meat");
aniPigPool.addItemEntry(<animania:truffle>, 1, 5);
aniPigPrimePool.addItemEntry(<animania:truffle>, 1, 5);


//======Add Animania drops to vanilla animals======
//Immense thanks to nihiltres from the Modded Minecraft Discord for helping me with this script

//Set a blank condition array to use, and add functionality for autosmelt weapons
val minimalConditionArr as IData[] = [];
val autoSmelt as IData[] = [{
              "function": "minecraft:furnace_smelt",
              "conditions": [
                {
                  "properties": {
                    "minecraft:on_fire": true
                  },
                  "entity": "this",
                  "condition": "minecraft:entity_properties"
                }
              ]
            }];

//==Cows==
//Get Loot table and the loot pool inside
	val dtCow = LootTables.getTable("minecraft:entities/cow");
	val dtMeatCow = dtCow.getPool("pool1");
//Remove vanilla drops to be re-added
	dtMeatCow.removeEntry("minecraft:beef");
//Add vanilla drop.
	dtMeatCow.addItemEntryJson(<minecraft:beef>, 5 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "vanillaCow");
//Add Animania drop.
	dtMeatCow.addItemEntryJson(<animania:raw_prime_beef>, 1 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "animaniaCow");

//==Pigs==
//Get Loot table and the loot pool inside
	val dtPig = LootTables.getTable("minecraft:entities/pig");
	val dtMeatPig = dtPig.getPool("main");
//Remove vanilla drops to be re-added
	dtMeatPig.removeEntry("minecraft:porkchop");
//Add vanilla drop.
	dtMeatPig.addItemEntryJson(<minecraft:porkchop>, 5 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "vanillaPig");
//Add Animania drop.
	dtMeatPig.addItemEntryJson(<animania:raw_prime_pork>, 1 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "animaniaPig");
//Add Truffles as a drop
	dtMeatPig.addItemEntry(<animania:truffle>, 1, 5);

//==Rabbits==
//Get Loot table and the loot pool inside
	val dtRabbit = LootTables.getTable("minecraft:entities/rabbit");
	val dtMeatRabbit = dtRabbit.getPool("pool1");
//Remove vanilla drops to be re-added
	dtMeatRabbit.removeEntry("minecraft:rabbit");
//Add vanilla drop.
	dtMeatRabbit.addItemEntryJson(<minecraft:rabbit>, 5 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "vanillaRabbit");
//Add Animania drop.
	dtMeatRabbit.addItemEntryJson(<animania:raw_prime_rabbit>, 1 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "animaniaRabbit");

//==Sheep==
//Get Loot table and the loot pool inside
	val dtSheep = LootTables.getTable("minecraft:entities/sheep");
	val dtMeatSheep = dtSheep.getPool("main");
//Remove vanilla drops to be re-added
	dtMeatSheep.removeEntry("minecraft:mutton");
//Add vanilla drop.
	dtMeatSheep.addItemEntryJson(<minecraft:mutton>, 5 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "vanillaSheep");
//Add Animania drop.
	dtMeatSheep.addItemEntryJson(<animania:raw_prime_mutton>, 1 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "animaniaSheep");

//==Horses==
val dtHorse = LootTables.getTable("minecraft:entities/horse");
val dtMeatHorse = dtHorse.getPool("main");
//Remove vanilla drops to be re-added
	dtMeatHorse.removeEntry("minecraft:leather");
//Add vanilla drop.
	dtMeatHorse.addItemEntryJson(<minecraft:leather>, 5 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "vanillaHorse");
//Add Animania drop.
	dtMeatHorse.addItemEntryJson(<animania:raw_horse>, 1 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "animaniaHorse");

//==Chickens==
//Get Loot table and the loot pool inside
	val dtChicken = LootTables.getTable("minecraft:entities/chicken");
	val dtMeatChicken = dtChicken.getPool("pool1");
//Remove vanilla drops to be re-added
	dtMeatChicken.removeEntry("minecraft:chicken");
//Add vanilla drop.
	dtMeatChicken.addItemEntryJson(<minecraft:chicken>, 5 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "vanillaChicken");
//Add Animania drop.
	dtMeatChicken.addItemEntryJson(<animania:raw_prime_chicken>, 1 as int, 0 as int, autoSmelt as IData[], minimalConditionArr as IData[], "animaniaChicken");