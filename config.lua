# TBM Destruction Derby

Vehicle Multiplayer Destruction Derby Mod

# Config Example

https://github.com/ihr-it-projekt/destruction_derby_example_config/blob/main/config.lua

# Features

### Version 1.1.0
 - noFlyAreas 
 - developMod
 - automatic seatbelt (See in part "How to make automatic seatbelt working" in readme.md how it works)
 - no weapon allowed in arena

### Version 1.0.0

- Race HUD contains
    - count of players
    - health of vehicles
    - race time
- Scoreboards
- Players can win money related to the players that participates at the same race
- Race can be configured to start in a separate world instance. That means players will be teleported into a seperated world so that they do not disturb other players
- one Tracks already completely configured
    - use the arena interior from GTA V
    - arena interior config happen into arena.lua file in client folder
- custom sounds at race time to give stadium atmosphere, you can add more or customs sound over js files
- you can configure your own tracks
- Objects can import via xml file that you can create with https://fr.gta5-mods.com/scripts/map-editor. Take also a look to https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D for tracks.
- added Admin command to load and unload tracks to configure the race
- objects can also add via mod config without xml files
- vehicles config
    - vehicle mods are configurable
    - vehicle types
    - you can configure more than one vehicle per track. The player will get then a random vehicle
- players
    - are visible at a mini map at race time
    - if a player times out, the player will be removed from race
- start positions will be selected randomly
- repair kits for vehicle can be configured:
    - can be spawned randomly on configured positions
    - amount of repair kits
    - health values of repair kits
- ESX_XP
    - you can configure XP point that the player will get after successful race
    - track can have needed XP level
- Peds for scoreboard, registration, enter arena and leave arena positions are configurable
- Blibs can be configured for all positions
- Marker can be configured for all positions
- if you use a mod that gives you realistic vehicle damage, you can listen to configurable events, thees events will happen at race start and race end time. See below in part: **How disable realistic vehicle damage if you use a mod for**
- scoreboard resets by starting a new race
- mod is resource saving develop
- based on jQuery and Bootstrap 5
- Clean code
- low resource usage
- Customer Support on discord https://discord.gg/jgtQUKj7Tt

## Showcase

https://youtu.be/vIFe65Ucb3U

## Help

if you need help. Join Discord: https://discord.gg/jgtQUKj7Tt

## Tebex Store

Find more mods on: https://tb-mods.com/

## Requirements

- mySql
- ESX
- optional ESX_XP

## Installation

- move the mod into resource folder
- configure config lua
- import import.sql

Additional

- configure your individual tracks in config.lua

- Add this line in your `server.cfg`:

```
start tbm_destruction_derby
```

## How to load and configure stadium map

There are several stadium scenarios that you can use. Only "dystopian" in combination with "Set_Dystopian_01" is pre-configured. All others you have to configure.
More variations you will find here https://rage.mp/forums/topic/2949-arena-war146-hashes/

| Scene     | Map              | Comment                |
|-----------|------------------|------------------------|
| dystopian | Set_Dystopian_01 | big arena              |
| dystopian | Set_Dystopian_02 | bones                  |
| dystopian | Set_Dystopian_03 | industrial             |
| dystopian | Set_Dystopian_04 | its a round            |
| dystopian | Set_Dystopian_05 | simple                 |
| dystopian | Set_Dystopian_06 | round streets          |
| dystopian | Set_Dystopian_07 | big ship               |
| dystopian | Set_Dystopian_08 | oil                    |
| dystopian | Set_Dystopian_09 | oil 2                  |
| dystopian | Set_Dystopian_10 | air plane              |
| dystopian | Set_Dystopian_11 | does not exists        |
| dystopian | Set_Dystopian_12 | simple desert arena    |
| dystopian | Set_Dystopian_17 | simple deserr again }, |
| scifi     | Set_Scifi_01     |                        |
| scifi     | Set_Scifi_02     |                        |
| scifi     | Set_Scifi_03     |                        |
| scifi     | Set_Scifi_04     | round                  |
| scifi     | Set_Scifi_05     |                        |
| scifi     | Set_Scifi_06     |                        |
| scifi     | Set_Scifi_07     |                        |
| scifi     | Set_Scifi_08     |                        |
| scifi     | Set_Scifi_09     |                        |
| scifi     | Set_Scifi_10     |                        |
| wasteland | Set_Wasteland_01 |                        |
| wasteland | Set_Wasteland_02 |                        |
| wasteland | Set_Wasteland_03 |                        |
| wasteland | Set_Wasteland_04 | round                  |
| wasteland | Set_Wasteland_05 |                        |
| wasteland | Set_Wasteland_06 |                        |
| wasteland | Set_Wasteland_07 |                        |
| wasteland | Set_Wasteland_08 |                        |
| wasteland | Set_Wasteland_09 |                        |
| wasteland | Set_Wasteland_10 |                        |


## How to load and edit custom tracks

Build your own track with Map Editor [https://fr.gta5-mods.com/scripts/map-editor]() or download for example from [https://github.com/blattersturm/cfx-object-loader/tree/master/%5Bexamples%5D]()

Put the xml file into tracks folder. Update your track config and set `objectsToSpawnFile = 'yourTrack.xml'` variable.

The track will now load when the race start. If you want to load the track for admin reasons for example configure your waypoints, you can enter the command `loadTrack filename.xml`
To unload the track write command `unloadTrack`

## How disable realistic vehicle damage if you use a mod for

In config file you have three events that you can configure. The second and the third one are to disable realist vehicle damage

```
events = {
  esx_getSharedObject = 'esx:getSharedObject', -- for security reasons you can customise the esx:getSharedObject event name. Attention if you change it, be sure you have als change it in es_extended
  stopRealisticVehicleDamage = 'TBM_DD::StopRealisticVehicleDamage',
  startRealisticVehicleDamage = 'TBM_DD::StartRealisticVehicleDamage',
},
```

if you use for example use https://github.com/StockholmCityRP/fivem-realisticvehicle then you have to add at the top:

```
local raceRuns = false

RegisterNetEvent('TBM_DD::StopRealisticVehicleDamage')
  AddEventHandler('TBM_DD::StopRealisticVehicleDamage', function()
  raceRuns = true
end)

RegisterNetEvent('TBM_DD::StartRealisticVehicleDamage')
  AddEventHandler('TBM_DD::StartRealisticVehicleDamage', function()
  raceRuns = false
end)
```

Then search for

```
if isPedDrivingAVehicle() then
```

and change the line to:

```
if raceRuns == false and isPedDrivingAVehicle() then
```

restart the mod

## How to add more ambient sounds

1. add new ogg sound files into view/sounds folder
2. open index.js in view folder
3. Open index.js and search for:

````
let audios = [
  {filename: 'background.ogg'},
  {filename: 'clap_short.ogg'},
  {filename: 'ohh.ogg'},
  {filename: 'oriel.ogg'},
]
````

4. add the names of the new sound files like the other files
5. search for:

````
let randomSounds = [
    'clap_short.ogg',
    'ohh.ogg',
    'oriel.ogg',
]
````

6. add the file names a second time

## How to make automatic seatbelt working

If you are using a mod like "trew_hud_ui" then just add this code to

````
RegisterNetEvent('TBM_DD::SeatBeltPlayer')
  AddEventHandler('TBM_DD::SeatBeltPlayer', function()
  seatbeltIsOn = true
end)
````

if you have another mod that has an own event listener to seatbelt players than you can change the event name in config



## Translation

Actual there is english or german available.

# Legal

### License

You are not allowed to use this mod without a licence. You are not allowed to share the code or republish it in any way. 

