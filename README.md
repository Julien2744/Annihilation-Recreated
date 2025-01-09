# Annihilation Recreated

## description

### Minecraft datapack that aim to recreate the boss [Annihilation](https://wynncraft.wiki.gg/wiki/Annihilation) from the [Wynncraft server](https://wynncraft.com/)

> [!WARNING]
> This datapack is a **fan project**, all credits goes to the **Wynncraft team**
>
> I only recreate the boss model/texture and attacks, the [music](https://www.youtube.com/watch?v=QiTEljrS05I) and the [structure](https://wynncraft.wiki.gg/wiki/Corruption_Portal) were directly taken from **Wynncraft**

> [!NOTE]
> this datapack require a ResourcePack [link](https://modrinth.com/datapack/annihilation-recreated/version/b2-1_mc1.21.1)
>
> require [attributefix](https://modrinth.com/mod/attributefix) if you're ***not playing*** on ***vanilla difficulty*** in `/function annihilation:admin/_/set_config`
> Or if you are challenging the boss with more than 3 players
> 
> Current version work for `Minecraft 1.21.1`

All animations in this datapack where made using [Animated Java](https://animated-java.dev/)

The `animated_java` files are not included due to how many there are (1670+ files), and because the file are 99% models and animations.
You can found them on the [modrinth](https://modrinth.com/datapack/annihilation-recreated/) page where you can download the datapack

## features

This datapack have a config menu, wich you can access it using `/function annihilation:admin/_/set_config`

> [!CAUTION]
> When loading the datapack for the first time, a massive structure, the **corruption portal**, will be placed from `195,-60,-1330` to `393,45,-1245`
>
> Unless if the gamerule `doMobSpawning` is set to false
>
> So please if you are loading this datapack in an already existing world, please check that there are nothing important in this region
>
> You can tp to it using `/function annihilation:admin/_/tp_to_portal`

### summoning Annihilation

You can summon **Annihilation** by going to the **corruption portal** and giving the portal a Corrupted Star

Here the recipe:

![corrupted star recipe](https://github.com/Julien2744/Annihilation-Recreated/blob/1.21.1/image/crafting-corrupted_star.png)

Or summon anywhere in the world using `/function annihilation:admin/_/summon`, or at the portal using `/function annihilation:admin/_/summon_at_portal`

The difficulty of the boss can be change in `/function annihilation:admin/_/set_config`

`vanilla` : 800 Health

`modded` : 2500 Health

`heavy_modded` : 8000 Health

The damage also change depending on the diffculty

> [!NOTE]
> The boss health scale depanding on how many players there are in 64 blocks radius and if there are more than 3 players
>
> scaling stop at 6 players but it can be change manualy in the file `/data/annihilation/functions/boss/health_scale.mcfunction`

### Annihilation behavior

All Annihilation attacks are base from the [wiki](https://wynncraft.wiki.gg/wiki/Annihilation#Combat)

The boss can change/attack target (player or mob) as long as it doesn't have the tag: `anniR.immune`

You can manually change target using `/execute as <entity> run function annihilation:set_target`

Or `/tag <entity> add anniR.target`, but make sure that there only 1 target



- dev note: A lot of attack ; behavior ; and models are not 100% accurate since it's almost impossible and my only visual source where player soloing Annihilation.
