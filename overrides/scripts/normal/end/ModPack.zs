#packmode normal
# Imports



########################################
# Items
########################################
# GTE ME Storage Fake Component
assembly_line.recipeBuilder()
    .inputs([<metaitem:screwNeutronium> * 4])
    .inputs([<enderio:block_cap_bank:0> * 4])
    .inputs([<metaitem:battery_buffer.uhv.16> * 20])
    .inputs([<appliedenergistics2:creative_energy_cell> * 4])
    .inputs([<aeadditions:storage.component:3> * 5])
    .inputs([<aeadditions:storage.component:6> * 4])
    .fluidInputs(<liquid:soldering_alloy> * 18432)
    .fluidInputs(<liquid:neutronium> * 51840)
    .outputs([<metaitem:gte_me_fake_component>])
    .duration(1200)
    .EUt(491520)
    .buildAndRegister();
