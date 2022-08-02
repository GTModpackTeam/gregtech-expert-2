#packmode normal
# Imports
import mods.jei.JEI;
import mods.zenutils.I18n;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;



########################################
# Fluid
########################################
# Naquadah Rocket Fuel
mixer.recipeBuilder()
    .fluidInputs([
        <liquid:naquadah> * 1296,
        <liquid:rocket_fuel> * 5000
    ])
    .fluidOutputs([<liquid:naquadah_rocket_fuel> * 6000])
    .duration(20)
    .EUt(1920)
    .buildAndRegister();
combustion_generator.recipeBuilder()
    .fluidInputs([<liquid:naquadah_rocket_fuel>])
    .duration(500)
    .EUt(32)
    .buildAndRegister();

# Certus Quartz (Override)
extractor.findRecipe(30, [<metaitem:blockCertusQuartz>], null).remove();
extractor.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .fluidOutputs([<liquid:certus_quartz> * 576])
    .duration(80)
    .EUt(30)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<ore:crystalPureCertusQuartz>])
    .fluidOutputs([<liquid:certus_quartz> * 72])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Charged Certus Quartz Crystal
electrolyzer.recipeBuilder()
    .fluidInputs([<liquid:certus_quartz> * 144])
    .fluidOutputs([<liquid:charged_certus_quartz> * 144])
    .duration(100)
    .EUt(480)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<appliedenergistics2:material:1>])
    .fluidOutputs([<liquid:charged_certus_quartz> * 144])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Fluix
mixer.recipeBuilder()
    .inputs([
        <minecraft:redstone>,
        <metaitem:dustNetherQuartz>
    ])
    .fluidInputs([<liquid:charged_certus_quartz> * 144])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <minecraft:redstone>,
        <metaitem:dustChargedCertusQuartz>
    ])
    .fluidInputs([<liquid:nether_quartz> * 144])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustNetherQuartz>,
        <metaitem:dustChargedCertusQuartz>
    ])
    .fluidInputs([<liquid:redstone> * 144])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20)
    .EUt(480)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<ore:crystalPureFluix>])
    .fluidOutputs([<liquid:fluix> * 72])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<ore:crystalFluix>])
    .fluidOutputs([<liquid:fluix> * 144])
    .duration(20)
    .EUt(7)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs([<appliedenergistics2:fluix_block>])
    .fluidOutputs([<liquid:fluix> * 576])
    .duration(80)
    .EUt(30)
    .buildAndRegister();



########################################
# Items
########################################
# Tiny Pile of Ashes (Bookshelf Override)
arc_furnace.findRecipe(30, [<minecraft:bookshelf:0>], [<liquid:oxygen>]).remove();
arc_furnace.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .fluidInputs([<liquid:oxygen>])
    .outputs([<metaitem:dustTinyAsh> * 16])
    .duration(1)
    .EUt(30)
    .buildAndRegister();

# Chad & Wood Pulp (Bookshelf Override)
macerator.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
macerator.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs([
        <metaitem:dustPaper> * 9,
        <metaitem:dustWood> * 6
    ])
    .duration(196)
    .EUt(2)
    .buildAndRegister();

# Red Alloy Dust
recipes.addShapeless(<metaitem:dustRedAlloy>, [
    <ore:gtce.tool.mortars>, <metaitem:ingotRedAlloy>
]);

# Stone Rod
recipes.addShaped(<metaitem:stickStone>, [
    [<ore:gtce.tool.files>, null, null],
    [null, <minecraft:stone>, null],
    [null, null, null]
]);
lathe.recipeBuilder()
    .inputs([<minecraft:stone>])
    .outputs([
        <metaitem:stickStone>,
        <metaitem:dustSmallStone> * 2
    ])
    .duration(10)
    .EUt(7)
    .buildAndRegister();

# Wrought Iron Nugget
recipes.addShapeless(<metaitem:nuggetWroughtIron> * 9, [<metaitem:ingotWroughtIron>]);

