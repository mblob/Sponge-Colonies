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
for forestryItem in forestryIngots {
	furnace.remove(forestryItem);
}

#immersive engineering
val ieIngots = [0,1,2,3,4,5,6,7,8] as int[];
val ieItemDef = <immersiveengineering:metal>.definition;
for i in ieIngots {
	furnace.remove(ieItemDef.makeStack(i));
} 

#thermal foundation
val tfIngots = [128,129,130,131,132,133,134,135,136,160,162,163,165,166,167] as int[];
val tfItemDef = <thermalfoundation:material>.definition;
for i in tfIngots {
	furnace.remove(tfItemDef.makeStack(i));
}