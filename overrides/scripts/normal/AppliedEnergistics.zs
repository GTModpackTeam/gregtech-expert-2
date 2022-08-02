#packmode normal
# Imports
import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.zenutils.I18n;
import mods.appliedenergistics2.Inscriber;

JEI.hideCategory("appliedenergistics2.grinder");
JEI.hideCategory("appliedenergistics2.inscriber");

<appliedenergistics2:part:469>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_conduit.tooltip.1")));
JEI.addDescription(<appliedenergistics2:part:469>, I18n.format("modpack.ae2.p2p_conduit.tooltip.1"));

<appliedenergistics2:part:463>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_bucket.tooltip.1")));
JEI.addDescription(<appliedenergistics2:part:463>, I18n.format("modpack.ae2.p2p_bucket.tooltip.1"));

<appliedenergistics2:part:470>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_gtceu.tooltip.1")));
JEI.addDescription(<appliedenergistics2:part:470>, I18n.format("modpack.ae2.p2p_gtceu.tooltip.1"));

<appliedenergistics2:part:462>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_chest.tooltip.1")));
JEI.addDescription(<appliedenergistics2:part:462>, I18n.format("modpack.ae2.p2p_chest.tooltip.1"));

<appliedenergistics2:part:467>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_torch.tooltip.1")));
JEI.addDescription(<appliedenergistics2:part:467>, I18n.format("modpack.ae2.p2p_torch.tooltip.1"));

<appliedenergistics2:part:461>.addTooltip(format.green(I18n.format("modpack.ae2.p2p_redstone.tooltip.1")));
JEI.addDescription(<appliedenergistics2:part:461>, I18n.format("modpack.ae2.p2p_redstone.tooltip.1"));

val ae2 as IMod = loadedMods["appliedenergistics2"];
if (!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if (item.displayName has "Cable Facade") {
            JEI.hide(item); 
        }
        if (item.displayName has "Paint Ball") {
            JEI.removeAndHide(item); 
        }
    }
}



########################################
# Items
########################################
# Certus Quartz Dust
<ore:dustCertusQuartz>.remove(<appliedenergistics2:material:2>);
JEI.hide(<appliedenergistics2:material:2>);

# Nether Quartz Dust
<ore:dustNetherQuartz>.remove(<appliedenergistics2:material:3>);
<ore:dustQuartz>.remove(<appliedenergistics2:material:3>);
JEI.hide(<appliedenergistics2:material:3>);

# Fluix Dust
<ore:dustFluix>.remove(<appliedenergistics2:material:8>);
JEI.hide(<appliedenergistics2:material:8>);

