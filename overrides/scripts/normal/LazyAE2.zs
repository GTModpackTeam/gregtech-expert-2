#packmode normal
# Imports
import mods.jei.JEI;

JEI.hideCategory("threng.agg");
JEI.hideCategory("threng.purify");
JEI.hideCategory("threng.etch");
JEI.hideCategory("threng.energize");



########################################
# Items
########################################
# Fluix Steel Ingot
furnace.remove(<threng:material>);
electric_blast_furnace.recipeBuilder()
    .inputs([<threng:material:1>])
    .property("temperature", 1700)
    .outputs([<threng:material>])
    .duration(300)
    .EUt(480)
    .buildAndRegister();
electric_blast_furnace.recipeBuilder()
    .inputs([<threng:material:1>])
    .fluidInputs([<liquid:oxygen> * 200])
    .property("temperature", 1700)
    .outputs([<threng:material>])
    .duration(200)
    .EUt(480)
    .buildAndRegister();

# Carbonic Fluix Complex
recipes.remove(<threng:material:1>);
mixer.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:dustFluix>,
        <metaitem:dustSteel>,
        <appliedenergistics2:material:45>
    ])
    .outputs([<threng:material:1>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Fluix-Plated Iron Ingot
JEI.hide(<threng:material:2>);

# Coal Dust
<ore:dustCoal>.remove(<threng:material:3>);
JEI.hide(<threng:material:3>);

# Fluix Logic Unit
JEI.removeAndHide(<threng:material:4>);

# Resonating Crystal
JEI.hide(<threng:material:5>);

# Massively Parallel Processor
JEI.hide(<threng:material:6>);

# Speculation Cores
JEI.hide(<threng:material:7>);
JEI.removeAndHide(<threng:material:8>);
JEI.removeAndHide(<threng:material:9>);
JEI.removeAndHide(<threng:material:10>);
JEI.removeAndHide(<threng:material:11>);
JEI.removeAndHide(<threng:material:12>);
JEI.removeAndHide(<threng:material:13>);

# Speculation Processor
JEI.hide(<threng:material:14>);



########################################
# Blocks
########################################
# Fluix Aggregator
JEI.removeAndHide(<threng:machine>);

# Pulse Centrifuge
JEI.removeAndHide(<threng:machine:1>);

# ME Circuit Etcher
JEI.removeAndHide(<threng:machine:2>);

# Preemptive Assembly Unit
recipes.remove(<threng:machine:3>);
recipes.addShaped(<threng:machine:3>, [
    [<threng:material>, <ore:ae2.interface.item>, <threng:material>],
    [<appliedenergistics2:crafting_accelerator>, <metaitem:matrix_core>, <appliedenergistics2:crafting_accelerator>],
    [<threng:material>, <appliedenergistics2:material:24>, <threng:material>]
]);

# Level Maintainer
recipes.remove(<threng:machine:4>);
recipes.addShaped(<threng:machine:4>, [
    [<threng:material>, <appliedenergistics2:part:280>, <threng:material>],
    [<appliedenergistics2:material:22>, <metaitem:matrix_core>, <appliedenergistics2:material:22>],
    [<threng:material>, <appliedenergistics2:material:53>, <threng:material>]
]);

# Crystal Energizer
JEI.removeAndHide(<threng:machine:5>);

# Mass Assembler Frame
recipes.remove(<threng:big_assembler>);
recipes.addShaped(<threng:big_assembler> * 4, [
    [<threng:material>, <appliedenergistics2:smooth_sky_stone_block>, <threng:material>],
    [<appliedenergistics2:smooth_sky_stone_block>, <gregtech:machine:1647>, <appliedenergistics2:smooth_sky_stone_block>],
    [<threng:material>, <appliedenergistics2:smooth_sky_stone_block>, <threng:material>]
]);

# Mass Assembler Controller
recipes.remove(<threng:big_assembler:2>);
recipes.addShaped(<threng:big_assembler:2>, [
    [<threng:big_assembler>, <appliedenergistics2:molecular_assembler>, <threng:big_assembler>],
    [<ore:ae2.cable.glass>, <metaitem:matrix_core>, <ore:ae2.cable.glass>],
    [<threng:big_assembler>, <ore:ae2.interface.item>, <threng:big_assembler>]
]);

# Pattern Provider
recipes.remove(<threng:big_assembler:3>);
recipes.addShaped(<threng:big_assembler:3>, [
    [<threng:big_assembler>, <appliedenergistics2:material:35>, <threng:big_assembler>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:material:24>, <ore:ae2.cable.glass>],
    [<threng:big_assembler>, <ore:ae2.interface.item>, <threng:big_assembler>]
]);

# Crafting Co-Processor
recipes.remove(<threng:big_assembler:4>);
recipes.addShaped(<threng:big_assembler:4>, [
    [<threng:big_assembler>, <appliedenergistics2:molecular_assembler>, <threng:big_assembler>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:material:24>, <ore:ae2.cable.glass>],
    [<threng:big_assembler>, <appliedenergistics2:crafting_accelerator>, <threng:big_assembler>]
]);

# Crafting Co-Processor
recipes.remove(<threng:big_assembler:5>);
recipes.addShaped(<threng:big_assembler:5>, [
    [<threng:big_assembler>, <metaitem:robot.arm.hv>, <threng:big_assembler>],
    [<ore:ae2.cable.glass>, <appliedenergistics2:io_port>, <ore:ae2.cable.glass>],
    [<threng:big_assembler>, <appliedenergistics2:chest>, <threng:big_assembler>]
]);
