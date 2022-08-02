#packmode normal
# Imports
import mods.chisel.Carving;



########################################
# Blocks
########################################
# Framed Drawer
<ore:storagedrawers.framed>.addItems([
    <storagedrawers:customdrawers>,
    <storagedrawers:customdrawers:1>,
    <storagedrawers:customdrawers:2>,
    <storagedrawers:customdrawers:3>,
    <storagedrawers:customdrawers:4>
]);

# Trim
recipes.remove(<storagedrawers:trim:*>);
Carving.addGroup("drawerTrim");
Carving.addVariation("drawerTrim", <storagedrawers:customtrim>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:0>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:1>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:2>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:3>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:4>);
Carving.addVariation("drawerTrim", <storagedrawers:trim:5>);

# Basic Drawer
recipes.remove(<storagedrawers:basicdrawers>);
Carving.addGroup("drawer");
Carving.addVariation("drawer", <storagedrawers:customdrawers>);
Carving.addVariation("drawer", <storagedrawers:basicdrawers>.withTag({material: "oak"}));
Carving.addVariation("drawer", <storagedrawers:basicdrawers>.withTag({material: "spruce"}));
Carving.addVariation("drawer", <storagedrawers:basicdrawers>.withTag({material: "birch"}));
Carving.addVariation("drawer", <storagedrawers:basicdrawers>.withTag({material: "jungle"}));
Carving.addVariation("drawer", <storagedrawers:basicdrawers>.withTag({material: "acacia"}));
Carving.addVariation("drawer", <storagedrawers:basicdrawers>.withTag({material: "dark_oak"}));

# Basic Drawer 1x2
recipes.remove(<storagedrawers:basicdrawers:1>);
Carving.addGroup("drawer_1x2");
Carving.addVariation("drawer_1x2", <storagedrawers:customdrawers:1>);
Carving.addVariation("drawer_1x2", <storagedrawers:basicdrawers:1>.withTag({material: "oak"}));
Carving.addVariation("drawer_1x2", <storagedrawers:basicdrawers:1>.withTag({material: "spruce"}));
Carving.addVariation("drawer_1x2", <storagedrawers:basicdrawers:1>.withTag({material: "birch"}));
Carving.addVariation("drawer_1x2", <storagedrawers:basicdrawers:1>.withTag({material: "jungle"}));
Carving.addVariation("drawer_1x2", <storagedrawers:basicdrawers:1>.withTag({material: "acacia"}));
Carving.addVariation("drawer_1x2", <storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}));

# Basic Drawer 2x2
recipes.remove(<storagedrawers:basicdrawers:2>);
Carving.addGroup("drawer_2x2");
Carving.addVariation("drawer_2x2", <storagedrawers:customdrawers:2>);
Carving.addVariation("drawer_2x2", <storagedrawers:basicdrawers:2>.withTag({material: "oak"}));
Carving.addVariation("drawer_2x2", <storagedrawers:basicdrawers:2>.withTag({material: "spruce"}));
Carving.addVariation("drawer_2x2", <storagedrawers:basicdrawers:2>.withTag({material: "birch"}));
Carving.addVariation("drawer_2x2", <storagedrawers:basicdrawers:2>.withTag({material: "jungle"}));
Carving.addVariation("drawer_2x2", <storagedrawers:basicdrawers:2>.withTag({material: "acacia"}));
Carving.addVariation("drawer_2x2", <storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}));

# Half Basic Drawer 1x2
recipes.remove(<storagedrawers:basicdrawers:3>);
Carving.addGroup("drawer_half_1x2");
Carving.addVariation("drawer_half_1x2", <storagedrawers:customdrawers:3>);
Carving.addVariation("drawer_half_1x2", <storagedrawers:basicdrawers:3>.withTag({material: "oak"}));
Carving.addVariation("drawer_half_1x2", <storagedrawers:basicdrawers:3>.withTag({material: "spruce"}));
Carving.addVariation("drawer_half_1x2", <storagedrawers:basicdrawers:3>.withTag({material: "birch"}));
Carving.addVariation("drawer_half_1x2", <storagedrawers:basicdrawers:3>.withTag({material: "jungle"}));
Carving.addVariation("drawer_half_1x2", <storagedrawers:basicdrawers:3>.withTag({material: "acacia"}));
Carving.addVariation("drawer_half_1x2", <storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}));

# Half Basic Drawer 2x2
recipes.remove(<storagedrawers:basicdrawers:4>);
Carving.addGroup("drawer_half_2x2");
Carving.addVariation("drawer_half_2x2", <storagedrawers:customdrawers:4>);
Carving.addVariation("drawer_half_2x2", <storagedrawers:basicdrawers:4>.withTag({material: "oak"}));
Carving.addVariation("drawer_half_2x2", <storagedrawers:basicdrawers:4>.withTag({material: "spruce"}));
Carving.addVariation("drawer_half_2x2", <storagedrawers:basicdrawers:4>.withTag({material: "birch"}));
Carving.addVariation("drawer_half_2x2", <storagedrawers:basicdrawers:4>.withTag({material: "jungle"}));
Carving.addVariation("drawer_half_2x2", <storagedrawers:basicdrawers:4>.withTag({material: "acacia"}));
Carving.addVariation("drawer_half_2x2", <storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}));

