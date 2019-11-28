# Doom-nukem
A mix of Doom and Duke Nukem 3D

## Description
This is the real deal, after the validation of Wolf3D this is the final project of the graphic course at 42.

In this project we created with 3 other 42 students a realistic 3D graphic representation that we would have from a subjective view within our universe, a First Person Shooter.

We had to use the Ray-Casting method for this representation without hardware acceleration and 3D library.

![](gameplay.gif)

## Features :

- The spaces must have any shape, rooms with a different number of
walls, with several orientations.

- The floor and the ceiling have an adjustable height with unevenness
between the different spaces.

- The floor and ceiling must be able to be inclined.

- Textures are present on the floor and ceiling.

- Partially transparent walls to see the space at the back.

- Decorative elements on the walls, above the main texture.

- Sprites that always face the player as well as multi-sprites displayed according to the player's orientation, such as
seeing a front, side or back character.

- Ambient light, affecting the walls and objects present.

- HUD.

- It's possible to run, jump, fall, bend down and get up. 

![](gameplay2.gif)

- Fly-mode.

- Multitreading

- The items present may or may not be picked up and added to an inventory. 

- Interactions are possible with the elements of the decor like opening a door.

- Door animation

- Music and sound effects are present.

- save and charge

Level Editor:

![](editorportal.gif)

- Editing spaces (walls, floors, ceilings).

![](editorsol.gif)

- Texture editing.

![](wallmaterial.gif)

![](texturechange.gif)

- Objects editing.

## Installation 

You need to install sdl2 
```
brew sdl2
```
Then simply
```
make
```
## Usage 
```
./duke-nukem yourlevel 
```

If you make your own level you can save it by pressing "z"

Our level is nyam_nukem
```
./duke-nukem nyam_nukem 
```
