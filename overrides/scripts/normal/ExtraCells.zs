#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;


val ec as IMod = loadedMods["extracells"];
if (!isNull(ec)) {
    val ecItems as IItemStack[] = ec.items;

    for item in ecItems {
        JEI.removeAndHide(item);
    }
}


########################################
# Items
########################################
# Advanced Storage Housing
recipes.addShapeless(<aeadditions:storage.casing>, [<extracells:storage.casing>]);

# Fluid Housing
recipes.addShapeless(<aeadditions:storage.casing:1>, [<extracells:storage.casing:1>]);

# 256k Storage Cell
recipes.addShapeless(<aeadditions:storage.component>, [<extracells:storage.component>]);

# 1024k Storage Cell
recipes.addShapeless(<aeadditions:storage.component:1>, [<extracells:storage.component:1>]);

# 4096k Storage Cell
recipes.addShapeless(<aeadditions:storage.component:2>, [<extracells:storage.component:2>]);

# 16384k Storage Cell
recipes.addShapeless(<aeadditions:storage.component:3>, [<extracells:storage.component:3>]);

# 256k Fluid Cell
recipes.addShapeless(<aeadditions:storage.component:4>, [<extracells:storage.component:8>]);

# 1024k Fluid Cell
recipes.addShapeless(<aeadditions:storage.component:5>, [<extracells:storage.component:9>]);

# 4096k Fluid Cell
recipes.addShapeless(<aeadditions:storage.component:6>, [<extracells:storage.component:10>]);



########################################
# Blocks
########################################
# ME Drive Fixture
recipes.addShapeless(<aeadditions:part.base>, [<extracells:part.base:7>]);

# ME Energy Cell Fixture
recipes.addShapeless(<aeadditions:part.base:1>, [<extracells:part.base:8>]);

# ME Fluid Assembler
recipes.addShapeless(<aeadditions:fluidcrafter>, [<extracells:fluidcrafter>]);

# Fluid Vibration Chamber
recipes.addShapeless(<aeadditions:vibrantchamberfluid>, [<extracells:vibrantchamberfluid>]);

# Obsidian ME Drive
recipes.addShapeless(<aeadditions:hardmedrive>, [<extracells:hardmedrive>]);
