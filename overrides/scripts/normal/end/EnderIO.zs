#packmode normal
# Imports



########################################
# Blocks
########################################
# Creative Capacitor Bank
assembly_line.recipeBuilder()
    .inputs([<metaitem:energy.cluster> * 4])
    .inputs([<gregtech:fusion_casing:4> * 28])
    .inputs([<metaitem:hull.uhv> * 5])
    .inputs([<ore:circuitUhv> * 20])
    .inputs([<enderio:block_cap_bank:3> * 16])
    .inputs([<metaitem:cover.solar.panel.uv>])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .fluidInputs(<liquid:neutronium> * 10368)
    .fluidInputs(<liquid:vibrant_alloy> * 4608)
    .outputs([<enderio:block_cap_bank:0>.withTag({"enderio:energy": 100000000})])
    .duration(1200)
    .EUt(491520)
    .buildAndRegister();
