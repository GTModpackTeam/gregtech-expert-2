#packmode normal
# Imports
import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;



########################################
# Blocks
########################################
val elevators as IItemStack[] = [
    <elevatorid:elevator_white>,
    <elevatorid:elevator_orange>,
    <elevatorid:elevator_magenta>,
    <elevatorid:elevator_light_blue>,
    <elevatorid:elevator_yellow>,
    <elevatorid:elevator_lime>,
    <elevatorid:elevator_pink>,
    <elevatorid:elevator_gray>,
    <elevatorid:elevator_silver>,
    <elevatorid:elevator_cyan>,
    <elevatorid:elevator_purple>,
    <elevatorid:elevator_blue>,
    <elevatorid:elevator_brown>,
    <elevatorid:elevator_green>,
    <elevatorid:elevator_red>,
    <elevatorid:elevator_black>
];
for elevator in elevators {
    recipes.remove(elevator);
    if (elevator.displayName has "Black") {}
    else {
        elevator.addTooltip(format.green(I18n.format("modpack.tooltip.elevator")));
    }
}
recipes.addShaped(<elevatorid:elevator_black>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:gearSmallSteel>, <ore:frameGtSteel>, <ore:gearSmallSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);
chemical_bath.recipeBuilder()
    .inputs([<ore:blockElevator>])
    .fluidInputs([<liquid:chlorine> * 144])
    .outputs([<elevatorid:elevator_black>])
    .duration(400)
    .EUt(7)
    .buildAndRegister();
for i, elevator in elevators {
    chemical_bath.recipeBuilder()
        .inputs([<ore:blockElevator>])
        .fluidInputs([colorLiquid[i] * 18])
        .outputs([elevator])
        .duration(20)
        .EUt(7)
        .buildAndRegister();
}
