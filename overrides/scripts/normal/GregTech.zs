#packmode normal
# Imoprts
import mods.jei.JEI;
import crafttweaker.item.IItemStack;



########################################
# Items
########################################
# Stone Rod
lathe.recipeBuilder().
    inputs([<minecraft:stone>]).
    outputs([
        <gregtech:meta_stick:1599>,
        <gregtech:meta_dust_small:1599>
    ]).
    duration(10).
    EUt(7).
    buildAndRegister();

# Wrought Iron Ingot
recipes.addShaped(<gregtech:meta_ingot:335>, [
    [<gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>],
    [<gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>],
    [<gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>, <gregtech:meta_nugget:335>]
]);

# Solar Panels
var solarPanels as IItemStack[] = [
    <gregtech:meta_item_1:331>,
    <gregtech:meta_item_1:332>,
    <gregtech:meta_item_1:333>,
    <gregtech:meta_item_1:334>,
    <gregtech:meta_item_1:335>,
    <gregtech:meta_item_1:336>,
    <gregtech:meta_item_1:337>,
    <gregtech:meta_item_1:338>,
    <gregtech:meta_item_1:339>,
    <gregtech:meta_item_1:340>
];
for solarPanel in solarPanels {
    solarPanel.addTooltip(format.red(
        format.italic("You can't make electricity by creating it XD")
    ));
}

# Solar Panel (8V)
recipes.addShaped(<gregtech:meta_item_1:332>, [
    [<gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>],
    [<gregtech:meta_item_1:331>, <ore:circuitAdvanced>, <gregtech:meta_item_1:331>],
    [<gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>]
]);

# Solar Panel (LV)
recipes.addShaped(<gregtech:meta_item_1:333>, [
    [null, <gregtech:meta_item_1:332>, null],
    [<gregtech:meta_item_1:332>, <gregtech:machine:1270>, <gregtech:meta_item_1:332>],
    [null, <gregtech:meta_item_1:332>, null]
]);


# Solar Panel (MV)
recipes.addShaped(<gregtech:meta_item_1:334>, [
    [null, <gregtech:meta_item_1:333>, null],
    [<gregtech:meta_item_1:333>, <gregtech:machine:1271>, <gregtech:meta_item_1:333>],
    [null, <gregtech:meta_item_1:333>, null]
]);

# Solar Panel (HV)
recipes.addShaped(<gregtech:meta_item_1:335>, [
    [null, <gregtech:meta_item_1:334>, null],
    [<gregtech:meta_item_1:334>, <gregtech:machine:1272>, <gregtech:meta_item_1:334>],
    [null, <gregtech:meta_item_1:334>, null]
]);

# Solar Panel (EV)
recipes.addShaped(<gregtech:meta_item_1:336>, [
    [null, <gregtech:meta_item_1:335>, null],
    [<gregtech:meta_item_1:335>, <gregtech:machine:1273>, <gregtech:meta_item_1:335>],
    [null, <gregtech:meta_item_1:335>, null]
]);

# Solar Panel (IV)
recipes.addShaped(<gregtech:meta_item_1:337>, [
    [null, <gregtech:meta_item_1:336>, null],
    [<gregtech:meta_item_1:336>, <gregtech:machine:1274>, <gregtech:meta_item_1:336>],
    [null, <gregtech:meta_item_1:336>, null]
]);

# Solar Panel (LuV)
recipes.addShaped(<gregtech:meta_item_1:338>, [
    [null, <gregtech:meta_item_1:337>, null],
    [<gregtech:meta_item_1:337>, <gregtech:machine:1275>, <gregtech:meta_item_1:337>],
    [null, <gregtech:meta_item_1:337>, null]
]);

# Solar Panel (ZPM)
recipes.addShaped(<gregtech:meta_item_1:339>, [
    [null, <gregtech:meta_item_1:338>, null],
    [<gregtech:meta_item_1:338>, <gregtech:machine:1276>, <gregtech:meta_item_1:338>],
    [null, <gregtech:meta_item_1:338>, null]
]);

# Solar Panel (UV)
recipes.addShaped(<gregtech:meta_item_1:340>, [
    [null, <gregtech:meta_item_1:339>, null],
    [<gregtech:meta_item_1:339>, <gregtech:machine:1277>, <gregtech:meta_item_1:339>],
    [null, <gregtech:meta_item_1:339>, null]
]);