# Wrought Iron Ingot
recipes.addShaped(<metaitem:ingotWroughtIron>, [
    [<metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>],
    [<metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>],
    [<metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>, <metaitem:nuggetWroughtIron>]
]);

# Tiny Charcoal Dust
furnace.setFuel(<metaitem:dustTinyCharcoal>, 200);

# Tiny Coal Dust
furnace.setFuel(<metaitem:dustTinyCoal>, 200);

# Solar Panels
var solarPanels as IItemStack[] = [
    <metaitem:cover.solar.panel.ulv>,
    <metaitem:cover.solar.panel.lv>,
    <metaitem:cover.solar.panel.mv>,
    <metaitem:cover.solar.panel.hv>,
    <metaitem:cover.solar.panel.ev>,
    <metaitem:cover.solar.panel.iv>,
    <metaitem:cover.solar.panel.luv>,
    <metaitem:cover.solar.panel.zpm>,
    <metaitem:cover.solar.panel.uv>
];
for solarPanel in solarPanels {
    recipes.remove(solarPanel);
}

# Solar Panel (8V)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel> * 8])
    .inputs([<minecraft:daylight_detector> * 8])
    .inputs([<ore:circuitUlv> * 4])
    .inputs([<metaitem:plate.ultra_low_power_integrated_circuit> * 4])
    .inputs([<minecraft:glass>])
    .inputs([<metaitem:transformer.ulv>])
    .fluidInputs(<liquid:silicon> * 2304)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs([<metaitem:cover.solar.panel.ulv>])
    .duration(20)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (LV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.ulv> * 4])
    .inputs([<metaitem:sensor.lv> * 8])
    .inputs([<metaitem:circuit.electronic> * 4])
    .inputs([<metaitem:plate.ultra_low_power_integrated_circuit> * 16])
    .inputs([<appliedenergistics2:quartz_glass>])
    .inputs([<metaitem:transformer.lv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs([<metaitem:cover.solar.panel.lv>])
    .duration(40)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (MV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.lv> * 4])
    .inputs([<metaitem:sensor.mv> * 8])
    .inputs([<metaitem:circuit.good_electronic> * 4])
    .inputs([<metaitem:plate.low_power_integrated_circuit> * 4])
    .inputs([<enderio:block_fused_quartz>])
    .inputs([<metaitem:transformer.mv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs([<metaitem:cover.solar.panel.mv>])
    .duration(80)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (HV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.mv> * 4])
    .inputs([<metaitem:sensor.hv> * 8])
    .inputs([<metaitem:circuit.advanced_integrated> * 4])
    .inputs([<metaitem:plate.low_power_integrated_circuit> * 16])
    .inputs([<enderio:block_fused_quartz>])
    .inputs([<metaitem:transformer.hv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .outputs([<metaitem:cover.solar.panel.hv>])
    .duration(160)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (EV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.hv> * 4])
    .inputs([<metaitem:sensor.ev> * 8])
    .inputs([<metaitem:circuit.workstation> * 4])
    .inputs([<metaitem:plate.power_integrated_circuit> * 4])
    .inputs([<gregtech:transparent_casing>])
    .inputs([<metaitem:transformer.ev>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 2304)
    .outputs([<metaitem:cover.solar.panel.ev>])
    .duration(320)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (IV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.ev> * 4])
    .inputs([<metaitem:sensor.iv> * 8])
    .inputs([<metaitem:circuit.mainframe> * 4])
    .inputs([<metaitem:plate.power_integrated_circuit> * 16])
    .inputs([<gregtech:transparent_casing>])
    .inputs([<metaitem:transformer.iv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 4608)
    .outputs([<metaitem:cover.solar.panel.iv>])
    .duration(640)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (LuV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.iv> * 4])
    .inputs([<metaitem:sensor.luv> * 8])
    .inputs([<metaitem:circuit.nano_mainframe> * 4])
    .inputs([<metaitem:plate.high_power_integrated_circuit> * 8])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.luv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 9216)
    .outputs([<metaitem:cover.solar.panel.luv>])
    .duration(1280)
    .EUt(30720)
    .buildAndRegister();

# Solar Panel (ZPM)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.luv> * 4])
    .inputs([<metaitem:sensor.zpm> * 8])
    .inputs([<metaitem:circuit.quantum_mainframe> * 4])
    .inputs([<metaitem:plate.high_power_integrated_circuit> * 32])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.zpm>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .outputs([<metaitem:cover.solar.panel.zpm>])
    .duration(2560)
    .EUt(122880)
    .buildAndRegister();

# Solar Panel (UV)
assembly_line.recipeBuilder()
    .inputs([<metaitem:cover.solar.panel.zpm> * 4])
    .inputs([<metaitem:sensor.uv> * 8])
    .inputs([<metaitem:circuit.crystal_mainframe> * 4])
    .inputs([<metaitem:plate.ultra_high_power_integrated_circuit> * 64])
    .inputs([<gregtech:transparent_casing:1>])
    .inputs([<metaitem:transformer.uv>])
    .fluidInputs(<liquid:silicon> * 1152)
    .fluidInputs(<liquid:soldering_alloy> * 36864)
    .outputs([<metaitem:cover.solar.panel.uv>])
    .duration(5120)
    .EUt(491520)
    .buildAndRegister();

# Glowstone Dust (Override)
centrifuge.findRecipe(80, [<minecraft:glowstone_dust>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<minecraft:glowstone_dust> * 2])
    .outputs([<minecraft:redstone>])
    .outputs([<metaitem:dustGold>])
    .duration(488)
    .EUt(80)
    .buildAndRegister();

# Netherrack Dust (Override)
centrifuge.findRecipe(20, [<metaitem:dustNetherrack>], null).remove();
centrifuge.recipeBuilder()
    .inputs([<metaitem:dustNetherrack>])
    .chancedOutput(<metaitem:dustTinyGold>, 620, 120)
    .chancedOutput(<metaitem:dustTinyRedstone>, 5600, 850)
    .chancedOutput(<metaitem:dustTinyCoal>, 5600, 850)
    .chancedOutput(<metaitem:dustTinyGlowstone>, 5600, 850)
    .chancedOutput(<metaitem:dustSulfur>, 9900, 100)
    .duration(160)
    .EUt(20)
    .buildAndRegister();

# Nether Star Dust
chemical_reactor.recipeBuilder()
    .inputs([
        <metaitem:dustDiamond>,
        <metaitem:dustIridium>
    ])
    .fluidInputs([
        <liquid:nether_air> * 8000,
        <liquid:rocket_fuel> * 1000
    ])
    .outputs([<metaitem:dustNetherStar> * 2])
    .duration(200)
    .EUt(7680)
    .buildAndRegister();

# Soularium Dust
electrolyzer.findRecipe(30, [<metaitem:dustSoularium> * 2], null).remove();
electrolyzer.recipeBuilder()
    .inputs([<metaitem:dustSoularium> * 3])
    .outputs([
        <metaitem:dustGold>,
        <metaitem:dustAsh>,
        <minecraft:soul_sand>
    ])
    .duration(168)
    .EUt(30)
    .buildAndRegister();

# Crude Steel Dust
electrolyzer.recipeBuilder()
    .inputs([<metaitem:dustCrudeSteel> * 3])
    .outputs([
        <metaitem:dustSteel>,
        <metaitem:dustClay>,
        <minecraft:gravel>
    ])
    .duration(168)
    .EUt(30)
    .buildAndRegister();

# Crystalline Alloy Dust
electrolyzer.recipeBuilder()
    .inputs([<metaitem:dustCrystallineAlloy> * 2])
    .outputs([
        <metaitem:dustGold>,
        <enderio:item_material:34>
    ])
    .duration(168)
    .EUt(30)
    .buildAndRegister();

# Melodic Alloy Dust
electrolyzer.recipeBuilder()
    .inputs([<metaitem:dustMelodicAlloy> * 2])
    .outputs([
        <metaitem:dustEndSteel>,
        <minecraft:chorus_fruit_popped>
    ])
    .duration(168)
    .EUt(30)
    .buildAndRegister();

# Crystalline Pink Slime Dust
electrolyzer.recipeBuilder()
    .inputs([<metaitem:dustCrystallinePinkSlime> * 2])
    .outputs([
        <metaitem:dustMelodicAlloy>,
        <minecraft:slime_ball>
    ])
    .duration(168)
    .EUt(30)
    .buildAndRegister();

# Nether Quartz Rod
lathe.recipeBuilder()
    .inputs([<ore:crystalPureNetherQuartz>])
    .outputs([<metaitem:stickNetherQuartz>])
    .duration(40)
    .EUt(16)
    .buildAndRegister();

# Certus Quartz Rod
lathe.recipeBuilder()
    .inputs([<ore:crystalPureCertusQuartz>])
    .outputs([<metaitem:stickCertusQuartz>])
    .duration(40)
    .EUt(16)
    .buildAndRegister();

# Certus Quartz Dust (Override)
macerator.findRecipe(2, [<metaitem:blockCertusQuartz>], null).remove();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material>])
    .outputs([<metaitem:dustCertusQuartz>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .outputs([<metaitem:dustCertusQuartz> * 4])
    .duration(20)
    .EUt(2)
    .buildAndRegister();

# Quartzite Dust (Override)
macerator.findRecipe(2, [<metaitem:blockQuartzite>], null).remove();
macerator.recipeBuilder()
    .inputs([<metaitem:blockQuartzite>])
    .outputs([<metaitem:dustQuartzite> * 4])
    .duration(20)
    .EUt(2)
    .buildAndRegister();

# Charged Certus Quartz Dust
electrolyzer.recipeBuilder()
    .inputs([<metaitem:dustCertusQuartz>])
    .outputs([<metaitem:dustChargedCertusQuartz>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:material:1>])
    .outputs([<metaitem:dustChargedCertusQuartz>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();

# Fluix Dust (Override)
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustChargedCertusQuartz>,
        <minecraft:redstone>,
        <metaitem:dustNetherQuartz>
    ])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<metaitem:dustFluix>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<ore:crystalFluix>])
    .outputs([<metaitem:dustFluix>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<appliedenergistics2:fluix_block>])
    .outputs([<metaitem:dustFluix> * 4])
    .duration(20)
    .EUt(2)
    .buildAndRegister();