# Sky Stone Dust
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:sky_stone_block>])
    .outputs([<appliedenergistics2:material:45>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Ender Dust
<ore:dustEnder>.remove(<appliedenergistics2:material:46>);
<ore:dustEnderPearl>.remove(<appliedenergistics2:material:46>);
JEI.hide(<appliedenergistics2:material:46>);

# Iron Dust
<ore:dustIron>.remove(<appliedenergistics2:material:49>);
JEI.hide(<appliedenergistics2:material:49>);

# Gold Dust
<ore:dustGold>.remove(<appliedenergistics2:material:51>);
JEI.hide(<appliedenergistics2:material:51>);

# Wooden Gear
JEI.removeAndHide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

# Network Tool
recipes.remove(<appliedenergistics2:network_tool>);
recipes.addShapeless(<appliedenergistics2:network_tool>, [
    <appliedenergistics2:certus_quartz_wrench> | <appliedenergistics2:nether_quartz_wrench> | <enderio:item_yeta_wrench>, <appliedenergistics2:part:200>,
    <appliedenergistics2:material:23>,<minecraft:chest>
]);

# Network Visualization Tool
recipes.remove(<aenetvistool:net_visualizer>);
recipes.addShaped(<aenetvistool:net_visualizer>, [
    [<metaitem:plateAluminium>, <appliedenergistics2:material:43>, <metaitem:plateAluminium>],
    [<appliedenergistics2:network_tool>, <metaitem:wireless>, <appliedenergistics2:entropy_manipulator>],
    [<metaitem:plateAluminium>, <appliedenergistics2:material:44>, <metaitem:plateAluminium>]
]);

# Inscriber Calulation Press
Inscriber.removeRecipe(<appliedenergistics2:material:13>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockIron>])
    .notConsumable([<metaitem:lensCertusQuartz>])
    .outputs([<appliedenergistics2:material:13>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Inscriber Engineering Press
Inscriber.removeRecipe(<appliedenergistics2:material:14>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockIron>])
    .notConsumable([<metaitem:lensFluix>])
    .outputs([<appliedenergistics2:material:14>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Inscriber Logic Press
Inscriber.removeRecipe(<appliedenergistics2:material:15>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockIron>])
    .notConsumable([<metaitem:lensChargedCertusQuartz>])
    .outputs([<appliedenergistics2:material:15>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Inscriber Silicon Press
Inscriber.removeRecipe(<appliedenergistics2:material:19>);
laser_engraver.recipeBuilder()
    .inputs([<ore:blockIron>])
    .notConsumable([<metaitem:lensNetherQuartz>])
    .outputs([<appliedenergistics2:material:19>])
    .duration(2000)
    .EUt(480)
    .buildAndRegister();

# Printed Calulation Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
forming_press.recipeBuilder()
    .inputs([<metaitem:plateCertusQuartz>])
    .notConsumable(<appliedenergistics2:material:13>)
    .outputs([<appliedenergistics2:material:16>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Printed Engineering Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
forming_press.recipeBuilder()
    .inputs([<metaitem:plateDiamond>])
    .notConsumable(<appliedenergistics2:material:14>)
    .outputs([<appliedenergistics2:material:17>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Printed Logic Circuit
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
forming_press.recipeBuilder()
    .inputs([<metaitem:plateGold>])
    .notConsumable(<appliedenergistics2:material:15>)
    .outputs([<appliedenergistics2:material:18>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Printed Silicon
Inscriber.removeRecipe(<appliedenergistics2:material:20>);
forming_press.recipeBuilder()
    .inputs([<metaitem:plateSilicon>])
    .notConsumable(<appliedenergistics2:material:19>)
    .outputs([<appliedenergistics2:material:20>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Calulation Processor
Inscriber.removeRecipe(<appliedenergistics2:material:23>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:16>,
        <appliedenergistics2:material:20>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<appliedenergistics2:material:23>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Engineering Processor
Inscriber.removeRecipe(<appliedenergistics2:material:24>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:17>,
        <appliedenergistics2:material:20>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<appliedenergistics2:material:24>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Logic Processor
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:18>,
        <appliedenergistics2:material:20>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .outputs([<appliedenergistics2:material:22>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Formation Core
recipes.remove(<appliedenergistics2:material:43>);
recipes.addShaped(<appliedenergistics2:material:43>, [
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:gemNetherQuartz>, <appliedenergistics2:material:24>],
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>]
]);
recipes.addShaped(<appliedenergistics2:material:43> * 2, [
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:crystalPureNetherQuartz>, <appliedenergistics2:material:24>],
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:stickAluminium> * 2,
        <appliedenergistics2:material:24> * 2,
        <ore:gemNetherQuartz> | <ore:crystalPureNetherQuartz>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:material:43> * 4])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Annihilation Core
recipes.remove(<appliedenergistics2:material:44>);
recipes.addShaped(<appliedenergistics2:material:44>, [
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:gemCertusQuartz>, <appliedenergistics2:material:24>],
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>]
]);
recipes.addShaped(<appliedenergistics2:material:44> * 2, [
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>],
    [<appliedenergistics2:material:24>, <ore:crystalPureCertusQuartz>, <appliedenergistics2:material:24>],
    [<metaitem:stickAluminium>, <appliedenergistics2:material:24>, <metaitem:stickAluminium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:stickAluminium> * 2,
        <appliedenergistics2:material:24> * 2,
        <ore:gemCertusQuartz> | <ore:crystalPureCertusQuartz>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:material:44> * 4])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Matrix Core
recipes.addShaped(<metaitem:matrix_core>, [
    [<metaitem:stickAluminium>, <appliedenergistics2:material:44>, <metaitem:stickAluminium>],
    [<appliedenergistics2:material:43>, <ore:crystalFluix>, <appliedenergistics2:material:43>],
    [<metaitem:stickAluminium>, <appliedenergistics2:material:44>, <metaitem:stickAluminium>]
]);
recipes.addShaped(<metaitem:matrix_core> * 2, [
    [<metaitem:stickAluminium>, <appliedenergistics2:material:44>, <metaitem:stickAluminium>],
    [<appliedenergistics2:material:43>, <ore:crystalPureFluix>, <appliedenergistics2:material:43>],
    [<metaitem:stickAluminium>, <appliedenergistics2:material:44>, <metaitem:stickAluminium>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:stickAluminium> * 2,
        <appliedenergistics2:material:43>,
        <appliedenergistics2:material:44>,
        <ore:crystalFluix> | <ore:crystalPureFluix>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<metaitem:matrix_core> * 4])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:stickAluminium> * 6,
        <appliedenergistics2:material:24> * 4,
        <ore:gemNetherQuartz> | <ore:crystalPureNetherQuartz>,
        <ore:gemCertusQuartz> | <ore:crystalPureCertusQuartz>,
        <ore:crystalFluix> | <ore:crystalPureFluix>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<metaitem:matrix_core> * 4])
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

# View Cell
recipes.remove(<appliedenergistics2:view_cell>);
recipes.addShaped(<appliedenergistics2:view_cell>, [
    [<metaitem:plateGlass>, <metaitem:plateRedAlloy>, <metaitem:plateGlass>],
    [<metaitem:plateRedAlloy>, <ore:crystalCertusQuartz>, <metaitem:plateRedAlloy>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);

# Blank Pattern
recipes.remove(<appliedenergistics2:material:52>);
recipes.addShaped(<appliedenergistics2:material:52>, [
    [<appliedenergistics2:quartz_glass>, <metaitem:plateGlowstone>, <appliedenergistics2:quartz_glass>],
    [<metaitem:plateGlowstone>, <ore:crystalCertusQuartz>, <metaitem:plateGlowstone>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);
recipes.addShaped(<appliedenergistics2:material:52> * 2, [
    [<appliedenergistics2:quartz_glass>, <metaitem:plateGlowstone>, <appliedenergistics2:quartz_glass>],
    [<metaitem:plateGlowstone>, <ore:crystalPureCertusQuartz>, <metaitem:plateGlowstone>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);

# Storage Housing
recipes.remove(<appliedenergistics2:material:39>);
recipes.addShaped(<appliedenergistics2:material:39>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:plateSteel>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, null, <metaitem:plateSteel>],
    [<metaitem:screwSteel>, <metaitem:plateSteel>, <ore:gtce.tool.hard.hammers>]
]);
recipes.addShaped(<appliedenergistics2:material:39>, [
    [<ore:gtce.tool.hard.hammers>, <metaitem:plateSteel>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, null, <metaitem:plateSteel>],
    [<metaitem:screwSteel>, <metaitem:plateSteel>, <ore:gtce.tool.screwdrivers>]
]);
assembler.recipeBuilder()
    .circuit(3)
    .inputs([
        <metaitem:plateSteel> * 2,
        <metaitem:screwSteel> * 2
    ])
    .outputs([<appliedenergistics2:material:39>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Creative Storage Cell
JEI.hide(<appliedenergistics2:creative_storage_cell>);

# 1k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_1k_storage");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:35>
    ])
    .outputs([<appliedenergistics2:storage_cell_1k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:storage_cell_1k>])
//     .outputs([
//         <appliedenergistics2:material:39>,
//         <appliedenergistics2:material:35>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 4k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_4k_storage");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:36>
    ])
    .outputs([<appliedenergistics2:storage_cell_4k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:storage_cell_4k>])
//     .outputs([
//         <appliedenergistics2:material:39>,
//         <appliedenergistics2:material:36>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 16k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_16k_storage");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:37>
    ])
    .outputs([<appliedenergistics2:storage_cell_16k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:storage_cell_16k>])
//     .outputs([
//         <appliedenergistics2:material:39>,
//         <appliedenergistics2:material:37>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 64k Storage Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/storage_cell_64k_storage");
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:39>,
        <appliedenergistics2:material:38>
    ])
    .outputs([<appliedenergistics2:storage_cell_64k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:storage_cell_64k>])
//     .outputs([
//         <appliedenergistics2:material:39>,
//         <appliedenergistics2:material:38>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 1k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_1k_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:54>
    ])
    .outputs([<appliedenergistics2:fluid_storage_cell_1k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:fluid_storage_cell_1k>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <appliedenergistics2:material:54>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 4k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_4k_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:55>
    ])
    .outputs([<appliedenergistics2:fluid_storage_cell_4k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:fluid_storage_cell_4k>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <appliedenergistics2:material:55>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 16k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_16k_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:56>
    ])
    .outputs([<appliedenergistics2:fluid_storage_cell_16k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:fluid_storage_cell_16k>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <appliedenergistics2:material:56>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 64k Fluid Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k");
recipes.removeByRecipeName("appliedenergistics2:network/cells/fluid_storage_cell_64k_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:1>,
        <appliedenergistics2:material:57>
    ])
    .outputs([<appliedenergistics2:fluid_storage_cell_64k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:fluid_storage_cell_64k>])
//     .outputs([
//         <aeadditions:storage.casing:1>,
//         <appliedenergistics2:material:57>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 2³ Spatial Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_2_cubed");
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_2_cubed_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <appliedenergistics2:material:32>
    ])
    .outputs([<appliedenergistics2:spatial_storage_cell_2_cubed>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:spatial_storage_cell_2_cubed>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <appliedenergistics2:material:32>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 16³ Spatial Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_16_cubed");
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_16_cubed_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <appliedenergistics2:material:33>
    ])
    .outputs([<appliedenergistics2:spatial_storage_cell_16_cubed>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:spatial_storage_cell_16_cubed>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <appliedenergistics2:material:33>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 128³ Spatial Cell
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_128_cubed");
recipes.removeByRecipeName("appliedenergistics2:network/cells/spatial_storage_cell_128_cubed_storage");
packer.recipeBuilder()
    .inputs([
        <aeadditions:storage.casing:0>,
        <appliedenergistics2:material:34>
    ])
    .outputs([<appliedenergistics2:spatial_storage_cell_128_cubed>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
// packer.recipeBuilder()
//     .inputs([<appliedenergistics2:spatial_storage_cell_128_cubed>])
//     .outputs([
//         <aeadditions:storage.casing:0>,
//         <appliedenergistics2:material:34>
//     ])
//     .duration(10)
//     .EUt(7)
//     .buildAndRegister();

# 1k Storage Component
recipes.remove(<appliedenergistics2:material:35>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUlv> * 4,
        <metaitem:plateWroughtIron> * 4,
        <metaitem:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:35>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# 4k Storage Component
recipes.remove(<appliedenergistics2:material:36>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitEv> * 4,
        <metaitem:plateTitanium> * 4,
        <metaitem:dustCertusQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:36>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:circuitEv> * 4,
        <appliedenergistics2:material:35> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:36>])
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

# 16k Storage Component
recipes.remove(<appliedenergistics2:material:37>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 4,
        <metaitem:plateTungstenSteel> * 4,
        <metaitem:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:37>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitIv> * 4,
        <appliedenergistics2:material:36> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:37>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 64k Storage Component
recipes.remove(<appliedenergistics2:material:38>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitLuv> * 4,
        <metaitem:plateRhodiumPlatedPalladium> * 4,
        <metaitem:dustCertusQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:38>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:37> * 4
    ])
    .fluidInputs(<liquid:steel> * 144)
    .outputs([<appliedenergistics2:material:38>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# 1k Fluid Component
recipes.remove(<appliedenergistics2:material:54>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitUlv> * 4,
        <metaitem:plateWroughtIron> * 4,
        <metaitem:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:54>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# 4k Fluid Component
recipes.remove(<appliedenergistics2:material:55>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitEv> * 4,
        <metaitem:plateTitanium> * 4,
        <metaitem:dustNetherQuartz> * 4,
        <appliedenergistics2:material:22>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:55>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:22>,
        <ore:circuitEv> * 4,
        <appliedenergistics2:material:54> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:55>])
    .duration(400)
    .EUt(1920)
    .buildAndRegister();

# 16k Fluid Component
recipes.remove(<appliedenergistics2:material:56>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 4,
        <metaitem:plateTungstenSteel> * 4,
        <metaitem:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:56>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitIv> * 4,
        <appliedenergistics2:material:55> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:56>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 64k Fluid Component
recipes.remove(<appliedenergistics2:material:57>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitLuv> * 4,
        <metaitem:plateRhodiumPlatedPalladium> * 4,
        <metaitem:dustNetherQuartz> * 8,
        <appliedenergistics2:material:24>
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:57>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:56> * 4
    ])
    .fluidInputs(<liquid:stainless_steel> * 144)
    .outputs([<appliedenergistics2:material:57>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# 2³ Spatial Component
recipes.remove(<appliedenergistics2:material:32>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitEv> * 4,
        <metaitem:plateTitanium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:hsla_steel> * 144)
    .outputs([<appliedenergistics2:material:32>])
    .duration(200)
    .EUt(1920)
    .buildAndRegister();

# 16³ Spatial Component
recipes.remove(<appliedenergistics2:material:33>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitIv> * 4,
        <metaitem:plateTungstenSteel> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:33>])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:32> * 4
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:33>])
    .duration(400)
    .EUt(7680)
    .buildAndRegister();

# 128³ Spatial Component
recipes.remove(<appliedenergistics2:material:34>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitLuv> * 4,
        <metaitem:plateRhodiumPlatedPalladium> * 4,
        <metaitem:dustCertusQuartz> * 32,
        <appliedenergistics2:material:23>
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:34>])
    .duration(200)
    .EUt(30720)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:23>,
        <ore:circuitLuv> * 4,
        <appliedenergistics2:material:33> * 4
    ])
    .fluidInputs(<liquid:tungsten_steel> * 144)
    .outputs([<appliedenergistics2:material:34>])
    .duration(400)
    .EUt(30720)
    .buildAndRegister();

# Certus Quartz Cutting Knife
recipes.remove(<appliedenergistics2:certus_quartz_cutting_knife>);
recipes.addShaped(<appliedenergistics2:certus_quartz_cutting_knife>, [
    [<ore:gtce.tool.files>, <metaitem:plateCertusQuartz>, <ore:gtce.tool.hard.hammers>],
    [<ore:crystalCertusQuartz>, <minecraft:stick>, <ore:crystalCertusQuartz>],
    [null, <minecraft:stick>, null]
]);

# Nether Quartz Cutting Knife
recipes.remove(<appliedenergistics2:nether_quartz_cutting_knife>);
recipes.addShaped(<appliedenergistics2:nether_quartz_cutting_knife>, [
    [<ore:gtce.tool.files>, <metaitem:plateNetherQuartz>, <ore:gtce.tool.hard.hammers>],
    [<ore:gemNetherQuartz>, <minecraft:stick>, <ore:gemNetherQuartz>],
    [null, <minecraft:stick>, null]
]);

# Certus Quartz Wrench
recipes.remove(<appliedenergistics2:certus_quartz_wrench>);
recipes.addShaped(<appliedenergistics2:certus_quartz_wrench>, [
    [<metaitem:plateCertusQuartz>, <ore:gtce.tool.hard.hammers>, <metaitem:plateCertusQuartz>],
    [<metaitem:plateCertusQuartz>, <metaitem:plateCertusQuartz>, <metaitem:plateCertusQuartz>],
    [null, <metaitem:plateCertusQuartz>, null]
]);

# Nether Quartz Wrench
recipes.remove(<appliedenergistics2:nether_quartz_wrench>);
recipes.addShaped(<appliedenergistics2:nether_quartz_wrench>, [
    [<metaitem:plateNetherQuartz>, <ore:gtce.tool.hard.hammers>, <metaitem:plateNetherQuartz>],
    [<metaitem:plateNetherQuartz>, <metaitem:plateNetherQuartz>, <metaitem:plateNetherQuartz>],
    [null, <metaitem:plateNetherQuartz>, null]
]);

# Entropy Manipulator
recipes.remove(<appliedenergistics2:entropy_manipulator>);
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
    [null, <appliedenergistics2:material:22>, <ore:crystalFluix>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:24>],
    [<metaitem:stickSteel>, null, null]
]);

# Charged Staff
recipes.remove(<appliedenergistics2:charged_staff>);
recipes.addShaped(<appliedenergistics2:charged_staff>, [
    [null, <appliedenergistics2:material:1>, <appliedenergistics2:material:1>],
    [null, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:1>],
    [<metaitem:stickSteel>, null, null]
]);

# Matter Cannon
recipes.remove(<appliedenergistics2:matter_cannon>);
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
    [<metaitem:plateSteel>, <metaitem:plateSteel>, <appliedenergistics2:material:43>],
    [<appliedenergistics2:material:36>, <appliedenergistics2:dense_energy_cell>, null],
    [<metaitem:plateSteel>, null, null]
]);

# Color Applicator
JEI.removeAndHide(<appliedenergistics2:color_applicator>);

# Wireless Terminal
recipes.remove(<appliedenergistics2:wireless_terminal>);
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [
    [<appliedenergistics2:material:41>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>],
    [<appliedenergistics2:material:24>, <metaitem:matrix_core>, <appliedenergistics2:material:24>],
    [<metaitem:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <metaitem:plateNetherQuartz>]
]);

# Biometric Card
recipes.remove(<appliedenergistics2:biometric_card>);
recipes.addShaped(<appliedenergistics2:biometric_card>, [
    [<appliedenergistics2:material:22>, <metaitem:plateIron>, <metaitem:plateIron>],
    [<metaitem:plateGold>, <metaitem:plateRedAlloy>, <metaitem:plateGold>],
    [null, null, null]
]);

# Memory Card
recipes.remove(<appliedenergistics2:memory_card>);
recipes.addShaped(<appliedenergistics2:memory_card>, [
    [<appliedenergistics2:material:23>, <metaitem:plateIron>, <metaitem:plateIron>],
    [<metaitem:plateGold>, <metaitem:plateRedAlloy>, <metaitem:plateGold>],
    [null, null, null]
]);

# Basic Card
recipes.remove(<appliedenergistics2:material:25>);
recipes.addShaped(<appliedenergistics2:material:25>, [
    [<metaitem:plateGold>, <metaitem:plateAluminium>, null],
    [<metaitem:plateRedAlloy>, <appliedenergistics2:material:23>, <metaitem:plateAluminium>],
    [<metaitem:plateGold>, <metaitem:plateAluminium>, null]
]);

# Capacity Card
recipes.remove(<appliedenergistics2:material:27>);
recipes.addShaped(<appliedenergistics2:material:27>, [
    [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
    [<appliedenergistics2:material:35>, <ore:gemCertusQuartz>, null],
    [null, null, null]
]);

# Crafting Card
recipes.remove(<appliedenergistics2:material:53>);
recipes.addShaped(<appliedenergistics2:material:53>, [
    [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, null],
    [<appliedenergistics2:material:35>, <minecraft:crafting_table>, null],
    [null, null, null]
]);

# Redstone Card
recipes.remove(<appliedenergistics2:material:26>);
recipes.addShaped(<appliedenergistics2:material:26>, [
    [<appliedenergistics2:material:25>, <minecraft:redstone_torch>, null],
    [<minecraft:redstone_torch>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Advanced Card
recipes.remove(<appliedenergistics2:material:28>);
recipes.addShaped(<appliedenergistics2:material:28>, [
    [<metaitem:platePlatinum>, <metaitem:plateAluminium>, null],
    [<metaitem:plateRedAlloy>, <appliedenergistics2:material:23>, <metaitem:plateAluminium>],
    [<metaitem:platePlatinum>, <metaitem:plateAluminium>, null]
]);

# Fuzzy Card
recipes.remove(<appliedenergistics2:material:29>);
recipes.addShaped(<appliedenergistics2:material:29>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],[<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Inverter Card
recipes.remove(<appliedenergistics2:material:31>);
recipes.addShaped(<appliedenergistics2:material:31>, [
    [<appliedenergistics2:material:28>, <metaitem:cover.activity.detector>, null],
    [<metaitem:cover.activity.detector>, <appliedenergistics2:material:23>, null],
    [null, null, null]
]);

# Pattern Expansion Card
recipes.remove(<appliedenergistics2:material:58>);
recipes.addShapeless(<appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:ae2.interface.item>, 
    <ore:ae2.interface.fluid>, <appliedenergistics2:material:23>,
]);
recipes.addShapeless(<appliedenergistics2:material:58>, [
    <appliedenergistics2:material:28>, <ore:ae2.interface.fluid>, 
    <ore:ae2.interface.item>, <appliedenergistics2:material:23>
]);

# Acceleration Card
recipes.remove(<appliedenergistics2:material:30>);
recipes.addShaped(<appliedenergistics2:material:30>, [
    [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, null],
    [<appliedenergistics2:material:22>, <ore:crystalFluix> | <ore:crystalPureFluix>, null],
    [null, null, null]
]);

# Fluix Pearl
recipes.remove(<appliedenergistics2:material:9>);
recipes.addShaped(<appliedenergistics2:material:9>, [
    [<ore:crystalFluix>, <metaitem:plateEnderPearl>, <ore:crystalFluix>],
    [<metaitem:plateEnderPearl>, <minecraft:ender_pearl>, <metaitem:plateEnderPearl>],
    [<ore:crystalFluix>, <metaitem:plateEnderPearl>, <ore:crystalFluix>]
]);
recipes.addShaped(<appliedenergistics2:material:9> * 2, [
    [<ore:crystalPureFluix>, <metaitem:plateEnderPearl>, <ore:crystalPureFluix>],
    [<metaitem:plateEnderPearl>, <minecraft:ender_pearl>, <metaitem:plateEnderPearl>],
    [<ore:crystalPureFluix>, <metaitem:plateEnderPearl>, <ore:crystalPureFluix>]
]);

# Wireless Receiver
recipes.remove(<appliedenergistics2:material:41>);
recipes.addShaped(<appliedenergistics2:material:41>, [
    [<ore:ae2.cable.glass>, <appliedenergistics2:material:9>, <ore:ae2.cable.glass>],
    [<metaitem:sensor.ev>, <metaitem:stickTitanium>, <metaitem:sensor.ev>],
    [<metaitem:plateCertusQuartz>, <ore:circuitEv>, <metaitem:plateCertusQuartz>]
]);

# Wireless Boosting
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>, [
    [<metaitem:dustFluix>, <ore:crystalCertusQuartz>, <metaitem:plateEnderPearl>],
    [<metaitem:plateTitanium>, <metaitem:plateTitanium>, <metaitem:plateTitanium>],
    [null, null, null]
]);

# Annihilation Plane
recipes.remove(<appliedenergistics2:part:300>);
recipes.addShaped(<appliedenergistics2:part:300>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:dustFluix>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:44>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:300>, [
    [<ore:gtce.tool.soft.hammers>, <metaitem:dustFluix>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:44>, <metaitem:plateSteel>]
]);

# Fulid Annihilation Plane
recipes.remove(<appliedenergistics2:part:302>);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:dustLapis>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwStainlessSteel>, <metaitem:dustLapis>, <metaitem:screwSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:44>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:gtce.tool.soft.hammers>, <ore:gemLapis>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwStainlessSteel>, <ore:gemLapis>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:44>, <metaitem:plateStainlessSteel>]
]);

# Formation Plane
recipes.remove(<appliedenergistics2:part:320>);
recipes.addShaped(<appliedenergistics2:part:320>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:dustFluix>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:43>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:320>, [
    [<ore:gtce.tool.soft.hammers>, <metaitem:dustFluix>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwSteel>, <metaitem:dustFluix>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:43>, <metaitem:plateSteel>]
]);

# Fulid Formation Plane
recipes.remove(<appliedenergistics2:part:321>);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:gtce.tool.screwdrivers>, <metaitem:dustLapis>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwStainlessSteel>, <metaitem:dustLapis>, <metaitem:screwSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:43>, <metaitem:plateStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:302>, [
    [<ore:gtce.tool.soft.hammers>, <ore:gemLapis>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwStainlessSteel>, <ore:gemLapis>, <metaitem:screwStainlessSteel>],
    [<metaitem:plateStainlessSteel>, <appliedenergistics2:material:43>, <metaitem:plateStainlessSteel>]
]);

# Certus Quartz Crystal
JEI.removeAndHide(<appliedenergistics2:material>);

# Pure Certus Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed>);
mixer.recipeBuilder()
    .inputs([<metaitem:dustCertusQuartz>, <ore:sand>])
    .outputs([<appliedenergistics2:crystal_seed> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<appliedenergistics2:crystal_seed>])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:10>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Pure Nether Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed:600>);
mixer.recipeBuilder()
    .inputs([<metaitem:dustNetherQuartz>, <ore:sand>])
    .outputs([<appliedenergistics2:crystal_seed:600> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<appliedenergistics2:crystal_seed:600>])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:11>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Pure Fluix Crystal
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
mixer.recipeBuilder()
    .inputs([<metaitem:dustFluix>, <ore:sand>])
    .outputs([<appliedenergistics2:crystal_seed:1200> * 2])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<appliedenergistics2:crystal_seed:1200>])
    .fluidInputs([<liquid:distilled_water> * 144])
    .outputs([<appliedenergistics2:material:12>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Recycle - Storage Housing
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>])
    .outputs([
        <metaitem:dustSteel> * 2,
        <metaitem:dustTinySteel> * 2
    ])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
