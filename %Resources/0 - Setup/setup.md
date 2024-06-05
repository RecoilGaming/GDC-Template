# 0 - Project Setup

## Importing Project

After downloading or cloning the repository from [Github](https://github.com/RecoilGaming/GDC-Template/tree/main), extract it into any folder on your computer and import it into Godot using the import button.

![Fig. 0-0](../.resources/0-0.png "Fig. 0-0")

## Renaming Project

To configure a Godot project, go to `Project -> Project Settings` in the top menu bar

Change the project's name, description, and icon under `General -> Application -> Conflig` in `Project Settings`.

![Fig. 0-1](../.resources/0-1.png "Fig. 0-1")

## Resizing Game

To change the default size of the game window, head to `General -> Window` and change `Window Height Override` and `Window Width Override`. (NOTE: These options only appear after you turn on `Advanced Settings`)

![Fig. 0-2](../.resources/0-2.png "Fig. 0-2")

## Configuring Controls

Add keybindings under `Input Map` in `Project Settings`. Add a new input action by typing a name for it in `Add New Action` and pressing `Add` or [Return].

![Fig. 0-3](../.resources/0-3.png "Fig. 0-3")

After the input action is created, bind a key to it by pressing the plus icon and either pressing the key you want on your keyboard or searching for it in the menu.

![Fig. 0-4](../.resources/0-4.png "Fig. 0-4")

You can add as many keybinds to an action as you want, and multiple different actions can share keybinds. This input action can be refrenced in code by the name you set at the start.
