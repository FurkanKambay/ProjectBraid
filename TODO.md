TODO
========================

## MVP
- Not realistic
- Not tactical
- Not immersive
- Casual and arcade-y
- Go in, go out - fast, iterative gameplay
- Random gen levels from easy to hard
- Permadeath?

## Core gameplay
- [ ] world
    - [ ] basic map with walls
    - [ ] procedural generation
- [ ] enemies
    - [ ] vision cones
    - [ ] simple follow AI
- [ ] weapons
    - [ ] player: silenced pistol
    - [ ] enemies: pistol

## Features to add later
- [ ] world
	- [ ] furniture and props
	- [ ] doors, windows, lights
	- [ ] noise propagation
	- [ ] light and shadow
- [ ] weapons
	- [ ] knife
- [ ] mechanics
	- [ ] hiding
	- [ ] lockpicking
	- [ ] hacking
	- [ ] timed doors

## Code Architecture
- enemy state machine
    - **idling**: default, standing still
    - **patrol**: walking around in set path
    - **noticed something**: briefly saw player, noticed a body
    - **suspicious**: looks around, tries to find player
    - **shock**: maybe after noticing a body becomes alert and hunt after a delay
    - **alert/hunt**: notify everyone and look for player
	- **attack**
	- **dead**

## Objectives
- kill all hostiles
- steal item
- rescue someone
- assassinate target
- hack device/steal data
- destroy something
- escape

## Actions
- **tailgating**
- **lockpicking**
- **close-proximity**: hack by staying close to target
- **hiding**: behind doors, closets
    - hide in dumpster but you stink and draw attention

## Enemy Types
- **regular**: patrols and detects player, notifies others
- **dumb**: takes breaks, sleeps, doesn't pay attention, doesn't notify others
- **smart**: remembers lights and doors, doesn't give up finding player

## Maybe
### NPCs?
- makes noise when noticing the player
- tries to report to guards
