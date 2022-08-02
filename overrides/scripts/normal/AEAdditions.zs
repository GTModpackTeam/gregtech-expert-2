#packmode normal
# Imports
import mods.jei.JEI;
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;

val ec as IMod = loadedMods["aeadditions"];
if (!isNull(ec)) {
    val ecItems as IItemStack[] = ec.items;

    for item in ecItems {
        if(item.displayName has "ME Fluid Pattern") {
            JEI.hide(item);
        }
    }
}



########################################
# Items
########################################
# Wireless Universal Terminal
JEI.removeAndHide(<aeadditions:terminal.universal.wireless>);

# Wireless Fluid Terminal
JEI.removeAndHide(<aeadditions:terminal.fluid.wireless>);

# Advanced Storage Housing
recipes.remove(<aeadditions:storage.casing>);
recipes.addShaped(<aeadditions:storage.casing>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>],
    [<metaitem:plateTungstenSteel>, null, <metaitem:plateTungstenSteel>],
    [<metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<aeadditions:storage.casing>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:plateTungstenSteel>, <metaitem:screwTungstenSteel>],
    [<metaitem:plateTungstenSteel>, null, <metaitem:plateTungstenSteel>],
    [<metaitem:screwTungstenSteel>, <metaitem:plateTungstenSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateTungstenSteel> * 2,
        <metaitem:screwTungstenSteel> * 2
    ])
    .outputs([<aeadditions:storage.casing>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Fluid Housing
recipes.remove(<aeadditions:storage.casing:1>);
recipes.addShaped(<aeadditions:storage.casing:1>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, null, <metaitem:plateStainlessSteel>],
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<aeadditions:storage.casing:1>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:plateStainlessSteel>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, null, <metaitem:plateStainlessSteel>],
    [<metaitem:screwStainlessSteel>, <metaitem:plateStainlessSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateStainlessSteel> * 2,
        <metaitem:screwStainlessSteel> * 2
    ])
    .outputs([<aeadditions:storage.casing:1>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# 256k Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("aeadditions:storagecells/item/extracasing/256k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <aeadditions:storage.component:0>
    ])
    .outputs([<aeadditions:storage.physical:0>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.physical:0>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <aeadditions:storage.component:0>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 1024k Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("aeadditions:storagecells/item/extracasing/1024k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <aeadditions:storage.component:1>
    ])
    .outputs([<aeadditions:storage.physical:1>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.physical:1>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <aeadditions:storage.component:1>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 4096k Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("aeadditions:storagecells/item/extracasing/4096k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <aeadditions:storage.component:2>
    ])
    .outputs([<aeadditions:storage.physical:2>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.physical:2>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <aeadditions:storage.component:2>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 16384k Storage Cell
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/16384k");
recipes.removeByRecipeName("aeadditions:storagecells/item/extracasing/16384k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <aeadditions:storage.component:3>
    ])
    .outputs([<aeadditions:storage.physical:3>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.physical:3>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <aeadditions:storage.component:3>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 256k Fluid Cell
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/extracasing/256k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <aeadditions:storage.component:4>
    ])
    .outputs([<aeadditions:storage.fluid>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.fluid>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <aeadditions:storage.component:4>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 1024k Fluid Cell
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/extracasing/1024k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <aeadditions:storage.component:5>
    ])
    .outputs([<aeadditions:storage.fluid:1>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.fluid:1>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <aeadditions:storage.component:5>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 4096k Fluid Cell
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/4096k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/extracasing/4096k");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <aeadditions:storage.component:6>
    ])
    .outputs([<aeadditions:storage.fluid:2>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<aeadditions:storage.fluid:2>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <aeadditions:storage.component:6>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 256k Storage Component
recipes.remove(<aeadditions:storage.component>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateNaquadahAlloy> * 4,
        <metaitem:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitZpm> * 4,
        <appliedenergistics2:material:38> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 1024k Storage Component
recipes.remove(<aeadditions:storage.component:1>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateAmericium> * 4,
        <metaitem:dustCertusQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:1>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitZpm> * 4,
        <aeadditions:storage.component> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:1>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 4096k Storage Component
recipes.remove(<aeadditions:storage.component:2>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateDarmstadtium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:2>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUv> * 4,
        <aeadditions:storage.component:1> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:2>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# 16384k Storage Component
recipes.remove(<aeadditions:storage.component:3>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateNeutronium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:3>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUv> * 4,
        <aeadditions:storage.component:2> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<aeadditions:storage.component:3>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# 256k Fluid Component
recipes.remove(<aeadditions:storage.component:4>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateNaquadahAlloy> * 4,
        <metaitem:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:4>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitZpm> * 4,
        <appliedenergistics2:material:57> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:4>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 1024k Fluid Component
recipes.remove(<aeadditions:storage.component:5>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitZpm> * 4,
        <metaitem:plateAmericium> * 4,
        <metaitem:dustNetherQuartz> * 16,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:5>])
    .duration(200)
    .EUt(122880)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitZpm> * 4,
        <aeadditions:storage.component:4> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:5>])
    .duration(400)
    .EUt(122880)
    .buildAndRegister();

# 4096k Fluid Component
recipes.remove(<aeadditions:storage.component:6>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUv> * 4,
        <metaitem:plateDarmstadtium> * 4,
        <metaitem:dustNetherQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:6>])
    .duration(200)
    .EUt(491520)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitUv> * 4,
        <aeadditions:storage.component:5> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<aeadditions:storage.component:6>])
    .duration(400)
    .EUt(491520)
    .buildAndRegister();

# Recycle - Advanced Storage Housing
macerator.recipeBuilder()
    .inputs([<aeadditions:storage.casing>])
    .outputs([
        <metaitem:dustTungstenSteel> * 2,
        <metaitem:dustTinyTungstenSteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<aeadditions:storage.casing>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotTungstenSteel> * 2,
        <metaitem:nuggetTungstenSteel> * 2
    ])
    .duration(56)
    .EUt(30)
    .buildAndRegister();

# Recycle - Fluid Housing
macerator.recipeBuilder()
    .inputs([<aeadditions:storage.casing:1>])
    .outputs([
        <metaitem:dustStainlessSteel> * 2,
        <metaitem:dustTinyStainlessSteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<aeadditions:storage.casing:1>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotStainlessSteel> * 2,
        <metaitem:nuggetStainlessSteel> * 2
    ])
    .duration(56)
    .EUt(30)
    .buildAndRegister();



########################################
# Blocks
########################################
# Certus Quartz Tank
JEI.removeAndHide(<aeadditions:certustank>);

# Gas Interface
JEI.removeAndHide(<aeadditions:gas_interface>);

# ME Drive Fixture
recipes.remove(<aeadditions:part.base>);
recipes.addShaped(<aeadditions:part.base>, [
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
    [<appliedenergistics2:part:120>, <appliedenergistics2:drive>, <appliedenergistics2:part:120>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]
]);

# ME Energy Cell Fixture
recipes.remove(<aeadditions:part.base:1>);
recipes.addShaped(<aeadditions:part.base:1>, [
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>],
    [<appliedenergistics2:part:120>, <appliedenergistics2:energy_cell>, <appliedenergistics2:part:120>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:part:120>, <ore:ae2.cable.glass>]
]);

# Fluid Interface
JEI.removeAndHide(<aeadditions:part.base:2>);

# ME Ore Dictionary Export Bus
JEI.removeAndHide(<aeadditions:part.base:3>);
JEI.addDescription(<aeadditions:part.base:3>, "Lag device. Use OreDict Storage bus.");
<aeadditions:part.base:3>.addTooltip(format.green("Lag device. Use OreDict Storage bus."));

# ME Fluid Assembler
recipes.remove(<aeadditions:fluidcrafter>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateGlass> * 2,
        <ore:circuitHv> * 2,
        <metaitem:electric.pump.hv> * 2,
        <metaitem:fluid.regulator.hv> * 2,
        <metaitem:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<aeadditions:fluidcrafter>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Fluid Vibration Chamber
recipes.remove(<aeadditions:vibrantchamberfluid>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitHv> * 2,
        <ore:cableGtSingleGold> * 2,
        <metaitem:electric.pump.hv> * 2,
        <metaitem:wireGtDoubleKanthal> * 4,
        <metaitem:plateStainlessSteel> * 7
    ])
    .outputs([<aeadditions:vibrantchamberfluid>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Obsidian ME Drive
recipes.remove(<aeadditions:hardmedrive>);
recipes.addShaped(<aeadditions:hardmedrive>, [
    [<enderio:block_reinforced_obsidian>, <ore:ae2.cable.dense.covered>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <appliedenergistics2:drive>, <enderio:block_reinforced_obsidian>],
    [<enderio:block_reinforced_obsidian>, <minecraft:obsidian>, <enderio:block_reinforced_obsidian>]
]);