arc_furnace.recipeBuilder()
    .inputs([<appliedenergistics2:material:39>])
    .fluidInputs([<liquid:oxygen> * 56])
    .outputs([
        <metaitem:ingotSteel> * 2,
        <metaitem:nuggetSteel> * 2
    ])
    .duration(56)
    .EUt(30)
    .buildAndRegister();



########################################
# Blocks
########################################
# Sky Stone
compressor.recipeBuilder()
    .inputs([<ore:compressed3xDustBedrock> * 4])
    .outputs([<appliedenergistics2:sky_stone_block>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();
rock_breaker.recipeBuilder()
    .notConsumable([<appliedenergistics2:sky_stone_block>])
    .outputs([<appliedenergistics2:sky_stone_block>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Sky Stone Block
furnace.remove(<appliedenergistics2:smooth_sky_stone_block>);
electric_blast_furnace.recipeBuilder()
    .inputs([<appliedenergistics2:sky_stone_block>])
    .property("temperature", 2700)
    .outputs([<appliedenergistics2:smooth_sky_stone_block>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Cable Anchor
val anchorIngots_x4 as IItemStack[] = [
    <minecraft:iron_ingot>,
    <metaitem:ingotCopper>,
    <metaitem:ingotAnnealedCopper>,
    <metaitem:ingotTin>,
    <metaitem:ingotLead>,
    <metaitem:ingotNickel>,
    <metaitem:ingotSilver>,
    <metaitem:ingotSteel>
];
val anchorIngots_x6 as IItemStack[] = [
    <metaitem:ingotBronze>,
    <metaitem:ingotBrass>,
    <metaitem:ingotInvar>,
    <metaitem:ingotDarkSteel>
];
val anchorIngots_x8 as IItemStack[] = [
    <metaitem:ingotStainlessSteel>,
    <metaitem:ingotTitanium>
];
for anchorIngot_x4 in anchorIngots_x4 {
    recipes.addShapeless(<appliedenergistics2:part:120> * 4, [anchorIngot_x4, <ore:gtce.tool.knife>]);
    cutter.recipeBuilder()
        .inputs([anchorIngot_x4])
        .fluidInputs([<liquid:lubricant> * 1])
        .outputs([<appliedenergistics2:part:120> * 8])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x4])
        .fluidInputs([<liquid:distilled_water> * 3])
        .outputs([<appliedenergistics2:part:120> * 8])
        .duration(160)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x4])
        .fluidInputs([<liquid:water> * 4])
        .outputs([<appliedenergistics2:part:120> * 8])
        .duration(200)
        .EUt(480)
        .buildAndRegister();
}
for anchorIngot_x6 in anchorIngots_x6 {
    recipes.addShapeless(<appliedenergistics2:part:120> * 6, [anchorIngot_x6, <ore:gtce.tool.knife>]);
    cutter.recipeBuilder()
        .inputs([anchorIngot_x6])
        .fluidInputs([<liquid:lubricant> * 1])
        .outputs([<appliedenergistics2:part:120> * 12])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x6])
        .fluidInputs([<liquid:distilled_water> * 3])
        .outputs([<appliedenergistics2:part:120> * 12])
        .duration(160)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x6])
        .fluidInputs([<liquid:water> * 4])
        .outputs([<appliedenergistics2:part:120> * 12])
        .duration(200)
        .EUt(480)
        .buildAndRegister();
}
for anchorIngot_x8 in anchorIngots_x8 {
    recipes.addShapeless(<appliedenergistics2:part:120> * 8, [anchorIngot_x8, <ore:gtce.tool.knife>]);
    cutter.recipeBuilder()
        .inputs([anchorIngot_x8])
        .fluidInputs([<liquid:lubricant> * 1])
        .outputs([<appliedenergistics2:part:120> * 16])
        .duration(80)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x8])
        .fluidInputs([<liquid:distilled_water> * 3])
        .outputs([<appliedenergistics2:part:120> * 16])
        .duration(160)
        .EUt(480)
        .buildAndRegister();
    cutter.recipeBuilder()
        .inputs([anchorIngot_x8])
        .fluidInputs([<liquid:water> * 4])
        .outputs([<appliedenergistics2:part:120> * 16])
        .duration(200)
        .EUt(480)
        .buildAndRegister();
}

