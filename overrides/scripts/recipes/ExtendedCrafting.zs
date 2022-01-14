# Imoprts
import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;



########################################
# Items
########################################
# Crafting Table
JEI.removeAndHide(<extendedcrafting:crafting_table>);

# Guide Book
recipes.remove(<extendedcrafting:guide>);
TableCrafting.addShapeless(0, <extendedcrafting:guide>, [<extendedcrafting:guide>, <ore:ingotUraniumRhodiumDinaquadide>]);

# Ender Material
JEI.removeAndHide(<extendedcrafting:material:37>);
JEI.removeAndHide(<extendedcrafting:material:36>);
JEI.removeAndHide(<extendedcrafting:material:49>);
JEI.removeAndHide(<extendedcrafting:material:48>);
JEI.removeAndHide(<extendedcrafting:material:41>);
JEI.removeAndHide(<extendedcrafting:material:40>);

# Black Nugget
JEI.removeAndHide(<extendedcrafting:material:1>);

# Black Ingot
JEI.removeAndHide(<extendedcrafting:material>);

# Black Plate
JEI.removeAndHide(<extendedcrafting:material:2>);

# Black Rod
JEI.removeAndHide(<extendedcrafting:material:3>);

# Handheld Crafting Table
JEI.removeAndHide(<extendedcrafting:handheld_table>);

# Basic Component
recipes.remove(<extendedcrafting:material:14>);
TableCrafting.addShaped(0, <extendedcrafting:material:14>, [
    [<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:7>, null], 
    [<ore:plateIron>, <ore:plateIron>, null], 
    [null, null, null]
]);

# Advanced Component
recipes.remove(<extendedcrafting:material:15>);
TableCrafting.addShaped(0, <extendedcrafting:material:15>, [
    [<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:7>, null], 
    [<ore:plateGold>, <ore:plateGold>, null], 
    [null, null, null]
]);

# Elite Component
recipes.remove(<extendedcrafting:material:16>);
TableCrafting.addShaped(0, <extendedcrafting:material:16>, [
    [<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:7>, null], 
    [<ore:plateDiamond>, <ore:plateDiamond>, null], 
    [null, null, null]
]);

# Ultimate Component
recipes.remove(<extendedcrafting:material:17>);
TableCrafting.addShaped(0, <extendedcrafting:material:17>, [
    [<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:7>, null], 
    [<ore:plateEmerald>, <ore:plateEmerald>, null], 
    [null, null, null]
]);

# Crystaltine Component
recipes.remove(<extendedcrafting:material:18>);
TableCrafting.addShaped(0, <extendedcrafting:material:18>, [
    [<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:7>, null], 
    [<ore:ingotCrystaltine>, <ore:ingotCrystaltine>, null], 
    [null, null, null]
]);

# Final Component
recipes.remove(<extendedcrafting:material:19>);
TableCrafting.addShaped(0, <extendedcrafting:material:19>, [
    [<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:7>, null], 
    [<ore:ingotUltimate>, <ore:ingotUltimate>, null], 
    [null, null, null]
]);

# Basic Catalyst
recipes.remove(<extendedcrafting:material:8>);
TableCrafting.addShaped(0, <extendedcrafting:material:8>, [
    [null, <extendedcrafting:material:14>, null], 
    [<extendedcrafting:material:14>, <ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:14>], 
    [null, <extendedcrafting:material:14>, null]
]);

# Advanced Catalyst
recipes.remove(<extendedcrafting:material:9>);
TableCrafting.addShaped(0, <extendedcrafting:material:9>, [
    [null, <extendedcrafting:material:15>, null], 
    [<extendedcrafting:material:15>, <ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:15>], 
    [null, <extendedcrafting:material:15>, null]
]);

# Elite Catalyst
recipes.remove(<extendedcrafting:material:10>);
TableCrafting.addShaped(0, <extendedcrafting:material:10>, [
    [null, <extendedcrafting:material:16>, null], 
    [<extendedcrafting:material:16>, <ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:16>], 
    [null, <extendedcrafting:material:16>, null]
]);

