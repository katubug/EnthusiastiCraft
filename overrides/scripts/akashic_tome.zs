import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Credit must go to the ATMTeam for providing a good starting point for me to work from. This script file has been heavily inspired by their work on All The Mods 3: Remix.

//Scripts to create an Akashic Tome with all compatible books inside.
//
	var filledAkashic = <akashictome:tome>.withTag(
	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			actuallyadditions: {
				id: "actuallyadditions:item_booklet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "actuallyadditions"
				},
				Damage: 0 as short
			},
			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery"
				},
				Damage: 0 as short
			},
			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania"
				},
				Damage: 0 as short
			},
			cfm: {
				id: "cfm:item_recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cfm"
				}, 
				Damage: 0 as short
			},
			conarm: {
				id: "conarm:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "conarm"
				},
				Damage: 0 as short
			},
			cookingforblockheads: {
				id: "cookingforblockheads:recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cookingforblockheads"
				},
				Damage: 1 as short
			},
			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},
			immersiveengineering: {
				id: "immersiveengineering:tool",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "immersiveengineering"
				},
				Damage: 3 as short
			},
			industrialforegoing: {
				id: "industrialforegoing:book_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "industrialforegoing"
				},
				Damage: 0 as short
			},
			modcurrency: {
				id: "modcurrency:guidebook",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "modcurrency"
				},
				Damage: 0 as short
			},
			openblocks: {
				id: "openblocks:info_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "openblocks"
				},
				Damage: 0 as short
			},
			rustic: {
				id: "rustic:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rustic"
				},
				Damage: 0 as short
			},			
			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct"
				},
				Damage: 0 as short
			},
			thebetweenlands: {
				id: "thebetweenlands:manual_hl",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thebetweenlands"
				},
				Damage: 0 as short
			},
			arcanearchives: {
				id: "arcanearchives:tome_arcana",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "arcanearchives",
					"arcanearchives:tome_arcana": "arcanearchives:xml/tome.xml"
				},
				Damage: 0 as short
			},
			animania: {
				id: "animania:animania_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "animania"
				},
				Damage: 0 as short
			},
			enthusiasticraft: {
				id: "patchouli:guide_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "patchouli",
					"patchouli:book": "patchouli:ecwelcome"
				},
				Damage: 0 as short
			}
		}
	}
	
	);

//Adds tooltip and description
filledAkashic.addTooltip(format.gold("Contains all the guidebooks in the pack."));

//Stuff for homemade guidebook.
val welcomeBook = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:ecwelcome"});

welcomeBook.addTooltip(format.gold("Written by Utak Aluna."));

//Crafting recipe for guidebook
recipes.addShapeless("EC_WelcomeBookRecipe", welcomeBook, [<minecraft:book>,<minecraft:carrot>]);

//Crafting Recipe for filled tome
recipes.addShapeless("EC_FullAkashicDirt", filledAkashic, [welcomeBook,<ore:dirt>]);

//Another crafting recipe for filled tome
recipes.addShapeless("EC_FullAkashicSelf", filledAkashic, [<akashictome:tome>]);