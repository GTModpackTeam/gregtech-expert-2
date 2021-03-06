# Imports
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.zenutils.I18n;
import mods.gregtech.IControllerTile;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMapBuilder;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IGetBaseTextureFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.IIMultiblockPart;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.MoveType;
# autoAbilities(
#    boolean checkEnergyIn,
#    boolean checkMaintainer,
#    boolean checkItemIn,
#    boolean checkItemOut,
#    boolean checkFluidIn,
#    boolean checkFluidOut,
#    boolean checkMuffler
# )



########################################
# Multiblock Builder
########################################
var greenhouse = Builder.start("greenhouse", 32000)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
        return FactoryBlockPattern.start()
            .aisle(" CCC ", " CCC ", " CCC ", " CCC ")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle("CCCCC", "CDDDC", "C###C", "CGGGC")
            .aisle(" CCC ", " CSC ", " CCC ", " CCC ")
            .where('S', controller.self())
            .where('C', CTPredicate.states(<metastate:gregtech:machine_casing>)
                | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setMaxGlobalLimited(3).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
                | CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
            )
            .where('G', CTPredicate.states(<metastate:gregtech:transparent_casing>))
            .where('D', CTPredicate.states(<blockstate:minecraft:dirt>))
            .where('#', CTPredicate.getAir())
            .build();
    } as IPatternBuilderFunction)
    .withRecipeMap(RecipeMapBuilder.create("greenhouse")
        .setInputs(3, 2)
        .setOutputs(4, 1)
        .setFluidInputs(1, 1)
        .setFluidOutputs(0, 0)
        .build()
    )
    .withBaseTexture(<metastate:gregtech:machine_casing>)
    .buildAndRegister();
greenhouse.hasMaintenanceMechanics = true;
greenhouse.hasMufflerMechanics = false;

recipes.addShaped(<metaitem:multiblocktweaker:greenhouse>, [
    [<gregtech:transparent_casing>, <gregtech:transparent_casing>, <gregtech:transparent_casing>],
    [<metaitem:electric.pump.mv>, <metaitem:gregtechfoodoption:farmer.mv>, <metaitem:electric.pump.mv>],
    [<metaitem:wireGtQuadrupleCopper>, <ore:circuitMv>, <metaitem:wireGtQuadrupleCopper>]
]);
JEI.addDescription(<metaitem:multiblocktweaker:greenhouse>, I18n.format("multiblocktweaker.greenhouse.tooltip.1"));



########################################
# Finalize
########################################
# Trees
var saplings as IItemStack[] = [
    <minecraft:sapling:0>,
    <minecraft:sapling:1>,
    <minecraft:sapling:2>,
    <minecraft:sapling:3>,
    <minecraft:sapling:4>,
    <minecraft:sapling:5>
];
var logs as IItemStack[] = [
    <minecraft:log:0>,
    <minecraft:log:1>,
    <minecraft:log:2>,
    <minecraft:log:3>,
    <minecraft:log2:0>,
    <minecraft:log2:1>
];
for i, sapling in saplings {
    greenhouse.recipeMap.recipeBuilder()
        .circuit(1)
        .notConsumable([sapling])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([logs[i] * 32])
        .outputs([sapling.withAmount(6)])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeMap.recipeBuilder()
        .circuit(2)
        .notConsumable([sapling])
        .inputs([<metaitem:fertilizer> * 4])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([logs[i] * 32])
        .outputs([logs[i] * 32])
        .outputs([sapling.withAmount(12)])
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}

# Rubber
greenhouse.recipeMap.recipeBuilder()
    .circuit(1)
    .notConsumable(<gregtech:rubber_sapling>)
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<gregtech:rubber_log> * 8])
    .outputs([<gregtech:rubber_sapling>])
    .outputs([<metaitem:rubber_drop>])
    .duration(1200)
    .EUt(40)
    .buildAndRegister();
greenhouse.recipeMap.recipeBuilder()
    .circuit(2)
    .notConsumable(<gregtech:rubber_sapling>)
    .inputs(<metaitem:fertilizer> * 4)
    .fluidInputs([<liquid:water> * 1000])
    .outputs([<gregtech:rubber_log> * 16])
    .outputs([<gregtech:rubber_sapling> * 3])
    .outputs([<metaitem:rubber_drop> * 4])
    .duration(900)
    .EUt(60)
    .buildAndRegister();

# Plants
var seeds as IItemStack[] = [
    <minecraft:pumpkin_seeds>,
    <minecraft:beetroot_seeds>,
    <minecraft:wheat_seeds>,
    <minecraft:melon_seeds>,
    <minecraft:carrot>,
    <minecraft:potato>,
    <minecraft:reeds>,
    <minecraft:cactus>,
    <minecraft:brown_mushroom>,
    <minecraft:red_mushroom>,
    <minecraft:nether_wart>,
    <gregtechfoodoption:gtfo_meta_item:159>,
    <gregtechfoodoption:gtfo_meta_item:162>,
    <gregtechfoodoption:gtfo_meta_item:164>,
    <gregtechfoodoption:gtfo_meta_item:163>,
    <gregtechfoodoption:gtfo_meta_item:161>
];
var plants as IItemStack[] = [
    <minecraft:pumpkin> * 6,
    <minecraft:beetroot> * 16,
    <minecraft:wheat> * 16,
    <minecraft:melon_block> * 6,
    <minecraft:carrot> * 12,
    <minecraft:potato> * 12,
    <minecraft:reeds> * 12,
    <minecraft:cactus> * 12,
    <minecraft:brown_mushroom> * 12,
    <minecraft:red_mushroom> * 12,
    <minecraft:nether_wart> * 12,
    <gregtechfoodoption:gtfo_meta_item:77> * 12,
    <gregtechfoodoption:gtfo_meta_item:76> * 12,
    <gregtechfoodoption:gtfo_meta_item:78> * 12,
    <gregtechfoodoption:gtfo_meta_item:124> * 12,
    <gregtechfoodoption:gtfo_meta_item:160> * 12
];
for i, seed in seeds {
    greenhouse.recipeMap.recipeBuilder()
        .circuit(1)
        .notConsumable([seed])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([plants[i]])
        .duration(1200)
        .EUt(40)
        .buildAndRegister();
    greenhouse.recipeMap.recipeBuilder()
        .circuit(2)
        .notConsumable([seed])
        .inputs([<metaitem:fertilizer> * 4])
        .fluidInputs([<liquid:water> * 1000])
        .outputs([plants[i].withAmount(plants[i].amount * 2)])
        .duration(900)
        .EUt(60)
        .buildAndRegister();
}