# Framing Table
recipes.remove(<storagedrawers:framingtable>);
recipes.addShaped(<storagedrawers:framingtable>, [
    [null, null, null],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<minecraft:stick>, null, <minecraft:stick>]
]);

# Framed Trim
recipes.remove(<storagedrawers:customtrim>);
recipes.addShaped(<storagedrawers:customtrim> * 4, [
    [<ore:plankWood>, <minecraft:stick>, <ore:plankWood>],
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
    [<ore:plankWood>, <minecraft:stick>, <ore:plankWood>]
]);
assembler.recipeBuilder()
    .circuit(11)
    .inputs([
        <minecraft:stick> * 2,
        <ore:plankWood> * 3
    ])
    .outputs([<storagedrawers:customtrim> * 4])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Framed Drawer
recipes.remove(<storagedrawers:customdrawers:0>);
recipes.addShaped(<storagedrawers:customdrawers:0>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [null, <minecraft:chest>, null],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(12)
    .inputs([
        <minecraft:stick> * 3,
        <minecraft:chest>
    ])
    .outputs([<storagedrawers:customdrawers:0>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Framed Drawer 1x2
recipes.remove(<storagedrawers:customdrawers:1>);
recipes.addShaped(<storagedrawers:customdrawers:1> * 2, [
    [<minecraft:stick>, <minecraft:chest>, <minecraft:stick>],
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:chest>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(13)
    .inputs([
        <minecraft:stick> * 3,
        <minecraft:chest>,
        <ore:plankWood>
    ])
    .outputs([<storagedrawers:customdrawers:1> * 2])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Framed Drawer 2x2
recipes.remove(<storagedrawers:customdrawers:2>);
recipes.addShaped(<storagedrawers:customdrawers:2> * 4, [
    [<minecraft:chest>, <minecraft:stick>, <minecraft:chest>],
    [<minecraft:stick>, <ore:plankWood>, <minecraft:stick>],
    [<minecraft:chest>, <minecraft:stick>, <minecraft:chest>]
]);
assembler.recipeBuilder()
    .circuit(14)
    .inputs([
        <minecraft:stick> * 2,
        <minecraft:chest> * 2,
        <ore:plankWood>
    ])
    .outputs([<storagedrawers:customdrawers:2> * 4])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Framed Half Drawer 1x2
recipes.remove(<storagedrawers:customdrawers:3>);
recipes.addShaped(<storagedrawers:customdrawers:3> * 2, [
    [<minecraft:stick>, <minecraft:chest>, <minecraft:stick>],
    [<minecraft:stick>, <ore:slabWood>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:chest>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(15)
    .inputs([
        <minecraft:stick> * 3,
        <minecraft:chest>,
        <ore:slabWood>
    ])
    .outputs([<storagedrawers:customdrawers:3> * 2])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Framed Half Drawer 2x2
recipes.remove(<storagedrawers:customdrawers:4>);
recipes.addShaped(<storagedrawers:customdrawers:4> * 4, [
    [<minecraft:chest>, <minecraft:stick>, <minecraft:chest>],
    [<minecraft:stick>, <ore:slabWood>, <minecraft:stick>],
    [<minecraft:chest>, <minecraft:stick>, <minecraft:chest>]
]);
assembler.recipeBuilder()
    .circuit(16)
    .inputs([
        <minecraft:stick> * 2,
        <minecraft:chest> * 2,
        <ore:slabWood>
    ])
    .outputs([<storagedrawers:customdrawers:4> * 4])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Controller
Carving.addGroup("drawer_controller");
Carving.addVariation("drawer_controller", <framedcompactdrawers:framed_drawer_controller>);
Carving.addVariation("drawer_controller", <storagedrawers:controller>);
recipes.remove(<storagedrawers:controller>);
recipes.remove(<framedcompactdrawers:framed_drawer_controller>);
recipes.addShaped(<framedcompactdrawers:framed_drawer_controller>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<minecraft:repeater>, <storagedrawers:customdrawers>, <minecraft:repeater>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

# Compacting Drawer
Carving.addGroup("drawer_compacting");
Carving.addVariation("drawer_compacting", <framedcompactdrawers:framed_compact_drawer>);
Carving.addVariation("drawer_compacting", <storagedrawers:compdrawers>);
recipes.remove(<storagedrawers:compdrawers>);
recipes.remove(<framedcompactdrawers:framed_compact_drawer>);
recipes.addShaped(<framedcompactdrawers:framed_compact_drawer>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:craftingPiston>, <storagedrawers:customdrawers>, <ore:craftingPiston>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

# Controller Slave
Carving.addGroup("drawer_slave");
Carving.addVariation("drawer_slave", <framedcompactdrawers:framed_slave>);
Carving.addVariation("drawer_slave", <storagedrawers:controllerslave>);
recipes.remove(<storagedrawers:controllerslave>);
recipes.remove(<framedcompactdrawers:framed_slave>);
recipes.addShaped(<framedcompactdrawers:framed_slave>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<minecraft:comparator>, <storagedrawers:customdrawers>, <minecraft:comparator>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);



########################################
# Items
########################################
# Packing Tape
recipes.remove(<storagedrawers:tape>);
recipes.addShaped(<storagedrawers:tape>, [
    [null, null, null],
    [null, <minecraft:slime_ball> | <metaitem:rubber_drop>, null],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);

# Upgrade Template
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:stick>, <ore:storagedrawers.framed>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(8)
    .inputs([
        <minecraft:stick> * 4,
        <ore:storagedrawers.framed>
    ])
    .outputs([<storagedrawers:upgrade_template> * 2])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Status Upgrade MK2
recipes.addShaped(<storagedrawers:upgrade_status:1>, [
    [<minecraft:comparator>, <minecraft:stick>, <minecraft:comparator>],
    [<minecraft:stick>, <storagedrawers:upgrade_status:0>, <minecraft:stick>],
    [<minecraft:redstone>, <minecraft:stick>, <minecraft:redstone>]
]);
assembler.recipeBuilder()
    .circuit(8)
    .inputs([
        <minecraft:stick> * 2,
        <minecraft:redstone>,
        <minecraft:comparator>,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_status:0>
    ])
    .outputs([<storagedrawers:upgrade_status:1>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Redstone Max Upgrade
recipes.addShaped(<storagedrawers:upgrade_redstone:1>, [
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [<minecraft:stick>, <storagedrawers:upgrade_redstone:0> | <storagedrawers:upgrade_redstone:2>, <minecraft:stick>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(9)
    .inputs([
        <minecraft:stick> * 2,
        <minecraft:redstone> * 2,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_redstone:0> | <storagedrawers:upgrade_redstone:2>
    ])
    .outputs([<storagedrawers:upgrade_redstone:1>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Redstone Min Upgrade
recipes.addShaped(<storagedrawers:upgrade_redstone:2>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:stick>, <storagedrawers:upgrade_redstone:0> | <storagedrawers:upgrade_redstone:1>, <minecraft:stick>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
]);
assembler.recipeBuilder()
    .circuit(10)
    .inputs([
        <minecraft:stick> * 2,
        <minecraft:redstone> * 2,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_redstone:0> | <storagedrawers:upgrade_redstone:1>
    ])
    .outputs([<storagedrawers:upgrade_redstone:2>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Storage Downgrade
recipes.addShaped(<storagedrawers:upgrade_one_stack>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:flint>, <storagedrawers:upgrade_storage:*>, <minecraft:flint>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(8)
    .inputs([
        <minecraft:stick> * 3,
        <minecraft:flint>,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_storage:*>
    ])
    .outputs([<storagedrawers:upgrade_one_stack>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Storage Upgrade MK2
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:iron_ingot>, <storagedrawers:upgrade_storage:0>, <minecraft:iron_ingot>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(10)
    .inputs([
        <minecraft:stick> * 3,
        <minecraft:iron_ingot>,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_storage:0>
    ])
    .outputs([<storagedrawers:upgrade_storage:1>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Storage Upgrade MK3
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<minecraft:gold_ingot>, <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1>, <minecraft:gold_ingot>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(10)
    .inputs([
        <minecraft:stick> * 3,
        <minecraft:gold_ingot>,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1>
    ])
    .outputs([<storagedrawers:upgrade_storage:2>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Storage Upgrade MK4
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemDiamond>, <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1> | <storagedrawers:upgrade_storage:2>, <ore:gemDiamond>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(10)
    .inputs([
        <minecraft:stick> * 3,
        <ore:gemDiamond>,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1> | <storagedrawers:upgrade_storage:2>
    ])
    .outputs([<storagedrawers:upgrade_storage:3>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();

# Storage Upgrade MK5
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemEmerald>, <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1> | <storagedrawers:upgrade_storage:2> | <storagedrawers:upgrade_storage:3>, <ore:gemEmerald>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
assembler.recipeBuilder()
    .circuit(10)
    .inputs([
        <minecraft:stick> * 3,
        <ore:gemEmerald>,
        <storagedrawers:upgrade_template> | <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1> | <storagedrawers:upgrade_storage:2> | <storagedrawers:upgrade_storage:3>
    ])
    .outputs([<storagedrawers:upgrade_storage:4>])
    .duration(40)
    .EUt(7)
    .buildAndRegister();
