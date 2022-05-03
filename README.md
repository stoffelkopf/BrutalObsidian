**The curently supported version of Brutal Doom is brutalv21.pk3**

# BrutalObsidian

For those of you who don't know [Obsidian](https://github.com/dashodanger/Obsidian/releases/) is a random map generator for Doom. It's really good and you should check it out.

**Features**

* New monsters: Belphegor, Juggernaut, Mother Demon, Volcabus, Ancient Arachnotron, Zyberdemon (from 00_Zombie_00) 
* New weapons: BFG 10k, Grenade Launcher and Railgun
* Probability of each of the new monsters/weapons appearing can be tweaked or switched off completely
* Grenades appear alongside other ammo pickups 
* Brutal Doom specific pickups

The generated Level WAD must be loaded after Brutal Doom PK3 !!!!!!


**How to use - Latest development version**

1) Download Obsidian if you haven't already and make sure you have the latest supported Brutal Doom. See below for current supported versions.

2) Download or clone this repository.

3) If on Windows run BuildPK3.bat, requires an up to date version of Powershell and .NET
If on *nix run BuildPK3.sh, requires zip

If this builds successfully then move on to step 4. If this method fails or otherwise can't be used then try the manual method in the next step

3 - Manual) Add all the folders to a zip folder called BrutalObsiadian.zip

Rename it to change the extension from .zip to .pk3, if on Windows you can use the included zip2pk3.bat to do this for you.

Note that if you downloaded this from github rather than cloning the repo you can't just rename that .zip, first you must unzip it, then put the folders that are *inside* the BrutalObsidian-whatever folder that comes out into a zip. This is the way Gitlab works, there's nothing I can do about it.

4) Copy or move the pk3 to Obsidians's addon directory. This will be in the same place as Obsidian.exe on Windows or /usr/share/obsidian/addons on Linux.

5) Run Obsidian, select Menu, Addon List and check the box for BrutalObsidian. Restart Obsidian.

6) Click build to generate a wad with the new maps.

7) Load this wad **after** Brutal Doom

8) Happy bug hunting.

# Current supported versions

  | Version | Expected filename
-- | -- | --
Obsdian Beta 19
Brutal Doom | 21 | brutalv21.pk3


**Known issues**

* If you get "Script error, "brutalv20b.pk3:cvarinfo" line 1: cvar 'bd_bloodamount' already exists" then you are loading brutal doom twice. Try loading *just* the generated wad, it should pull in brutal automatically.
* Currently any vanilla Doom/Doom2 maps generated while this mod is active can have missing textures or objects. This will be fixed before the next release.
* double check that the pk3 is BrutalObAddon.pk3 not BrutalObAddon.pk3.zip

**A note on compiled acs code**
This mod contains some precompiled acs objects in BrutalObAddon/acs. The sourcecode for these is inlcuded in the same folder with the .acs extension. If you prefer to compile this code yourself you will need acc (I compiled with version 1.56) which is available in source and binary forms on the zdoom [download page](https://zdoom.org/downloads). The compiled object should have the same name as the source file but with .acs replaced with .o and be placed in the acs folder.

[Obsidian Download](https://github.com/dashodanger/Obsidian/releases)