# Ultimate Catalyst
recipes.remove(<extendedcrafting:material:11>);
TableCrafting.addShaped(0, <extendedcrafting:material:11>, [
    [null, <extendedcrafting:material:17>, null], 
    [<extendedcrafting:material:17>, <ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:17>], 
    [null, <extendedcrafting:material:17>, null]
]);

# Crystaltine Catalyst
recipes.remove(<extendedcrafting:material:12>);
TableCrafting.addShaped(0, <extendedcrafting:material:12>, [
    [null, <extendedcrafting:material:18>, null], 
    [<extendedcrafting:material:18>, <ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:18>], 
    [null, <extendedcrafting:material:18>, null]
]);

# Final Catalyst
recipes.remove(<extendedcrafting:material:13>);
TableCrafting.addShaped(0, <extendedcrafting:material:13>, [
    [null, <extendedcrafting:material:19>, null], 
    [<extendedcrafting:material:19>, <ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:19>], 
    [null, <extendedcrafting:material:19>, null]
]);



########################################
# Blocks
########################################
# Black Block
JEI.removeAndHide(<extendedcrafting:storage>);

# Ender Block
JEI.removeAndHide(<extendedcrafting:storage:5>);

# Ender Stars Block
JEI.removeAndHide(<extendedcrafting:storage:6>);

# Black Enhancement Ender
JEI.removeAndHide(<extendedcrafting:storage:7>);

# Block of Black Iron
JEI.removeAndHide(<extendedcrafting:trimmed:*>);

# Black Iron Frame
recipes.remove(<extendedcrafting:frame>);
TableCrafting.addShaped(0, <extendedcrafting:frame>, [
    [<ore:ingotUraniumRhodiumDinaquadide>, <ore:plateGlass>, <ore:ingotUraniumRhodiumDinaquadide>], 
    [<ore:plateGlass>, <ore:plateUraniumRhodiumDinaquadide>, <ore:plateGlass>], 
    [<ore:ingotUraniumRhodiumDinaquadide>, <ore:plateGlass>, <ore:ingotUraniumRhodiumDinaquadide>]
]);

# Automation
recipes.remove(<extendedcrafting:interface>);
TableCrafting.addShaped(0, <extendedcrafting:interface>, [
    [<ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:10>, <ore:ingotUraniumRhodiumDinaquadide>], 
    [<extendedcrafting:material:18>, <extendedcrafting:frame>, <extendedcrafting:material:18>], 
    [<ore:ingotUraniumRhodiumDinaquadide>, <ore:plateUraniumRhodiumDinaquadide>, <ore:ingotUraniumRhodiumDinaquadide>]
]);

# Pedestal
recipes.remove(<extendedcrafting:pedestal>);
TableCrafting.addShaped(0, <extendedcrafting:pedestal>, [
    [null, <ore:ingotUraniumRhodiumDinaquadide>, null], 
    [null, <ore:ingotUraniumRhodiumDinaquadide>, null], 
    [<ore:ingotUraniumRhodiumDinaquadide>, <ore:blockUraniumRhodiumDinaquadide>, <ore:ingotUraniumRhodiumDinaquadide>]
]);

# Crafting Core
recipes.remove(<extendedcrafting:crafting_core>);
TableCrafting.addShaped(0, <extendedcrafting:crafting_core>, [
    [<ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:10>, <ore:ingotUraniumRhodiumDinaquadide>], 
    [<extendedcrafting:material:16>, <extendedcrafting:frame>, <extendedcrafting:material:16>], 
    [<ore:ingotUraniumRhodiumDinaquadide>, <ore:plateUraniumRhodiumDinaquadide>, <ore:ingotUraniumRhodiumDinaquadide>]
]);