# Quartz Blocks
JEI.removeAndHide(<appliedenergistics2:quartz_block>);
JEI.removeAndHide(<appliedenergistics2:quartz_slab>);
JEI.removeAndHide(<appliedenergistics2:quartz_stairs>);
JEI.removeAndHide(<appliedenergistics2:quartz_pillar>);
JEI.removeAndHide(<appliedenergistics2:quartz_pillar_slab>);
JEI.removeAndHide(<appliedenergistics2:quartz_pillar_stairs>);
JEI.removeAndHide(<appliedenergistics2:chiseled_quartz_block>);
JEI.removeAndHide(<appliedenergistics2:chiseled_quartz_slab>);
JEI.removeAndHide(<appliedenergistics2:chiseled_quartz_stairs>);

# Fluix Block
recipes.remove(<appliedenergistics2:fluix_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalFluix> * 4])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(300)
    .EUt(480)
    .buildAndRegister();
compressor.recipeBuilder()
    .inputs([<ore:crystalPureFluix> * 8])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(300)
    .EUt(480)
    .buildAndRegister();

# Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder()
    .inputs([<metaitem:stickNetherQuartz> | <metaitem:stickCertusQuartz> | <metaitem:stickQuartzite>])
    .outputs([<appliedenergistics2:part:140>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Glass Cable
recipes.remove(<appliedenergistics2:part:16> * 4);
recipes.removeByRecipeName("appliedenergistics2:network/cables/glass_fluix_clean");
recipes.addShaped(<appliedenergistics2:part:16> * 6, [
    [<metaitem:stickAluminium>, <metaitem:dustFluix>, <metaitem:stickAluminium>],
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>],
    [<metaitem:stickAluminium>, <metaitem:dustFluix>, <metaitem:stickAluminium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:stickAluminium> * 2,
        <appliedenergistics2:part:140> * 3,
    ])
    .fluidInputs([<liquid:fluix> * 144])
    .outputs([<appliedenergistics2:part:16> * 6])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:stickAluminium> * 2,
        <appliedenergistics2:part:140> * 3,
        <metaitem:dustFluix>,
    ])
    .outputs([<appliedenergistics2:part:16> * 6])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.glass.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:16>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.glass>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([glassCables[i]])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

