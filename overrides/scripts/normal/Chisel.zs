#packmode normal
# Imports
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

Carving.addVariation("marble", <gregtech:stone_smooth:2>);
Carving.addVariation("basalt", <gregtech:stone_smooth:3>);



########################################
# Items
########################################
# Iron Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [
    [<ore:gtce.tool.files>, <metaitem:plateIron>, <metaitem:plateIron>],
    [null, <metaitem:screwIron>, <metaitem:plateIron>],
    [<metaitem:stickBronze>, null, <ore:gtce.tool.hard.hammers>]
]);

# Diamond Chisel
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>, [
    [<ore:gtce.tool.files>, <metaitem:plateDiamond>, <metaitem:plateDiamond>],
    [null, <chisel:chisel_iron>, <metaitem:plateDiamond>],
    [<metaitem:stickRoseGold>, null, <ore:gtce.tool.hard.hammers>]
]);

# iChisel
recipes.remove(<chisel:chisel_hitech>);
recipes.addShaped(<chisel:chisel_hitech>, [
    [<ore:gtce.tool.files>, <metaitem:plateDiamond>, <metaitem:plateDiamond>],
    [null, <chisel:chisel_diamond>, <metaitem:plateDiamond>],
    [<metaitem:stickStainlessSteel>, null, <ore:gtce.tool.hard.hammers>]
]);



########################################
# Blocks
########################################
# Auto Chisel
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [
    [<metaitem:plateGlass>, <metaitem:plateGlass>, <metaitem:plateGlass>],
    [<metaitem:plateGlass>, <chisel:chisel_iron> | <chisel:chisel_diamond> | <chisel:chisel_hitech>, <metaitem:plateGlass>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
]);

# Bookshelfs
<ore:bookshelf>.add(<minecraft:bookshelf>);

## Oak
assembler.findRecipe(4, [<metaitem:plateWood> * 6, <minecraft:book:0> * 3], null).remove();
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:0> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_oak>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Spruce
recipes.remove(<chisel:bookshelf_spruce>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:1> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_spruce>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Birch
recipes.remove(<chisel:bookshelf_birch>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:2> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_birch>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Jungle
recipes.remove(<chisel:bookshelf_jungle>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:3> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_jungle>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Acacia
recipes.remove(<chisel:bookshelf_acacia>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:4> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_acacia>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

## Dark Oak
recipes.remove(<chisel:bookshelf_darkoak>);
assembler.recipeBuilder()
    .inputs([
        <minecraft:planks:5> * 6,
        <minecraft:book> * 3
    ])
    .outputs([<chisel:bookshelf_darkoak>])
    .duration(100)
    .EUt(4)
    .buildAndRegister();

# Glass Pane
var glassPanes as IItemStack[] = [
    <chisel:glasspane>,
    <chisel:glasspane:1>,
    <chisel:glasspane:2>,
    <chisel:glasspane:3>,
    <chisel:glasspane:4>,
    <chisel:glasspane:5>,
    <chisel:glasspane:6>,
    <chisel:glasspane:7>,
    <chisel:glasspane:8>,
    <chisel:glasspane:9>,
    <chisel:glasspane:10>,
    <chisel:glasspane:11>,
    <chisel:glasspane:12>,
    <chisel:glasspane:13>,
    <chisel:glasspane:14>,
    <chisel:glasspane:15>,
    <chisel:glasspane1>,
    <chisel:glasspane1:1>
];
for pane in glassPanes {
    recipes.remove(pane);
}
