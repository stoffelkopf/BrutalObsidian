-------------------------------------------------------------------
--  MODULE: Brutal Obsidian
-------------------------------------------------------------------
--
--  Copyright (C) 2022-2024 Stoffelkopf
--
--  This program is free software; you can redistribute it and/or
--  modify it under the terms of the GNU General Public License
--  as published by the Free Software Foundation; either version 2,
--  of the License, or (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
-------------------------------------------------------------------

BD = {}

BD.MONSTERS =
{
  ----------------
  --Tough Bosses--
  ----------------
  Juggernaut =
  {
    id = 303,
    r = 48,
    h = 88,
    level = 9,
    boss_type = "tough",
    boss_prob = 15,
    boss_limit = 1,
    prob = 10,
    crazy_prob = 10,
    health = 8000,
    damage = 200,
    attack = "hitscan",
    outdoor_factor = 3.0,
    density = 0.1,
    weap_prefs = { bfg=5.0 },
    room_size = "large",
    nasty = true,
    boss_replacement = "Spiderdemon",
  },

  Motherdemon =
  {
    id = 348,
    r = 60,
    h = 110,
    level = 9,
    health = 6000,
    boss_type = "tough",
    boss_prob = 15,
    boss_limit = 1,
    prob = 10, --10
    crazy_prob = 0, --10
    damage = 200,
    attack = "missile",
    outdoor_factor = 3.0,
    density = 0.1,
    weap_prefs = { bfg=5.0 },
    room_size = "large",
    nasty = true,
    boss_replacement = "Spiderdemon",
  },

  Zyberdemon =
  {
    id = 324,
    r = 40,
    h = 110,
    level = DOOM.MONSTERS.Cyberdemon.level,
    boss_type = DOOM.MONSTERS.Cyberdemon.boss_type,
    boss_prob = DOOM.MONSTERS.Cyberdemon.boss_prob,
    boss_limit = 1,
    prob = DOOM.MONSTERS.Cyberdemon.prob,
    crazy_prob = DOOM.MONSTERS.Cyberdemon.crazy_prob,
    health = DOOM.MONSTERS.Cyberdemon.health,
    damage = DOOM.MONSTERS.Cyberdemon.damage,
    attack = "hitscan",
    density = DOOM.MONSTERS.Cyberdemon.density,
    weap_min_damage = DOOM.MONSTERS.Cyberdemon.weap_min_damage,
    weap_prefs = DOOM.MONSTERS.Cyberdemon.weap_prefs,
    room_size = DOOM.MONSTERS.Cyberdemon.room_size,
    infight_damage = DOOM.MONSTERS.Cyberdemon.infight_damage,
  },

  ---------------
  --Mini Bosses--
  ---------------
  Belphegor =
  {
    id = 302,
    r = 32,
    h = 88,
    level = 7,
    boss_type = "minor",
    boss_prob = 50,
    prob = 6.4,
    crazy_prob = 12,
    health = 2000,
    damage = 150,
    attack = "missile",
    outdoor_factor = 3.0,
    density = 0.1,
    weap_prefs = { bfg=5.0 },
    room_size = "medium",
  },

  Volcabus =
  {
    id = 337,
    r = DOOM.MONSTERS.mancubus.r,
    h = DOOM.MONSTERS.mancubus.h,
    level = DOOM.MONSTERS.mancubus.level+1,
    prob = 7,
    boss_type = "nasty",
    boss_prob = 50,
    health = 1050,
    damage = DOOM.MONSTERS.mancubus.damage*1.2,
    attack = DOOM.MONSTERS.mancubus.attack,
    give = DOOM.MONSTERS.mancubus.give,
    density = DOOM.MONSTERS.mancubus.density,
    room_size = DOOM.MONSTERS.mancubus.room_size,
    disloyal = DOOM.MONSTERS.mancubus.disloyal,
    trap_factor = DOOM.MONSTERS.mancubus.trap_factor,
    infight_damage = DOOM.MONSTERS.mancubus.infight_damage,
    weap_min_damage = 110,
  },

  ------------
  --Infantry--
  ------------

  --As of v20b the evil marine replaces the ss. A script checks if it is in a wolfenstein themed level and changes it back if so.
  ss_nazi = REMOVE_ME,

  EvilMarine =
  {
    id = 84,
    r = 20, --the evil marine is actually 14 but I've left it as 20 incase it does somehow end up as an ss guard.
    h = 56,
    level = 8,
    prob = 0,
    crazy_prob = 7,
    health = 200,
    damage = 75,
    attack = "hitscan",
    cage_factor = 0,  -- never put in cages
    density = 0.5,
    infight_damage = 8.0,
  },

  BrutalSS =
  {
    id = 311,
    r = 20,
    h = 56 ,
    level = 1,
    theme_prob = 35,
    prob=0,
    health = 90,
    damage = 20,
    attack = "hitscan",
    cage_factor = 0,
    density = 1.0,
    allow_in_theme = "wolf",
    give = { {weapon="Mp40"}, {ammo="bullet",count=20} },
  },

  EasyMarine =
  {
    id = 307,
    r = 14,
    h = 56 ,
    level = 5,
    prob = 0, --9
    crazy_prob = 7,
    health = 80,
    damage = 5,
    attack = "hitscan",
    cage_factor = 0,
    density = 0.5,
    infight_damage = 8.0,
  },

  ClassicSS =
  {
    id = 313,
    r = DOOM.MONSTERS.ss_nazi.r,
    h = DOOM.MONSTERS.ss_nazi.h,
    level = DOOM.MONSTERS.ss_nazi.level,
    theme_prob  = 140,
    prob=0,
    health = DOOM.MONSTERS.ss_nazi.health,
    damage = DOOM.MONSTERS.ss_nazi.damage,
    attack = DOOM.MONSTERS.ss_nazi.attack,
    give = DOOM.MONSTERS.ss_nazi.give,
    density = DOOM.MONSTERS.ss_nazi.density,
    infight_damage = DOOM.MONSTERS.ss_nazi.infight_damage,
    allow_in_theme = "wolf",
    give = {ammo="bullet",count=10},
  },

  AncientArachnotron =
  {
    id = 336,
    r = DOOM.MONSTERS.arach.r,
    h = DOOM.MONSTERS.arach.h,
    level = DOOM.MONSTERS.arach.level+1,
    prob = 10,
    health = 800,
    damage = DOOM.MONSTERS.arach.damage,
    attack = DOOM.MONSTERS.arach.attack,
    give = DOOM.MONSTERS.arach.give,
    density = DOOM.MONSTERS.arach.density,
    room_size = DOOM.MONSTERS.arach.room_size,
    disloyal = DOOM.MONSTERS.arach.disloyal,
    trap_factor = DOOM.MONSTERS.arach.trap_factor,
    infight_damage = DOOM.MONSTERS.arach.infight_damage,
    weap_min_damage = 90,
  },

  --Seperate Rifle and Pistol Zombie so Oblige can model them more accurately
  zombie = REMOVE_ME,

  PistolZombie =
  {
    id = 344,
    r = 20,
    h = 56,
    level = 1,
    prob = 60,
    health = 50,
    damage = 1.2,
    attack = "hitscan",
    give = { {weapon="bdpistol"}, {ammo="clip1",count=10} },
    density = 1.7,
    room_size = "small",
    disloyal = true,
    trap_factor = 0.01,
    infight_damage = 1.9,
  },

  RifleZombie =
  {
    id = 343,
    r = 20,
    h = 56,
    level = 1,
    prob = 60,
    health = 50,
    damage = 1.8,
    attack = "hitscan",
    give = { {weapon="AssaultRifle"}, {ammo="bullet",count=10} },
    density = 1.7,
    room_size = "small",
    disloyal = true,
    trap_factor = 0.01,
    infight_damage = 2.2,
  },

  --SMG Zombie supposedly has the exact same DPS etc as shotgun zombie
  SMGZombie =
  {
    id = 363,
    r = DOOM.MONSTERS.shooter.r,
    h = DOOM.MONSTERS.shooter.h,
    level = DOOM.MONSTERS.shooter.level,
    prob = DOOM.MONSTERS.shooter.prob,
    health = DOOM.MONSTERS.shooter.health,
    damage = DOOM.MONSTERS.shooter.damage,
    attack = DOOM.MONSTERS.shooter.attack,
    give = { {weapon="Smg"}, {ammo="clip1",count=10} },
    weap_needed = { Smg=true },
    weap_min_damage = DOOM.MONSTERS.shooter.weap_min_damage,
    density = DOOM.MONSTERS.shooter.density,
    species = DOOM.MONSTERS.shooter.species,
    room_size = DOOM.MONSTERS.shooter.room_size,
    disloyal = DOOM.MONSTERS.shooter.disloyal,
    trap_factor = DOOM.MONSTERS.shooter.trap_factor,
    infight_damage = DOOM.MONSTERS.shooter.infight_damage,
  },

  gunner =
  {
     id = DOOM.MONSTERS.gunner.id,
     r = DOOM.MONSTERS.gunner.r,
     h = DOOM.MONSTERS.gunner.h,
     level = DOOM.MONSTERS.gunner.level,
     theme_prob = DOOM.MONSTERS.gunner.prob,
     prob=0,
     health = DOOM.MONSTERS.gunner.health,
     damage = DOOM.MONSTERS.gunner.damage,
     attack = DOOM.MONSTERS.gunner.attack,
     give = { {weapon="Minigun"}, {ammo="bullet",count=10} },
     weap_needed = { AssaultRifle=true },
     weap_min_damage = DOOM.MONSTERS.gunner.weap_min_damage,
     density = DOOM.MONSTERS.gunner.density,
     species = DOOM.MONSTERS.gunner.species,
     room_size = DOOM.MONSTERS.gunner.room_size,
     disloyal = DOOM.MONSTERS.gunner.disloyal,
     trap_factor = DOOM.MONSTERS.gunner.trap_factor,
     infight_damage = DOOM.MONSTERS.gunner.infight_damage,
  }
}

BD.WEAPONS =
{
--Some weapons without a spawn id are included. This is so we can add them as dropped items for the monsters.--
--eg the Mp40 is never placed in maps but is dropped by brutal_ss. It needs an entry here so Oblige can model this.--

  HandGrenade =
  {
    id=299,
    pref=1,
    add_prob=0,
    --start_prob=10
    rate=1,
    damage=70,
    splash={60,45,30,30,20,10},
    attack="missile",
    ammo="grenade",
    per=1,
    rarity=2,
    give={ {ammo="grenade",count=1} },
  },

  GrenadeLauncher =
  {
    id=298,
    level = 3,
    pref = 30,
    add_prob = 25,
    rate=1,
    damage=100,
    splash={60,45,30,30,20,10},
    attack="missile",
    ammo="rocket",
    per=1,
    rarity=2,
    give={ {ammo="rocket",count=6} },
  },

  railgun =
  {
    id=297,
    level = 5,
    pref = 30,
    add_prob = 15,
    rate=1,
    damage=1000,
    attack="missile",
    ammo="cell",
    per=1,
    rarity=2,
    give={ {ammo="cell",count=50} },
  },

  bfg10k =
  {
    id = 296,
    level = 8,
    pref = 15,
    upgrades = "bfg",
    add_prob = 20,
    mp_prob = 6,
    attack = "missile",
    rate = 0.65,  -- tweaked value, normally 0.8
    damage = 300,
    splash = {70,70,70,70, 70,70,70,70, 70,70,70,70},
    ammo = "cell",
    per = 40,
    give = { {ammo="cell",count=40} },
    bonus_ammo = 40,
  },

  bdpistol =
  {
    id = 320,
    level = DOOM.WEAPONS.pistol.level,
    add_prob = DOOM.WEAPONS.pistol.add_prob,
    pref = DOOM.WEAPONS.pistol.pref,
    attack = "hitscan",
    rate = DOOM.WEAPONS.pistol.rate,
    damage = DOOM.WEAPONS.pistol.damage,
    ammo = "clip1",
    give = { {ammo="clip1",count=10} },
    per = 1,
  },

  Smg =
  {
    id = 339,
    level = 1,
    pref = 70,
    upgrades = "bdpistol",
    add_prob = 45,
    attack = "hitscan",
    rate = 6.5,
    accuracy = 90,
    damage = 8,
    ammo = "clip1",
    per = 1,
    give = { {ammo="clip1",count=40} },
  },

  AssaultRifle =
  {
    level = 1.5,
    pref = 70,
    attack = "hitscan",
    rate = 5.0,
    accuracy = 85,
    damage = 10,
    ammo = "bullet",
    per = 1,
    give = { {ammo="bullet",count=10} },
    bonus_ammo = 50,
  },

  Minigun =
  {
    id = 2002,
    level = 1.5,
    pref = 70,
    upgrades = "AssaultRifle",
    add_prob = 40,
    attack = "hitscan",
    rate = 8.5,
    accuracy = 80,
    damage = 10,
    ammo = "bullet",
    per = 1,
    give = { {ammo="bullet",count=20} },
    bonus_ammo = 50,
  },

  Mp40 =
  {
    level = 1,
    pref = 70,
    upgrades = "bdpistol",
    attack = "hitscan",
    rate = 5.5,
    accuracy = 90,
    damage = 8,
    ammo = "clip1",
    per = 1,
    give = { {ammo="clip1",count=20} },
  },

  Axe =
  {
    upgrades = "fist",
    attack = "melee",
    rate = 1.5,
    damage = 52,
  },

  AssaultShotgun =
  {
    id = 340,
    level = 2,
    pref = 30,
    add_prob = 35,
    attack = "hitscan",
    rate = 5.0,
    accuracy = 70,
    damage = 70,
    ammo = "shell",
    per = 1,
    give = { {ammo="shell",count=10} },
  },

  Unmaker =
  {
    id = 341,
    level = 9,
    pref = 12,
    add_prob = 20,
    hide_prob = 35,
    attack = "missile",
    rate = 8.5,
    accuracy = 80,
    damage = 47,
    ammo = "SoulAmmo",
    per = 1,
    give = { {ammo="SoulAmmo",count=200} },
  },
}

BD.PICKUPS =
{

  grenade =
  {
    id = 300,
    kind = "ammo",
    add_prob = 10,
    give = { {ammo="grenade",count=5} }, --actually it only gives 1 but this was the only way to stop Oblige flooding maps with them
    start_prob = 0,
  },

  Skel_Poster =
  {
    id = 323,
    r = 36,
    h = 128,
    kind = "health",  --not ideal but it works
    rank = 1,
    add_prob = 20,
    give = { {health=10} },
    theme_prob = 200,
    start_prob = 0,
  },

  clip1 =
  {
    id = 342,
    kind = "ammo",
    add_prob = 30,
    give = { {ammo="clip1",count=10} },
  },

  fakesoulammo = --a hack to stop the unmaker causing an assertation fail
  {
    id = 342,
    kind = "ammo",
    add_prob = 10,
    give = { {ammo="SoulAmmo",count=50} },
  }
}

BD.NICE_ITEMS =
{

  --rarely useful in oblige maps anyway
  goggles = REMOVE_ME,

  --replaced in brutal by the captured marines. I've brought it back as it's own pickup and handled the captured marines seperately.
  invis = REMOVE_ME,

  BlurSphere =
  {
    id = 318,
    kind = "powerup",
    add_prob = 7,
    start_prob = 0,
    closet_prob = 15,
    time_limit = 100,
  },

  --captured marines. The probabilities are kept similar to that of the Blursphere as that matches how often they will appear in official Doom maps.
  CapturedMarineShotgun =
  {
    id = 345,
    kind = "other",
    add_prob = 6,
    start_prob = 0,
    closet_prob = 15,
    secret_prob = 20,
    level = 2,
  },

  CapturedMarineMinigun =
  {
    id = 346,
    kind = "other",
    add_prob = 6,
    start_prob = 0,
    closet_prob = 15,
    secret_prob = 20,
    level = 4,
  },

  CapturedMarinePlasma =
  {
    id = 347,
    kind = "other",
    add_prob = 6,
    start_prob = 0,
    closet_prob = 15,
    secret_prob = 20,
    level = 6,
  },

  berserk =
  {
    id = DOOM.NICE_ITEMS.berserk.id,
    kind = DOOM.NICE_ITEMS.berserk.kind,
    add_prob = 30,
    closet_prob =15,
    secret_prob = 0,
    give = DOOM.NICE_ITEMS.berserk.give,
  },

  DemonRuneBaron =
  {
    id = 371,
    kind = "powerup",
    add_prob = 6,
    start_prob = 0,
    closet_prob = 12,
    time_limit = 30,
  },

  DemonRuneRevenant =
  {
    id = 372,
    kind = "powerup",
    add_prob = 6,
    start_prob = 0,
    closet_prob = 12,
    time_limit = 30,
  }
}

 function BD.decorate()

    gui.wad_insert_file("data/brutaloblige/BrutalMonsters.dec","BRUMONS");
    gui.wad_insert_file("data/brutaloblige/Decorate.dec","DECORATE");
    gui.wad_insert_file("data/brutaloblige/Bolognese.dec","BOLOGNES");
    gui.wad_insert_file("data/brutaloblige/BrutalWeapons.dec","BRUWEPS");
    gui.wad_insert_file("data/brutaloblige/BrutalPickups.dec","BRUPUPS");
    gui.wad_insert_file("data/brutaloblige/zscript","ZSCRIPT");
    gui.wad_insert_file("data/brutaloblige/base.zscript","ZBASE");
    gui.wad_insert_file("data/brutaloblige/NotCompatibleWithBrutality.zscript","ZBASE2");
    gui.wad_insert_file("data/brutaloblige/wolfmons.zscript","WOLFMONS");
    gui.wad_insert_file("data/brutaloblige/BaseMonsters.zscript","BASEMONS");
    gui.wad_insert_file("data/brutaloblige/TRNSLATE","TRNSLATE");
    gui.wad_insert_file("data/brutaloblige/LOADACS","LOADACS");
    gui.wad_insert_file("data/brutaloblige/A_START","A_START");
    gui.wad_insert_file("data/brutaloblige/BOLOGACS.o","BOLOGACS");
    gui.wad_insert_file("data/brutaloblige/A_START","A_END");

 end

 function BD.gameinfo()
  -- local data =
    -- {
      -- '//ZDoom GAMEINFO lump for Brutal Oblige\n'
      -- 'IWAD="Doom2.wad"\n'
    -- }

  -- table.insert(data,'LOAD="brutalv20b.pk3","hellonearthstarterpack.wad","bfriend1.pk3"\n')
-- --no harm in loading the starterpack wad if not used and throws no error if not found so load it regardless of if that module's actually being used

  -- gui.wad_add_text_lump("GAMEINFO", data);
 end

function BD.all_done()

  BD.decorate();
  BD.gameinfo();

end

function BD.setup()
-- local confdata =
    -- {
    -- 'setslot 1 Chain_Saw ClassicModernSaw Melee_Attacks ClassicFist ClassicSaw\n'
    -- 'setslot 2 DualRifles Rifle  BrutalPistol ClassicPistol MP40\n'
    -- 'setslot 3 Shot_Gun SSG ClassicShotgun ClassicSSG\n'
    -- 'setslot 4 MiniGun ClassicChaingun HitlersBuzzsaw D4Machinegun\n'
    -- 'setslot 5 GrenadeLauncher Rocket_Launcher ClassicRocketLauncher GrenadeLauncherOblige\n'
    -- 'setslot 6 RailGun DualPlasmaRifles Plasma_Gun ClassicPlasmaRifle RailGunOblige\n'
    -- 'setslot 7 BFG10k BIG_FUCKING_GUN VanillaBFG9000 BFG10KOblige D4GaussCannon\n'
    -- 'setslot 8 HellishMissileLauncher\n'
    -- 'setslot 9 FlameCannon\n'
    -- 'setslot 0 HandGrenades HandGrenadesOblige\n'

    -- }
    -- gui.wad_add_text_lump("KEYCONF", confdata);
 end

function BD.monster_setup(self)

  module_param_up(self)

  for _,opt in pairs(self.options) do

    local M = GAME.MONSTERS[string.sub(opt.name, 7)]

   if M and PARAM[opt.name] ~= gui.gettext("Default") then
      M.prob    = PARAM[opt.name] * 100
      M.density = M.prob * .006 + .1

      -- allow Spectres to be controlled individually
      M.replaces = nil

      -- loosen some of the normal restrictions
      M.skip_prob = nil
      M.crazy_prob = nil

      if M.prob > 40 then
        M.level = 1
        M.weap_min_damage = nil
      end

      if M.prob > 200 then
        M.boss_type = nil
      end
    end
  end

end

OB_MODULES["bd_doom_monster_control"] =
{

  name = "bd_doom_monster_control",
  label = _("Brutal Doom Monster Control"),
  game = "doomish",
  engine = "idtech_1",
  port = "!limit_enforcing",

  tables =
  {
    BD
  },

  hooks =
  {
    setup = BD.monster_setup,
    all_done = BD.all_done,
  },

  options =
  {

     {
	  name= "float_AncientArachnotron",
      label="Ancient Arachnotron",
      valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      tooltip="An Arachnotron running on ancient demonic tech. Bigger and tougher than their more modernised cousins.",
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

    {
	  name= "float_Volcabus",
      label="Volcabus",
      valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      tooltip="An even fatter Mancubus with even more massive cannons.",
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

	{
      name= "float_Belphegor",
	  label="Belphegor",
      valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      tooltip="Imagine fighting a Baron of Hell on steroids. You can use that as your happy place when you have to go up against this guy.",
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

    {
      name= "float_Juggernaut",
	  label="Juggernaut",
      valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      tooltip="Do you know how much damage the Juggernaut would take if it just rolled straight over you? I'll give you a clue, it's none at all.",
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

    {
	  name= "float_Zyberdemon",
      label="Zyberdemon",
      valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      tooltip="A Cyberdemon with the rocket launcher replaced with a chaingun",
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

    {
	  name= "float_Motherdemon",
      label="Mother Demon (Beta)",
      valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      tooltip="A large demonic larva with dead black eyes, four arms and a skull-like face. Her mouth is filled with many long, sharp teeth. Good luck :)",
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

	{
	  name= "float_PistolZombie",
      label=_("Pistol Zombie"),
	  valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
	},

	{
	  name= "float_RifleZombie",
	  label=_("Rifle Zombie"),
	  valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
    },

	{
	  name= "float_SMGZombie",
	  label=_("SMG Zombie"),
	  valuator = "slider",
      min = 0,
      max = 20,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None at all),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),20:20 (INSANE)"),
      randomize_group="monsters",
	}
  }
}

function BD.weapon_setup(self)

  module_param_up(self)

  for _,opt in pairs(self.options) do

    local W = GAME.WEAPONS[string.sub(opt.name, 7)]

    if W and PARAM[opt.name] ~= gui.gettext("Default") then
      W.add_prob = PARAM[opt.name] * 100
      W.pref     = W.add_prob * 0.28 + 1

      -- loosen some of the normal restrictions
      W.level = 1
      W.start_prob = nil
    end
  end -- for opt

end

OB_MODULES["bd_doom_weapon_control"] =
{

  name = "bd_doom_weapon_control",
  label = _("Brutal Doom Weapon Control"),
  game = "doomish",
  engine = "idtech_1",
  port = "!limit_enforcing",

  tables =
  {
    BD,
  },

  hooks =
  {
    setup = BD.weapon_setup
  },

  options =
  {

    {
   	  name= "float_GrenadeLauncher",
	  label="Grenade Launcher",
      valuator = "slider",
      min = 0,
      max = 10,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),10:10 (I LOVE IT)"),
      randomize_group="pickups",
    },

    {
   	  name= "float_railgun",
      label="Railgun",
      valuator = "slider",
      min = 0,
      max = 10,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),10:10 (I LOVE IT)"),
      randomize_group="pickups",
    },

    {
   	  name= "float_bfg10k",
      label="B.F.G 10000",
      valuator = "slider",
      min = 0,
      max = 10,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),10:10 (I LOVE IT)"),
      randomize_group="pickups",
    },

    {
   	  name= "float_Smg",
      label="SMG",
      valuator = "slider",
      min = 0,
      max = 10,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),10:10 (I LOVE IT)"),
      randomize_group="pickups",
    },

    {
   	  name= "float_AssaultShotgun",
      label="Assault Shotgun",
      valuator = "slider",
      min = 0,
      max = 10,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),      presets = _("0:0 (None),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),10:10 (I LOVE IT)"),
      randomize_group="pickups",
    },

    {
   	  name= "float_Unmaker",
      label="The Unmaker",
      valuator = "slider",
      min = 0,
      max = 10,
      increment = .02,
      default = _("Default"),
      nan = _("Default"),
      presets = _("0:0 (None),.02:0.02 (Scarce),.14:0.14 (Less),.5:0.5 (Plenty),1.2:1.2 (More),3:3 (Heaps),10:10 (I LOVE IT)"),
      randomize_group="pickups",
    }
  }
}