# Covered Cable
recipes.removeByRecipeName("appliedenergistics2:network/cables/covered_fluix");
recipes.removeByRecipeName("appliedenergistics2:network/cables/covered_fluix_clean");
recipes.addShaped(<appliedenergistics2:part:36>, [
    [<metaitem:plateStyreneButadieneRubber>, <metaitem:plateStyreneButadieneRubber>, <metaitem:plateStyreneButadieneRubber>],
    [<ore:ae2.cable.glass>, <ore:ae2.cable.glass>, <ore:ae2.cable.glass>],
    [<metaitem:plateStyreneButadieneRubber>, <metaitem:plateStyreneButadieneRubber>, <metaitem:plateStyreneButadieneRubber>]
]);
recipes.addShaped(<appliedenergistics2:part:36>, [
    [<metaitem:plateSiliconeRubber>, <metaitem:plateSiliconeRubber>, <metaitem:plateSiliconeRubber>],
    [<ore:ae2.cable.glass>, <ore:ae2.cable.glass>, <ore:ae2.cable.glass>],
    [<metaitem:plateSiliconeRubber>, <metaitem:plateSiliconeRubber>, <metaitem:plateSiliconeRubber>]
]);
recipes.addShaped(<appliedenergistics2:part:36>, [
    [<metaitem:plateRubber>, <metaitem:plateRubber>, <metaitem:plateRubber>],
    [<ore:ae2.cable.glass>, <ore:ae2.cable.glass>, <ore:ae2.cable.glass>],
    [<metaitem:plateRubber>, <metaitem:plateRubber>, <metaitem:plateRubber>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 108])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:silicone_rubber> * 216])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([<appliedenergistics2:part:16> * 3])
    .fluidInputs([<liquid:rubber> * 432])
    .outputs([<appliedenergistics2:part:36>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.covered.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:36>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.covered>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([coveredCables[i]])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

# Smart Cable
recipes.removeByRecipeName("appliedenergistics2:network/cables/smart_fluix");
recipes.removeByRecipeName("appliedenergistics2:network/cables/smart_fluix_clean");
recipes.addShaped(<appliedenergistics2:part:56>, [
    [null, <minecraft:glowstone_dust>, null],
    [<minecraft:redstone>, <appliedenergistics2:part:36>, <minecraft:redstone>],
    [null, <minecraft:glowstone_dust>, null]
]);
recipes.addShaped(<appliedenergistics2:part:56>, [
    [null, <minecraft:redstone>, null],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:36>, <minecraft:glowstone_dust>],
    [null, <minecraft:redstone>, null]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:36>
    ])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 108])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:silicone_rubber> * 216])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 3
    ])
    .fluidInputs([<liquid:rubber> * 432])
    .outputs([<appliedenergistics2:part:56>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.smart.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:56>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.smart>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([smartCables[i]])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}


# Dense Covered Cable
recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_covered_fluix");
recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_covered_fluix_clean");
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:36> * 4])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 432])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:silicone_rubber> * 864])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(3)
    .inputs([<appliedenergistics2:part:16> * 12])
    .fluidInputs([<liquid:rubber> * 1728])
    .outputs([<appliedenergistics2:part:516>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.dense.covered.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:516>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.dense.covered>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([denseCoveredCables[i]])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

# Dense Smart Cable
recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_smart_fluix");
recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_smart_fluix_clean");
recipes.addShaped(<appliedenergistics2:part:76>, [
    [null, <minecraft:glowstone_dust>, null],
    [<minecraft:redstone>, <appliedenergistics2:part:516>, <minecraft:redstone>],
    [null, <minecraft:glowstone_dust>, null]
]);
recipes.addShaped(<appliedenergistics2:part:76>, [
    [null, <minecraft:redstone>, null],
    [<minecraft:glowstone_dust>, <appliedenergistics2:part:516>, <minecraft:glowstone_dust>],
    [null, <minecraft:redstone>, null]
]);
assembler.recipeBuilder()
    .circuit(4)
    .inputs([<appliedenergistics2:part:56> * 4])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:516>
    ])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:36> * 4
    ])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 432])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:silicone_rubber> * 864])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
