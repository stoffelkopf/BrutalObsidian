**The curently supported version of Brutal Doom is 21 / 22 Public Beta**

# BrutalObsidian

For those of you who don't know [Obsidian](https://github.com/dashodanger/Obsidian/releases/) is a random map generator for Doom. It's really good and you should check it out.

**Features**

* New monsters: Belphegor, Juggernaut, Mother Demon, Volcabus, Ancient Arachnotron, Zyberdemon (from 00_Zombie_00) 
* New weapons: BFG 10k, Grenade Launcher and Railgun
* Probability of each of the new monsters/weapons appearing can be tweaked or switched off completely
* Grenades appear alongside other ammo pickups 
* Brutal Doom specific pickups

The generated Level WAD must be loaded after Brutal Doom PK3 !!!!!!


**Known issues**

* If you get "Script error, "brutalv20b.pk3:cvarinfo" line 1: cvar 'bd_bloodamount' already exists" then you are loading brutal doom twice. Try loading *just* the generated wad, it should pull in brutal automatically.
* Currently any vanilla Doom/Doom2 maps generated while this mod is active can have missing textures or objects. This will be fixed before the next release.
* double check that the pk3 is BrutalObAddon.pk3 not BrutalObAddon.pk3.zip

**A note on compiled acs code**
This mod contains some precompiled acs objects in BrutalObAddon/acs. The sourcecode for these is inlcuded in the same folder with the .acs extension. If you prefer to compile this code yourself you will need acc (I compiled with version 1.56) which is available in source and binary forms on the zdoom [download page](https://zdoom.org/downloads). The compiled object should have the same name as the source file but with .acs replaced with .o and be placed in the acs folder.

[Obsidian Download](https://github.com/dashodanger/Obsidian/releases)
