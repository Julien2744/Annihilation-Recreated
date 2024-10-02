#try to place the structure
execute unless score #structPlacer loadStructure matches 1 run function annihilation:initialization/init_structure
execute unless score #structPlacer structureTimer matches 25 run scoreboard players add #structPlacer structureTimer 1