# Certus Quartz (Override)
forge_hammer.findRecipe(24, [<metaitem:blockCertusQuartz>], null).remove();
forge_hammer.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .outputs([<metaitem:gemCertusQuartz> * 4])
    .duration(100)
    .EUt(24)
    .buildAndRegister();

# Quartzite Quartz (Override)
forge_hammer.findRecipe(24, [<metaitem:blockQuartzite>], null).remove();
forge_hammer.recipeBuilder()
    .inputs([<metaitem:blockQuartzite>])
    .outputs([<metaitem:gemQuartzite> * 4])
    .duration(100)
    .EUt(24)
    .buildAndRegister();

# Certus Quartz Plate (Override)
cutter.findRecipe(30, [<metaitem:blockCertusQuartz>], [<liquid:water> * 15]).remove();
cutter.findRecipe(30, [<metaitem:blockCertusQuartz>], [<liquid:distilled_water> * 11]).remove();
cutter.findRecipe(30, [<metaitem:blockCertusQuartz>], [<liquid:lubricant> * 3]).remove();
cutter.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .fluidInputs([<liquid:water> * 15])
    .outputs([<metaitem:plateCertusQuartz> * 4])
    .duration(320)
    .EUt(30)
    .buildAndRegister();
cutter.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .fluidInputs([<liquid:distilled_water> * 11])
    .outputs([<metaitem:plateCertusQuartz> * 4])
    .duration(240)
    .EUt(30)
    .buildAndRegister();
