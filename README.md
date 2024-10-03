# Annihilation Recreated

## description

### Minecraft datapack that aim to recreate the boss [Annihilation](https://wynncraft.wiki.gg/wiki/Annihilation) from the [Wynncraft server](https://wynncraft.com/)

> [!WARNING]
> This datapack is a **fan project**, all credits goes to the **Wynncraft team**
>
> I only recreate the boss model/texture and attacks, the [music](https://www.youtube.com/watch?v=QiTEljrS05I) and the [structure](https://wynncraft.wiki.gg/wiki/Corruption_Portal) were directly taken from **Wynncraft**

> [!NOTE]
> this datapack require a RessourcePack [link](https://modrinth.com/datapack/annihilation-recreated/version/1.0)
>
> require [attributefix](https://modrinth.com/mod/attributefix) if you're ***not playing*** on ***vanilla difficulty*** in `/function annihilation:admin/_/set_config`
> 
> Current version work for `Minecraft 1.20.1`

All animations in this datapack where made using [Animated Java](https://animated-java.dev/)

## features

This datapack have a config menu, wich you can access it using `/function annihilation:admin/_/set_config`

> [!CAUTION]
> When loading the datapack for the first time, a massive structure, the **corruption portal**, will be placed from `195,-60,-1330` to `393,45,-1245`
>
> So please if you are loading this datapack in an already existing world, please check that there are nothing important in this region
>
> You can tp to it using `/function annihilation:admin/_/tp_to_portal`

### summoning Annihilation

You can summon **Annihilation** by going to the **corruption portal** and giving the portal (right-clicking) the items it demand (nether_star and netherite_ingot)

Or summon anywhere in the world using `/function annihilation:admin/_/summon`, or at the portal using `/function annihilation:boss_summoner/struct_boss_summon`

The difficulty of the boss can be change in `/function annihilation:admin/_/set_config`

`vanilla` : 800 Health

`modded` : 8000 Health

`vanilla` : 250000 Health

The damage also change depending on the diffculty

> [!NOTE]
> The boss Health scale depanding on how many player there are in 80 blocks area and if there are more than 3 players
>
> scaling stop at 6 players but it can be change manualy in the folder `/data/annihilation/functions/boss/health_scale.mcfunction`

### Annihilation behavior

All Annihilation attacks are base from the [wiki](https://wynncraft.wiki.gg/wiki/Annihilation#Combat)

The boss can change target (player or mob) as long as it doesn't have the tag: `anni_immune`

You can manually change target using `/execute as <entity> run function annihilation:set_target`

Or `/tag <entity> add anni_target`, but make sure that there only 1 target
