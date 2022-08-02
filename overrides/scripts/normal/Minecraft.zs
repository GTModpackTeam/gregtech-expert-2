#packmode normal



########################################
# Items
########################################
# Fireworks Rocket
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 1}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>
]);
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 2}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>, <minecraft:gunpowder>
]);
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 3}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>,
    <minecraft:gunpowder>, <minecraft:gunpowder>
]);

# Lead (Override)
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:slime_ball> | <metaitem:rubber_drop>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]
]);
assembler.findRecipe(2, [<minecraft:string:0> * 4, <minecraft:slime_ball>], null).remove();
assembler.recipeBuilder()
    .inputs([
        <minecraft:string> * 4,
        <minecraft:slime_ball> | <metaitem:rubber_drop>
    ])
    .outputs([<minecraft:lead> * 2])
    .duration(100)
    .EUt(2)
    .buildAndRegister();

# Book (Override)
extractor.findRecipe(2, [<minecraft:bookshelf:0>], null).remove();
extractor.recipeBuilder()
    .inputs([<ore:bookshelf>])
    .outputs([<minecraft:book> * 3])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Iron Nugget
recipes.addShapeless(<minecraft:iron_nugget> * 9, [<minecraft:iron_ingot>]);

# Iron Ingot
furnace.remove(<minecraft:iron_ingot>, <appliedenergistics2:material:49>);

# Gold Nugget
recipes.addShapeless(<minecraft:gold_nugget> * 9, [<minecraft:gold_ingot>]);

# Gold Ingot
furnace.remove(<minecraft:gold_ingot>, <appliedenergistics2:material:51>);

# Fermented Spider Eye
recipes.remove(<minecraft:fermented_spider_eye>);



########################################
# Blocks
########################################
# Granite
recipes.remove(<minecraft:stone:1>);

# Diorite
recipes.remove(<minecraft:stone:3>);

# Andesite
recipes.remove(<minecraft:stone:5>);

# Comparator
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_comparator");

# Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [
    [<metaitem:ringSteel>, <minecraft:blaze_rod>, <metaitem:ringSteel>],
    [<metaitem:stickSteel>, <minecraft:blaze_rod>, <metaitem:stickSteel>],
    [<metaitem:screwSteel>, <minecraft:cauldron>, <metaitem:screwSteel>]
]);

# Nether Quartz Block
recipes.remove(<minecraft:quartz_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalPureNetherQuartz> * 8])
    .outputs([<minecraft:quartz_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Ender Chest
recipes.remove(<minecraft:ender_chest>);

# End Rod
recipes.remove(<minecraft:end_rod>);

# Daylight Sensor
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_daylight_detector");

# Redstone Lamp (Override)
assembler.findRecipe(1, [
    <minecraft:redstone:0> * 4, <minecraft:glowstone_dust:0> * 4
], null).remove();
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <minecraft:redstone> * 4,
        <minecraft:glowstone_dust> * 4
    ])
    .outputs([<minecraft:redstone_lamp>])
    .duration(100)
    .EUt(1)
    .buildAndRegister();

# Redstone Torch (Override)
assembler.findRecipe(1, [
    <minecraft:redstone>, <minecraft:stick>
], null).remove();
assembler.recipeBuilder()
    .circuit(5)
    .inputs([
        <minecraft:redstone>,
        <minecraft:stick>
    ])
    .outputs([<minecraft:redstone_torch>])
    .duration(20)
    .EUt(1)
    .buildAndRegister();