assembler.recipeBuilder()
    .circuit(4)
    .inputs([
        <minecraft:redstone>,
        <minecraft:glowstone_dust>,
        <appliedenergistics2:part:16> * 12
    ])
    .fluidInputs([<liquid:rubber> * 1728])
    .outputs([<appliedenergistics2:part:76>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
chemical_bath.recipeBuilder()
    .inputs([<ore:ae2.cable.dense.smart.colors>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<appliedenergistics2:part:76>])
    .duration(8)
    .EUt(480)
    .buildAndRegister();
for i in 0 .. 16 {
    chemical_bath.recipeBuilder()
        .inputs([<ore:ae2.cable.dense.smart>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([denseSmartCables[i]])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}

# ME Controller
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
    .inputs([
        <appliedenergistics2:material:24> * 2,
        <ore:circuitHv> * 2,
        <metaitem:plateTitanium> * 4,
        <appliedenergistics2:fluix_block>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:controller>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:blockGlass>,
        <metaitem:dustCertusQuartz> | <metaitem:dustQuartzite>
    ])
    .outputs([<appliedenergistics2:quartz_glass>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Vibrant Quartz Glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
    [<minecraft:glowstone_dust>, <metaitem:plateGlowstone>, <minecraft:glowstone_dust>],
    [<metaitem:plateGlowstone>, <appliedenergistics2:quartz_glass>, <metaitem:plateGlowstone>],
    [<minecraft:glowstone_dust>, <metaitem:plateGlowstone>, <minecraft:glowstone_dust>]
]);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
    [<metaitem:stickAluminium>, <metaitem:dustAluminium>, <metaitem:stickAluminium>],
    [<metaitem:dustAluminium>, <minecraft:glowstone>, <metaitem:dustAluminium>],
    [<metaitem:stickAluminium>, <metaitem:dustAluminium>, <metaitem:stickAluminium>]
]);

# Quartz Fixture
recipes.remove(<appliedenergistics2:quartz_fixture>);
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, [
    <ore:gemCertusQuartz>, <metaitem:stickAluminium>
]);

# Charger
JEI.removeAndHide(<appliedenergistics2:charger>);

# Security Terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [
    [<metaitem:plateSteel>, <ore:chestWood>, <metaitem:plateSteel>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:material:35>, <ore:ae2.cable.glass>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>]
]);

# Quantum Ring
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [
    [<metaitem:plateTitanium>, <appliedenergistics2:material:22>, <metaitem:plateTitanium>],
    [<metaitem:matrix_core>, <appliedenergistics2:dense_energy_cell>, <ore:ae2.cable.glass>],
    [<metaitem:plateTitanium>, <appliedenergistics2:material:22>, <metaitem:plateTitanium>]
]);

# Quantum Link
recipes.remove(<appliedenergistics2:quantum_link>);
recipes.addShaped(<appliedenergistics2:quantum_link>, [
    [<metaitem:plateGlass>, <ore:pearlFluix>, <metaitem:plateGlass>],
    [<ore:pearlFluix>, <appliedenergistics2:quartz_vibrant_glass>, <ore:pearlFluix>],
    [<metaitem:plateGlass>, <ore:pearlFluix>, <metaitem:plateGlass>]
]);

# Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
    [<metaitem:plateGlass>, <ore:ae2.cable.glass>, <metaitem:plateGlass>],
    [<metaitem:dustFluix>, <ore:crystalFluix>, <metaitem:dustFluix>],
    [<metaitem:plateGlass>, <ore:ae2.cable.glass>, <metaitem:plateGlass>]
]);

# IO Port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
    [<metaitem:plateGlass>, <metaitem:plateGlass>, <metaitem:plateGlass>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:io_port>, <ore:ae2.cable.glass>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);

# Spatial IO Port
recipes.remove(<appliedenergistics2:spatial_io_port>);
recipes.addShaped(<appliedenergistics2:io_port>, [
    [<metaitem:plateGlass>, <metaitem:plateGlass>, <metaitem:plateGlass>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:drive>, <ore:ae2.cable.glass>],
    [<metaitem:plateSteel>, <metaitem:matrix_core>, <metaitem:plateSteel>]
]);

# ME Chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<metaitem:plateSteel>, <ore:circuitHv>, <metaitem:plateSteel>],
    [<ore:ae2.cable.glass>, <ore:chestWood>, <ore:ae2.cable.glass>],
    [<metaitem:plateSteel>, <ore:circuitHv>, <metaitem:plateSteel>]
]);

# ME Drive
recipes.remove(<appliedenergistics2:drive>);
recipes.addShaped(<appliedenergistics2:drive>, [
    [<metaitem:plateTitanium>, <metaitem:matrix_core>, <metaitem:plateTitanium>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:chest>, <ore:ae2.cable.glass>],
    [<metaitem:plateTitanium>, <ore:circuitHv>, <metaitem:plateTitanium>]
]);

# ME Interface
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.addShaped(<appliedenergistics2:interface>, [
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>],
    [<metaitem:matrix_core>, <gregtech:machine_casing:3>, <metaitem:matrix_core>],
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <gregtech:machine_casing:3>,
        <metaitem:matrix_core>,
        <metaitem:plateGlass>,
        <metaitem:plateSteel> * 2
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:interface>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# ME Fluid Interface
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
    [<metaitem:plateStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateStainlessSteel>],
    [<metaitem:matrix_core>, <gregtech:machine_casing:3>, <metaitem:matrix_core>],
    [<metaitem:plateStainlessSteel>, <metaitem:plateGlass>, <metaitem:plateStainlessSteel>]
]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <gregtech:machine_casing:3>,
        <metaitem:matrix_core>,
        <metaitem:plateGlass>,
        <metaitem:plateStainlessSteel> * 2
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:fluid_interface>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Cell Workbench
recipes.remove(<appliedenergistics2:cell_workbench>);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [
    [<ore:wool> | <ore:blockWool>, <metaitem:cover.screen>, <ore:wool> | <ore:blockWool>],
    [<metaitem:plateAluminium>, <appliedenergistics2:material:23>, <metaitem:plateAluminium>],
    [<metaitem:plateAluminium>, <metaitem:plateAluminium>, <metaitem:plateAluminium>]
]);