cutter.recipeBuilder()
    .inputs([<metaitem:blockCertusQuartz>])
    .fluidInputs([<liquid:lubricant> * 3])
    .outputs([<metaitem:plateCertusQuartz> * 4])
    .duration(160)
    .EUt(30)
    .buildAndRegister();

# Quartzite Plate (Override)
cutter.findRecipe(30, [<metaitem:blockQuartzite>], [<liquid:water> * 15]).remove();
cutter.findRecipe(30, [<metaitem:blockQuartzite>], [<liquid:distilled_water> * 11]).remove();
cutter.findRecipe(30, [<metaitem:blockQuartzite>], [<liquid:lubricant> * 3]).remove();
cutter.recipeBuilder()
    .inputs([<metaitem:blockQuartzite>])
    .fluidInputs([<liquid:water> * 15])
    .outputs([<metaitem:plateQuartzite> * 4])
    .duration(320)
    .EUt(30)
    .buildAndRegister();
cutter.recipeBuilder()
    .inputs([<metaitem:blockQuartzite>])
    .fluidInputs([<liquid:distilled_water> * 11])
    .outputs([<metaitem:plateQuartzite> * 4])
    .duration(240)
    .EUt(30)
    .buildAndRegister();
cutter.recipeBuilder()
    .inputs([<metaitem:blockQuartzite>])
    .fluidInputs([<liquid:lubricant> * 3])
    .outputs([<metaitem:plateQuartzite> * 4])
    .duration(160)
    .EUt(30)
    .buildAndRegister();

