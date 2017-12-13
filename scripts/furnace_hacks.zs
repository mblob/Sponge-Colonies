import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

#remove all furnace smellting recipe

#vanilla ingots
val vanillaIngots = [<minecraft:iron_ingot>,<minecraft:gold_ingot>] as IItemStack[];
for item in vanillaIngots {
	furnace.remove(item);
}

#forestry ingots
val forestryIngots = [<forestry:ingot_copper>,<forestry:ingot_tin>,<forestry:ingot_bronze>] as IItemStack[];
for item in forestryIngots {
	furnace.remove(item);
}

#immersive engineering
val ieMetalIngots = [0,1,2,3,4,5,6,7,8] as int[];
val itemDef = <immersiveengineering:metal>.definition;
for i in ieMetalIngots {
	furnace.remove(itemDef.makeStack(i));
} 