# Matter Condenser
recipes.remove(<appliedenergistics2:condenser>);
recipes.addShaped(<appliedenergistics2:condenser>, [
    [<metaitem:plateSteel>, <metaitem:electric.piston.hv>, <metaitem:plateSteel>],
    [<metaitem:electric.piston.hv>, <metaitem:hull.hv>, <metaitem:electric.piston.hv>],
    [<metaitem:plateSteel>, <metaitem:electric.piston.hv>, <metaitem:plateSteel>]
]);

# Energy Acceptor
recipes.remove(<appliedenergistics2:energy_acceptor>);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>],
    [<metaitem:plateGlass>, <ore:crystalFluix>, <metaitem:plateGlass>],
    [<metaitem:plateSteel>, <metaitem:plateGlass>, <metaitem:plateSteel>]
]);

# Vibration Chamber
recipes.remove(<appliedenergistics2:vibration_chamber>);
assembler.recipeBuilder()
    .inputs([
        <ore:circuitHv> * 2,
        <ore:cableGtSingleGold> * 2,
        <metaitem:wireGtDoubleKanthal> * 4,
        <metaitem:plateSteel> * 7
    ])
    .outputs([<appliedenergistics2:vibration_chamber>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Energy Cell
recipes.remove(<appliedenergistics2:energy_cell>);
recipes.addShaped(<appliedenergistics2:energy_cell>, [
    [<metaitem:plateFluix>, <ore:circuitHv>, <metaitem:plateFluix>],
    [<ore:ae2.cable.covered>, <ore:batteryHv>, <ore:ae2.cable.covered>],
    [<metaitem:plateFluix>, <ore:cableGtOctalAluminium>, <metaitem:plateFluix>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:plateFluix> * 2,
        <ore:batteryHv>,
        <ore:circuitHv>,
        <ore:ae2.cable.covered>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:energy_cell>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Dense Energy Cell
recipes.remove(<appliedenergistics2:dense_energy_cell>);
recipes.addShaped(<appliedenergistics2:dense_energy_cell>, [
    [<appliedenergistics2:energy_cell>, <ore:circuitEv>, <appliedenergistics2:energy_cell>],
    [<ore:ae2.cable.dense.covered>, <metaitem:matrix_core>, <ore:ae2.cable.dense.covered>],
    [<appliedenergistics2:energy_cell>, <metaitem:battery_buffer.ev.16>, <appliedenergistics2:energy_cell>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:energy_cell> * 2,
        <metaitem:battery_buffer.ev.16>,
        <metaitem:matrix_core>,
        <ore:circuitEv>,
        <ore:ae2.cable.dense.covered>
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:dense_energy_cell>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Crafting Unit
recipes.remove(<appliedenergistics2:crafting_unit>);
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
    [<metaitem:plateSteel>, <appliedenergistics2:material:22>, <metaitem:plateSteel>],
    [<ore:circuitHv>, <appliedenergistics2:material:24>, <ore:circuitHv>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:23>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <appliedenergistics2:material:22>,
        <appliedenergistics2:material:24>,
        <appliedenergistics2:material:23>,
        <ore:circuitHv>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<appliedenergistics2:crafting_unit>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Crafting Co-Processing Unit
recipes.remove(<appliedenergistics2:crafting_accelerator>);
recipes.addShapeless(<appliedenergistics2:crafting_accelerator>, [
    <appliedenergistics2:crafting_unit>,
    <appliedenergistics2:material:23>,
    <appliedenergistics2:material:22>,
    <appliedenergistics2:material:24>
]);

# Crafting Monitor
recipes.remove(<appliedenergistics2:crafting_monitor>);
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:part:400>
    ])
    .outputs([<appliedenergistics2:crafting_monitor>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_monitor>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:part:400>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Crafting Storage 1k
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:35>
    ])
    .outputs([<appliedenergistics2:crafting_storage_1k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_storage_1k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:35>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Crafting Storage 4k
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:36>
    ])
    .outputs([<appliedenergistics2:crafting_storage_4k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_storage_4k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:36>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Crafting Storage 16k
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:37>
    ])
    .outputs([<appliedenergistics2:crafting_storage_16k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_storage_16k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:37>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Crafting Storage 64k
recipes.remove(<appliedenergistics2:crafting_storage_64k>);
packer.recipeBuilder()
    .inputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:38>
    ])
    .outputs([<appliedenergistics2:crafting_storage_64k>])
    .duration(10)
    .EUt(7)
    .buildAndRegister();
packer.recipeBuilder()
    .inputs([<appliedenergistics2:crafting_storage_64k>])
    .outputs([
        <appliedenergistics2:crafting_unit>,
        <appliedenergistics2:material:38>
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Molecular Assembler
recipes.remove(<appliedenergistics2:molecular_assembler>);
assembler.recipeBuilder()
    .inputs([
        <metaitem:plateGlass> * 2,
        <ore:circuitHv> * 2,
        <metaitem:conveyor.module.hv> * 2,
        <metaitem:robot.arm.hv> * 2,
        <metaitem:plateSteel> * 4
    ])
    .fluidInputs([<liquid:plastic> * 144])
    .outputs([<appliedenergistics2:molecular_assembler>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Light Detecting Fixture
recipes.remove(<appliedenergistics2:light_detector>);
recipes.addShapeless(<appliedenergistics2:light_detector>, [
    <ore:gemChargedCertusQuartz>, <metaitem:stickIron>
]);

# Illuminated Panel
recipes.remove(<appliedenergistics2:part:180>);
recipes.addShaped(<appliedenergistics2:part:180>, [
    [null, <metaitem:plateGlowstone>, null],
    [<metaitem:plateSteel>, <metaitem:plateRedAlloy>, <metaitem:cover.screen>],
    [null, <metaitem:plateGlowstone>, null]
]);

# Terminal
recipes.remove(<appliedenergistics2:part:380>);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<metaitem:stickSteel>, <ore:gtce.tool.screwdrivers>, <metaitem:stickSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateSteel>],
    [<metaitem:stickSteel>,  <metaitem:screwSteel>, <metaitem:stickSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:380>, [
    [<metaitem:stickSteel>, <metaitem:screwSteel>, <metaitem:stickSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateSteel>],
    [<metaitem:stickSteel>, <ore:gtce.tool.screwdrivers>, <metaitem:stickSteel>]
]);

# Fluid Terminal
recipes.remove(<appliedenergistics2:part:520>);
recipes.addShaped(<appliedenergistics2:part:520>, [
    [<metaitem:stickStainlessSteel>, <ore:gtce.tool.screwdrivers>, <metaitem:stickStainlessSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateStainlessSteel>],
    [<metaitem:stickStainlessSteel>,  <metaitem:screwStainlessSteel>, <metaitem:stickStainlessSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:520>, [
    [<metaitem:stickStainlessSteel>, <metaitem:screwStainlessSteel>, <metaitem:stickStainlessSteel>],
    [<appliedenergistics2:part:180>, <ore:circuitHv>, <metaitem:plateStainlessSteel>],
    [<metaitem:stickStainlessSteel>, <ore:gtce.tool.screwdrivers>, <metaitem:stickStainlessSteel>]
]);

# Crafting Terminal
recipes.remove(<appliedenergistics2:part:360>);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwSteel>, <metaitem:workbench>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:360>, [
    [<ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwSteel>, <metaitem:workbench>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);

# Interface Terminal
recipes.remove(<appliedenergistics2:part:480>);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwSteel>, <ore:ae2.interface.item>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:480>, [
    [<ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwSteel>, <ore:ae2.interface.item>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);

# P2P Tunnel
recipes.remove(<appliedenergistics2:part:460>);
recipes.addShaped(<appliedenergistics2:part:460>, [
    [<appliedenergistics2:material:24>, <metaitem:plateAluminium>, <appliedenergistics2:material:24>],
    [<metaitem:plateAluminium>, <appliedenergistics2:part:180>, <metaitem:plateAluminium>],
    [<ore:crystalPureFluix>, <ore:crystalPureFluix>, <ore:crystalPureFluix>]
]);

# Pattrern Terminal
recipes.remove(<appliedenergistics2:part:340>);
recipes.addShaped(<appliedenergistics2:part:340>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:380>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:screwSteel>, <appliedenergistics2:material:52>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);
recipes.addShaped(<appliedenergistics2:part:340>, [
    [<ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:380>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:screwSteel>, <appliedenergistics2:material:52>, <metaitem:screwSteel>],
    [<metaitem:plateSteel>, <appliedenergistics2:material:24>, <metaitem:plateSteel>]
]);

# Extended Processing Pattrern Terminal
recipes.remove(<appliedenergistics2:part:341>);
recipes.addShaped(<appliedenergistics2:part:341>, [
    [<ore:gtce.tool.screwdrivers>, <appliedenergistics2:part:340>, <ore:gtce.tool.soft.hammers>],
    [<metaitem:plateTitanium>, <appliedenergistics2:material:52>, <metaitem:plateTitanium>],
    [<metaitem:plateTitanium>, <appliedenergistics2:material:24>, <metaitem:plateTitanium>]
]);
recipes.addShaped(<appliedenergistics2:part:341>, [
    [<ore:gtce.tool.soft.hammers>, <appliedenergistics2:part:340>, <ore:gtce.tool.screwdrivers>],
    [<metaitem:plateTitanium>, <appliedenergistics2:material:52>, <metaitem:plateTitanium>],
    [<metaitem:plateTitanium>, <appliedenergistics2:material:24>, <metaitem:plateTitanium>]
]);

# Wireless Access Point
recipes.remove(<appliedenergistics2:wireless_access_point>);
recipes.addShaped(<appliedenergistics2:wireless_access_point>, [
    [null, <appliedenergistics2:material:41>, null],
    [null, <appliedenergistics2:material:23>, null],
    [null, <ore:ae2.cable.glass>, null]
]);

# Level Emitter
recipes.remove(<appliedenergistics2:part:280>);
recipes.addShaped(<appliedenergistics2:part:280>, [
    [null, <metaitem:plateSteel>, null],
    [<ore:ae2.cable.glass>, <minecraft:redstone_torch>, <ore:ae2.cable.glass>],
    [null, <metaitem:plateSteel>, null]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:redstone_torch>,
        <ore:ae2.cable.glass>,
        <metaitem:plateSteel>
    ])
    .outputs([<appliedenergistics2:part:280>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Fluid Level Emitter
recipes.remove(<appliedenergistics2:part:281>);
recipes.addShaped(<appliedenergistics2:part:281>, [
    [null, <metaitem:plateStainlessSteel>, null],
    [<ore:ae2.cable.glass>, <minecraft:redstone_torch>, <ore:ae2.cable.glass>],
    [null, <metaitem:plateStainlessSteel>, null]
]);
assembler.recipeBuilder()
    .circuit(2)
    .inputs([
        <minecraft:redstone_torch>,
        <ore:ae2.cable.glass>,
        <metaitem:plateStainlessSteel>
    ])
    .outputs([<appliedenergistics2:part:281>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Storage Bus
recipes.remove(<appliedenergistics2:part:220>);
recipes.addShaped(<appliedenergistics2:part:220>, [
    [<metaitem:plateSteel>, <ore:gtce.tool.soft.hammers>, <metaitem:plateSteel>],
    [<metaitem:conveyor.module.hv>, <ore:ae2.interface.item>, <metaitem:conveyor.module.hv>],
    [<metaitem:plateSteel>, <metaitem:item_filter>, <metaitem:plateSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:conveyor.module.hv>,
        <metaitem:item_filter>,
        <ore:ae2.interface.item>,
        <metaitem:plateSteel> * 2
    ])
    .outputs([<appliedenergistics2:part:220>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Fluid Storage Bus
recipes.remove(<appliedenergistics2:part:221>);
recipes.addShaped(<appliedenergistics2:part:221>, [
    [<metaitem:plateStainlessSteel>, <ore:gtce.tool.soft.hammers>, <metaitem:plateStainlessSteel>],
    [<metaitem:electric.pump.hv>, <ore:ae2.interface.fluid>, <metaitem:electric.pump.hv>],
    [<metaitem:plateStainlessSteel>, <metaitem:fluid_filter>, <metaitem:plateStainlessSteel>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:electric.pump.hv>,
        <metaitem:fluid_filter>,
        <ore:ae2.interface.fluid>,
        <metaitem:plateStainlessSteel> * 2
    ])
    .outputs([<appliedenergistics2:part:221>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# OreDict Storage Bus
recipes.remove(<appliedenergistics2:part:222>);
recipes.addShaped(<appliedenergistics2:part:222>, [
    [<metaitem:plateTitanium>, <ore:gtce.tool.soft.hammers>, <metaitem:plateTitanium>],
    [<metaitem:conveyor.module.hv>, <ore:ae2.interface.item>, <metaitem:conveyor.module.hv>],
    [<metaitem:plateTitanium>, <metaitem:ore_dictionary_filter>, <metaitem:plateTitanium>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:conveyor.module.hv>,
        <metaitem:ore_dictionary_filter>,
        <ore:ae2.interface.item>,
        <metaitem:plateTitanium> * 2
    ])
    .outputs([<appliedenergistics2:part:222>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Toggle Bus
recipes.remove(<appliedenergistics2:part:80>);
recipes.addShapeless(<appliedenergistics2:part:80>, [<appliedenergistics2:part:100>]);
recipes.addShaped(<appliedenergistics2:part:80>, [
    [null, <metaitem:plateRedAlloy>, null],
    [<ore:ae2.cable.glass>, <minecraft:lever>, <ore:ae2.cable.glass>],
    [null, <metaitem:plateRedAlloy>, null]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:lever>,
        <ore:ae2.cable.glass>,
        <metaitem:plateRedAlloy>
    ])
    .outputs([<appliedenergistics2:part:80>])
    .duration(20)
    .EUt(7680)
    .buildAndRegister();

# Inverted Toggle Bus
recipes.remove(<appliedenergistics2:part:100>);
recipes.addShapeless(<appliedenergistics2:part:100>, [<appliedenergistics2:part:80>]);

# Import Bus
recipes.remove(<appliedenergistics2:part:240>);
JEI.addDescription(<appliedenergistics2:part:240>, I18n.format("modpack.ae2.bus_item.tooltip.1"));
<appliedenergistics2:part:240>.addTooltip(format.green(I18n.format("modpack.ae2.bus_item.tooltip.1")));

# Fluid Import Bus
recipes.remove(<appliedenergistics2:part:241>);
JEI.addDescription(<appliedenergistics2:part:241>, I18n.format("modpack.ae2.bus_fluid.tooltip.1"));
<appliedenergistics2:part:241>.addTooltip(format.green(I18n.format("modpack.ae2.bus_fluid.tooltip.1")));

# Export Bus
recipes.remove(<appliedenergistics2:part:260>);
JEI.addDescription(<appliedenergistics2:part:260>, I18n.format("modpack.ae2.bus_item.tooltip.1"));
<appliedenergistics2:part:260>.addTooltip(format.green(I18n.format("modpack.ae2.bus_item.tooltip.1")));

# Fluid Export Bus
recipes.remove(<appliedenergistics2:part:261>);
JEI.addDescription(<appliedenergistics2:part:261>, I18n.format("modpack.ae2.bus_fluid.tooltip.1"));
<appliedenergistics2:part:261>.addTooltip(format.green(I18n.format("modpack.ae2.bus_fluid.tooltip.1")));
