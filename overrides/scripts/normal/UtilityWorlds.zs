#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Blocks
########################################
# Mining Portal
JEI.hide(<utilityworlds:portal_mining>);

# Void Portal
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:frameTitanium>,
        <metaitem:plateRedstone>,
        <metaitem:plateObsidian> * 3
    ])
    .outputs([<utilityworlds:portal_void>])
    .duration(2000)
    .EUt(1920)
    .buildAndRegister();

# Garden Portal
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <metaitem:frameTungsten>,
        <metaitem:plateEmerald>,
        <metaitem:plateObsidian> * 3
    ])
    .outputs([<utilityworlds:portal_garden>])
    .duration(2000)
    .EUt(30720)
    .buildAndRegister();