# Charged Certus Quartz Crystal
electrolyzer.findRecipe(30, [<metaitem:dustChargedCertusQuartz> * 3], null).remove();
<ore:gemChargedCertusQuartz>.addItems([<appliedenergistics2:material:1>]);
electrolyzer.recipeBuilder()
    .inputs([<ore:crystalCertusQuartz>])
    .outputs([<appliedenergistics2:material:1>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<metaitem:dustChargedCertusQuartz>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<appliedenergistics2:material:1>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<metaitem:dustChargedCertusQuartz>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<appliedenergistics2:material:1>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<metaitem:dustChargedCertusQuartz> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <appliedenergistics2:material:1> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<metaitem:dustChargedCertusQuartz> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <appliedenergistics2:material:1> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Fluix Crystal
electrolyzer.findRecipe(60, [<metaitem:dustFluix> * 7], null).remove();
recipes.remove(<appliedenergistics2:material:7>);
<ore:gemFluix>.addItems([<appliedenergistics2:material:7>]);
mixer.recipeBuilder()
    .inputs([
        <ore:gemChargedCertusQuartz>,
        <minecraft:redstone>,
        <ore:gemNetherQuartz>
    ])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<appliedenergistics2:material:7>])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<metaitem:dustFluix>])
    .fluidInputs([<liquid:distilled_water> * 50])
    .outputs([<appliedenergistics2:material:7>])
    .duration(600)
    .EUt(24)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<metaitem:dustFluix>])
    .fluidInputs([<liquid:water> * 250])
    .chancedOutput(<appliedenergistics2:material:7>, 7000, 1000)
    .duration(1200)
    .EUt(24)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<metaitem:dustFluix> * 4])
    .property("explosives", <minecraft:tnt> * 2)
    .outputs([
        <appliedenergistics2:material:7> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
implosion_compressor.recipeBuilder()
    .inputs([<metaitem:dustFluix> * 4])
    .property("explosives", <metaitem:dynamite>)
    .outputs([
        <appliedenergistics2:material:7> * 3,
        <metaitem:dustTinyDarkAsh>
    ])
    .duration(20)
    .EUt(30)
    .buildAndRegister();

# Charged Certus Quartz Lens
<ore:craftingLensLightBlue>.addItems([<metaitem:lensChargedCertusQuartz>]);
lathe.recipeBuilder()
    .inputs([<metaitem:plateChargedCertusQuartz>])
    .outputs([
        <metaitem:lensChargedCertusQuartz>,
        <metaitem:dustSmallChargedCertusQuartz>
    ])
    .duration(1200)
    .EUt(120)
    .buildAndRegister();

# Fluix Lens
<ore:craftingLensPurple>.addItems([<metaitem:lensFluix>]);
lathe.recipeBuilder()
    .inputs([<metaitem:plateFluix>])
    .outputs([
        <metaitem:lensFluix>,
        <metaitem:dustSmallFluix>
    ])
    .duration(1200)
    .EUt(120)
    .buildAndRegister();



########################################
# Blocks
########################################
# Quartz Block (Override)
compressor.findRecipe(2, [<metaitem:gemCertusQuartz> * 9], null).remove();
fluid_solidifier.findRecipe(7, [<metaitem:shape.mold.block>], [<liquid:certus_quartz> * 1296]).remove();
compressor.recipeBuilder()
    .inputs([<metaitem:gemCertusQuartz> * 4])
    .outputs([<metaitem:blockCertusQuartz>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();
compressor.recipeBuilder()
    .inputs([<ore:crystalPureCertusQuartz> * 8])
    .outputs([<metaitem:blockCertusQuartz>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();
fluid_solidifier.recipeBuilder()
    .notConsumable([<metaitem:shape.mold.block>])
    .fluidInputs([<liquid:certus_quartz> * 576])
    .outputs([<metaitem:blockCertusQuartz>])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Fluix Block
<ore:blockFluix>.addItems([<appliedenergistics2:fluix_block>]);
fluid_solidifier.recipeBuilder()
    .notConsumable([<metaitem:shape.mold.block>])
    .fluidInputs([<liquid:fluix> * 576])
    .outputs([<appliedenergistics2:fluix_block>])
    .duration(20)
    .EUt(7)
    .buildAndRegister();

# Quartzite Block (Override)
compressor.findRecipe(2, [<metaitem:gemQuartzite> * 9], null).remove();
compressor.recipeBuilder()
    .inputs([<metaitem:gemQuartzite> * 4])
    .outputs([<metaitem:blockQuartzite>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# UHV Voltage 4x Battery Buffer (Override)
recipes.addShaped(<metaitem:battery_buffer.uhv.4>, [
    [null, null, null],
    [<metaitem:wireGtQuadrupleEuropium>, <minecraft:chest>, <metaitem:wireGtQuadrupleEuropium>],
    [<metaitem:wireGtQuadrupleEuropium>, <metaitem:hull.uhv>, <metaitem:wireGtQuadrupleEuropium>]
]);

# UHV Voltage 8x Battery Buffer (Override)
recipes.addShaped(<metaitem:battery_buffer.uhv.8>, [
    [null, null, null],
    [<metaitem:wireGtOctalEuropium>, <minecraft:chest>, <metaitem:wireGtOctalEuropium>],
    [<metaitem:wireGtOctalEuropium>, <metaitem:hull.uhv>, <metaitem:wireGtOctalEuropium>]
]);

# UHV Voltage 16x Battery Buffer (Override)
recipes.addShaped(<metaitem:battery_buffer.uhv.16>, [
    [null, null, null],
    [<metaitem:wireGtHexEuropium>, <minecraft:chest>, <metaitem:wireGtHexEuropium>],
    [<metaitem:wireGtHexEuropium>, <metaitem:hull.uhv>, <metaitem:wireGtHexEuropium>]
]);

# UHV Voltage Turbo Charger (Override)
recipes.addShaped(<metaitem:charger.uhv>, [
    [<metaitem:wireGtQuadrupleEuropium>, <minecraft:chest>, <metaitem:wireGtQuadrupleEuropium>],
    [<metaitem:wireGtQuadrupleEuropium>, <metaitem:hull.uhv>, <metaitem:wireGtQuadrupleEuropium>],
    [<metaitem:wireGtSingleEuropium>, <ore:circuitUhv>, <metaitem:wireGtSingleEuropium>]
]);
