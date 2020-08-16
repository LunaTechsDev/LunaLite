# LunaTea 
> Open Source - Haxe Core Library for RPGMaker MZ/MV plugin and tool development.


## How To Use
Clone the **prepared** **[LunarBase](https://github.com/LunaTechsDev/LunarBase)** project with example plugins included.

## Setup For Development
* Have Haxe installed and the relevant haxe extensions
* Install lix extension

1. Install NPM
2. Install lix globally
3. `npm install` 
4. `lix download`
5. `Start developing`

## Test Process 
> Simply run `npm run integritycheck` to check if code is valid.

## Features
* Full access to the Haxe Standard Library
* Easily add your contact information through the attribution text
* Change your build process for each and every plugin you create
* Type inference and code completion while creating your plugins
* Compile time checks to prevent null errors in your code
* Dead Code Elimination
* Add Prepend JS libraries to your code as part of a plugin
* Create plugins in parts
 * No longer deal with the monolithic plugin file
* Generate build dates for your plugins
* Enhancements for classes and basic types
* Bundle Documentation With Code
* File watching; copies files to the game's js directory
* Automatic formatting of the file on save
* Backwards compatible with MV through conditional compilation

## RoadMap

1. Fully type the RPGMaker MZ core classes
2. Create a standard library for plugin & game creation
3. Create a pipeline for making plugins efficiently and distributing them effectively
4. Allow for backwards compatability with MV :white_check_mark: 
5. Allow for debugging not seen in the production plugin builds :white_check_mark: 



## FAQ
* Invalid commandLine class : plugins.*.. should be..
> Check if your file has package plugins; at the top. Also make sure your plugin class has the same name as the file name.