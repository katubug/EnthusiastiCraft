#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;

//For simple items, can just do 
//VanillaFactory.createItem("mixed_blend").register();

var SwampViscera = VanillaFactory.createItem("swampviscera");
SwampViscera.maxStackSize = 1;
SwampViscera.rarity = "rare";
SwampViscera.glowing = false;
SwampViscera.register();

var preciousDoll = VanillaFactory.createItem("preciousdoll");
preciousDoll.maxStackSize = 1;
preciousDoll.rarity = "rare";
preciousDoll.glowing = false;
preciousDoll.register();

var tearsIcarus = VanillaFactory.createItem("tearsicarus");
tearsIcarus.maxStackSize = 1;
tearsIcarus.rarity = "epic";
tearsIcarus.glowing = true;
tearsIcarus.register();

var mysticGumbo = VanillaFactory.createItem("mysticgumbo");
mysticGumbo.maxStackSize = 1;
mysticGumbo.rarity = "rare";
mysticGumbo.glowing = false;
mysticGumbo.register();