#packmode normal
# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Wireless Crafting Terminal
recipes.remove(<wct:wct>);
recipes.addShaped(<wct:wct>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.luv>, <appliedenergistics2:part:360>, <metaitem:sensor.luv>],
    [<metaitem:stickOsmiridium>, <metaitem:emitter.luv>, <metaitem:stickOsmiridium>]
]);

# Wireless Fluid Terminal
recipes.remove(<wft:wft>);
recipes.addShaped(<wft:wft>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:520>, <metaitem:sensor.iv>],
    [<metaitem:stickOsmiridium>, <metaitem:emitter.iv>, <metaitem:stickOsmiridium>]
]);

# Wireless Interface Terminal
recipes.remove(<wit:wit>);
recipes.addShaped(<wit:wit>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:480>, <metaitem:sensor.iv>],
    [<metaitem:stickOsmiridium>, <metaitem:emitter.iv>, <metaitem:stickOsmiridium>]
]);

# Wireless Pattern Terminal
recipes.remove(<wpt:wpt>);
recipes.addShaped(<wpt:wpt>, [
    [<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:wireless_terminal>, <appliedenergistics2:dense_energy_cell>],
    [<metaitem:sensor.iv>, <appliedenergistics2:part:340>, <metaitem:sensor.iv>],
    [<metaitem:stickOsmiridium>, <metaitem:emitter.iv>, <metaitem:stickOsmiridium>]
]);

# Infinity Booster Card
recipes.remove(<ae2wtlib:infinity_booster_card>);
recipes.addShaped(<ae2wtlib:infinity_booster_card>, [
    [<metaitem:sensor.iv>, <appliedenergistics2:material:42>, <metaitem:sensor.iv>],
    [<appliedenergistics2:material:42>, <metaitem:cover.digital.wireless>, <appliedenergistics2:material:42>],
    [<metaitem:sensor.iv>, <appliedenergistics2:material:42>, <metaitem:sensor.iv>]
]);

# Magnet Card
recipes.remove(<wct:magnet_card>);
recipes.addShaped(<wct:magnet_card>, [
    [<metaitem:plateRedstone>, <appliedenergistics2:part:300>, <metaitem:plateLapis>],
    [<metaitem:stickNeodymiumMagnetic>, <appliedenergistics2:material:28>, <metaitem:stickNeodymiumMagnetic>],
    [<metaitem:stickNeodymiumMagnetic>, <metaitem:ingotNeodymiumMagnetic>, <metaitem:stickNeodymiumMagnetic>]
]);