# Quantum Compressor
recipes.remove(<extendedcrafting:compressor>);
TableCrafting.addShaped(0, <extendedcrafting:compressor>, [
    [<ore:ingotUraniumRhodiumDinaquadide>, <extendedcrafting:material:16>, <ore:ingotUraniumRhodiumDinaquadide>], 
    [<extendedcrafting:material:10>, <extendedcrafting:frame>, <extendedcrafting:material:10>], 
    [<ore:ingotUraniumRhodiumDinaquadide>, <ore:plateUraniumRhodiumDinaquadide>, <ore:ingotUraniumRhodiumDinaquadide>]
]);

# Basic Crafting Table
recipes.remove(<extendedcrafting:table_basic>);
TableCrafting.addShaped(0, <extendedcrafting:table_basic>, [
	[<extendedcrafting:material:14>, <extendedcrafting:material:8>, <extendedcrafting:material:14>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <ore:workbench>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:14>, <ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:14>]
]);

# Advanced Crafting Table
recipes.remove(<extendedcrafting:table_advanced>);
TableCrafting.addShaped(0, <extendedcrafting:table_advanced>, [
	[<extendedcrafting:material:15>, <extendedcrafting:material:9>, <extendedcrafting:material:15>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:table_basic>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:15>, <ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:15>]
]);

# Elite Crafting Table
recipes.remove(<extendedcrafting:table_elite>);
TableCrafting.addShaped(0, <extendedcrafting:table_elite>, [
	[<extendedcrafting:material:16>, <extendedcrafting:material:10>, <extendedcrafting:material:16>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:table_advanced>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:16>, <ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:16>]
]);

# Ultimate Crafting Table
recipes.remove(<extendedcrafting:table_ultimate>);
TableCrafting.addShaped(0, <extendedcrafting:table_ultimate>, [
	[<extendedcrafting:material:17>, <extendedcrafting:material:11>, <extendedcrafting:material:17>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:table_elite>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:17>, <ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:material:17>]
]);

# Ender Package Crafter
JEI.removeAndHide(<packagedexcrafting:ender_crafter>);

# Advanced Crafter
recipes.remove(<extendedcrafting:table_ultimate>);
TableCrafting.addShaped(0, <packagedexcrafting:advanced_crafter>, [
	[<extendedcrafting:material:15>, <extendedcrafting:interface>, <extendedcrafting:material:15>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:table_advanced>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:15>, <packagedauto:me_package_component>, <extendedcrafting:material:15>]
]);

# Elite Crafter
recipes.remove(<extendedcrafting:table_ultimate>);
TableCrafting.addShaped(0, <packagedexcrafting:elite_crafter>, [
	[<extendedcrafting:material:16>, <extendedcrafting:interface>, <extendedcrafting:material:16>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:table_elite>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:16>, <packagedauto:me_package_component>, <extendedcrafting:material:16>]
]);

# Ultimate Crafter
recipes.remove(<packagedexcrafting:ultimate_crafter>);
TableCrafting.addShaped(0, <packagedexcrafting:ultimate_crafter>, [
	[<extendedcrafting:material:17>, <extendedcrafting:interface>, <extendedcrafting:material:17>], 
	[<ore:plateUraniumRhodiumDinaquadide>, <extendedcrafting:table_ultimate>, <ore:plateUraniumRhodiumDinaquadide>], 
	[<extendedcrafting:material:17>, <packagedauto:me_package_component>, <extendedcrafting:material:17>]
]);

# Combination Crafter
recipes.remove(<packagedexcrafting:combination_crafter>);
TableCrafting.addShaped(0, <packagedexcrafting:combination_crafter>, [
	[<extendedcrafting:material:18>, <extendedcrafting:interface>, <extendedcrafting:material:18>], 
	[<ore:netherStar>, <extendedcrafting:crafting_core>, <ore:netherStar>], 
	[<extendedcrafting:material:12>, <packagedauto:me_package_component>, <extendedcrafting:material:12>]
]);