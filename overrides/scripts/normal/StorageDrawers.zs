#packmode normal



########################################
# Items
########################################
# Storage Upgrade MK2
recipes.addShaped(<storagedrawers:upgrade_storage:1>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<metaitem:ingotIron>, <storagedrawers:upgrade_storage>, <metaitem:ingotIron>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK3
recipes.addShaped(<storagedrawers:upgrade_storage:2>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<metaitem:ingotGold>, <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1>, <metaitem:ingotGold>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK4
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemDiamond>, <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1> | <storagedrawers:upgrade_storage:2>, <ore:gemDiamond>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);

# Storage Upgrade MK5
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
    [<ore:gemEmerald>, <storagedrawers:upgrade_storage:0> | <storagedrawers:upgrade_storage:1> | <storagedrawers:upgrade_storage:2> | <storagedrawers:upgrade_storage:3>, <ore:gemEmerald>],
    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]
]);
